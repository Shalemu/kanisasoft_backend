<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class SMSService
{
    /**
     * Send SMS via Mshastra (or your chosen provider)
     *
     * @param string $phone
     * @param string $message
     * @return bool
     */
    public function sendSMS(string $phone, string $message): bool
    {
        try {
            $response = Http::post(config('services.mshastra.json_url'), [
                'user' => config('services.mshastra.user'),
                'password' => config('services.mshastra.password'),
                'sender' => config('services.mshastra.sender'),
                'mobile' => $phone,
                'message' => $message,
            ]);

            if ($response->successful()) {
                return true;
            }

            Log::error('SMS failed: ' . $response->body());
            return false;
        } catch (\Throwable $e) {
            Log::error('SMS sending error: ' . $e->getMessage());
            return false;
        }
    }
}
