<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use App\Models\User;
use App\Models\Group;
use App\Models\SmsLog;

class SMSController extends Controller
{
    public function send(Request $request)
    {
        $request->validate([
            'type' => 'required|string',
            'message' => 'required|string',
        ]);

        $type = $request->type;
        $message = $request->message;
        $receiver = $request->receiver;
        $recipients = [];

        switch ($type) {
            case 'all':
                $recipients = User::pluck('phone')->toArray();
                break;

            case 'male':
            case 'M':
                $recipients = User::where('gender', 'M')->pluck('phone')->toArray();
                break;

            case 'female':
            case 'F':
                $recipients = User::where('gender', 'F')->pluck('phone')->toArray();
                break;

            case 'group':
                $group = Group::where('name', $receiver)->first();
                if ($group) {
                    $recipients = $group->members()->pluck('phone_number')->toArray();
                }
                break;

            case 'individual':
                $sanitizedReceiver = preg_replace('/[^0-9]/', '', $receiver);
                if (preg_match('/^0\d{9}$/', $sanitizedReceiver)) {
                    $sanitizedReceiver = '255' . substr($sanitizedReceiver, 1);
                }
                if (preg_match('/^255\d{9}$/', $sanitizedReceiver)) {
                    $sanitizedReceiver = '+' . $sanitizedReceiver;
                }

                $user = User::where('full_name', $receiver)
                    ->orWhereRaw("REPLACE(REPLACE(REPLACE(phone, '+', ''), ' ', ''), '-', '') = ?", [ltrim($sanitizedReceiver, '+')])
                    ->first();

                if ($user) {
                    $recipients = [$user->phone];
                }
                break;

            default:
                Log::warning("Invalid SMS type provided: $type");
                return response()->json([
                    'status' => 'error',
                    'message' => 'Invalid type provided.',
                ], 422);
        }

        if (empty($recipients)) {
            Log::warning("No recipients found for type: $type, receiver: $receiver");
            return response()->json([
                'status' => 'error',
                'message' => 'No recipients found.',
            ], 400);
        }

        $uniqueRecipients = collect($recipients)->map(function ($num) {
            $cleaned = preg_replace('/[^0-9+]/', '', $num);
            if (preg_match('/^0\d{9}$/', $cleaned)) {
                $cleaned = '+255' . substr($cleaned, 1);
            }
            if (preg_match('/^255\d{9}$/', $cleaned)) {
                $cleaned = '+' . $cleaned;
            }
            return $cleaned;
        })->unique()->values()->all();

        Log::info('Sending SMS to: ' . json_encode($uniqueRecipients));

        $payload = [
            'source_addr' => config('services.beem.sender'),
            'encoding' => 0,
            'schedule_time' => '',
            'message' => $message,
            'recipients' => array_map(function ($phone) {
                return [
                    'recipient_id' => preg_replace('/[^0-9]/', '', $phone),
                    'dest_addr' => $phone,
                ];
            }, $uniqueRecipients),
        ];

        Log::info('Beem Payload: ' . json_encode($payload));

        try {
            $apiKey = trim(config('services.beem.api_key'));
            $secretKey = trim(config('services.beem.secret'));

            Log::info('BEEM_API_KEY: ' . $apiKey);
            Log::info('BEEM_SECRET_KEY: ' . $secretKey);

            $authorization = 'Basic ' . base64_encode($apiKey . ':' . $secretKey);
            Log::info('Beem Auth Header: ' . $authorization);

            $response = Http::withOptions(['verify' => true])
                ->withHeaders([
                    'Content-Type' => 'application/json',
                    'Authorization' => $authorization,
                ])
                ->post('https://apisms.beem.africa/v1/send', $payload);

            $responseData = $response->json();
            Log::info('Beem Response: ', $responseData);

            foreach ($uniqueRecipients as $recipient) {
                SmsLog::create([
                    'recipient' => $recipient,
                    'receiver' => $receiver,
                    'type' => $type,
                    'message' => $message,
                    'status' => $responseData['message'] ?? 'sent',
                    'response' => $responseData,
                ]);
            }

            return response()->json([
                'status' => 'success',
                'sent' => count($uniqueRecipients),
                'beem_response' => $responseData,
            ]);
        } catch (\Exception $e) {
            Log::error('SMS sending failed: ' . $e->getMessage());
            return response()->json([
                'status' => 'error',
                'message' => 'Failed to send SMS.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }

    public function logs()
    {
        $logs = SmsLog::latest()->limit(100)->get()->map(function ($log) {
            return [
                'id' => $log->id,
                'recipient' => $log->recipient,
                'receiver' => $log->receiver,
                'type' => $log->type,
                'message' => $log->message,
                'status' => $log->status,
                'response' => $log->response,
                'sent_at' => $log->created_at->format('Y-m-d H:i:s'),
            ];
        });

        return response()->json([
            'status' => 'success',
            'logs' => $logs,
        ]);
    }
}
