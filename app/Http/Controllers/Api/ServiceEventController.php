<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\ServiceEvent;
use Illuminate\Http\Request;

class ServiceEventController extends Controller
{
    // List all service events
    public function index()
    {
        $events = ServiceEvent::latest()->get();

        // Optional: total members and offerings
        $totalMembers = $events->sum(function($event) {
            return $event->attendance_women + $event->attendance_men + $event->attendance_children;
        });
        $totalOfferings = $events->sum('total_offerings');

        return response()->json([
            'status' => 'success',
            'events' => $events,
            'total_members' => $totalMembers,
            'total_offerings' => $totalOfferings,
        ]);
    }

    // Show a single service event
    public function show($id)
    {
        $event = ServiceEvent::find($id);
        if (!$event) {
            return response()->json([
                'status' => 'error',
                'message' => 'Event not found'
            ], 404);
        }

        return response()->json([
            'status' => 'success',
            'event' => $event
        ]);
    }

    // Create a new service event
    public function store(Request $request)
    {
        $data = $request->validate([
            'date' => 'required|date',
            'service_name' => 'required|string|max:255',
            'preacher' => 'required|string|max:255',
            'message' => 'nullable|string',
            'attendance_women' => 'nullable|integer|min:0',
            'attendance_men' => 'nullable|integer|min:0',
            'attendance_children' => 'nullable|integer|min:0',
            'total_offerings' => 'nullable|numeric|min:0',
            'leaders_on_duty' => 'nullable|string',
        ]);

        $event = ServiceEvent::create($data);

        return response()->json([
            'status' => 'success',
            'event' => $event
        ], 201);
    }

    // Update an existing service event
    public function update(Request $request, $id)
    {
        $event = ServiceEvent::find($id);
        if (!$event) {
            return response()->json([
                'status' => 'error',
                'message' => 'Event not found'
            ], 404);
        }

        $data = $request->validate([
            'date' => 'required|date',
            'service_name' => 'required|string|max:255',
            'preacher' => 'required|string|max:255',
            'message' => 'nullable|string',
            'attendance_women' => 'nullable|integer|min:0',
            'attendance_men' => 'nullable|integer|min:0',
            'attendance_children' => 'nullable|integer|min:0',
            'total_offerings' => 'nullable|numeric|min:0',
            'leaders_on_duty' => 'nullable|string',
        ]);

        $event->update($data);

        return response()->json([
            'status' => 'success',
            'event' => $event
        ]);
    }

    // Delete a service event
    public function destroy($id)
    {
        $event = ServiceEvent::find($id);
        if (!$event) {
            return response()->json([
                'status' => 'error',
                'message' => 'Event not found'
            ], 404);
        }

        $event->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Event deleted successfully'
        ]);
    }
}