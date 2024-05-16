<?php

namespace App\Http\Controllers;

use App\Models\Phone;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class PhoneController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Get all phones from the database sorted by 'id' in descending order
        $phones = Phone::orderBy('id', 'desc')->get();
        
        // Return the list of phones as JSON response
        return response()->json([
            'status' => true,
            'data' => $phones
        ], 200);
    }
    

    
    public function store(Request $request)
    {
        $request->validate([
            'ownerName' => 'required|string',
            'libelle' => 'required|string',
            'type' => 'required|string',
            'city' => 'required|string',
            'phoneNumber' => 'required|string',
            'email' => 'required|email',
        ]);

        $phone = Phone::create($request->all());
        
        // Return the created phone as JSON response
        return response()->json([
            'status' => true,
            'data' => $phone
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        // Find the phone by ID with its target locations
        $phone = Phone::with('TargetLocations')->find($id);
        
        // If the phone is not found, return a 404 error response
        if (!$phone) {
            return response()->json([
                'status' => false,
                'message' => 'Phone not found'
            ], 404);
        }
        
        // Count the number of target locations
        $targetLocationsCount = $phone->TargetLocations->count();
        
        // Return the phone with its target locations count as JSON response
        return response()->json([
            'status' => true,
            'data' => $phone,
            'target_locations_count' => $targetLocationsCount
        ], 200);
    }
    

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Find the phone by ID
        $phone = Phone::find($id);

        // If the phone is not found, return a 404 error response
        if (!$phone) {
            return response()->json([
                'status' => false,
                'message' => 'Phone not found'
            ], 404);
        }

        // Validate request data
        $request->validate([
            'ownerName' => 'sometimes|required|string',
            'libelle' => 'sometimes|required|string',
            'type' => 'sometimes|required|string',
            'city' => 'sometimes|required|string',
            'phoneNumber' => 'sometimes|required|string',
            'email' => 'sometimes|required|email',
        ]);

        // Update phone with request data
        $phone->update($request->all());

        // Return the updated phone as JSON response
        return response()->json([
            'status' => true,
            'data' => $phone
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): Response
    {
        try {
            // Find the phone by ID
            $phone = Phone::find($id);
    
            // If the phone is not found, return a 404 error response
            if (!$phone) {
                return response()->json([
                    'status' => false,
                    'message' => 'Phone not found'
                ], 404);
            }
    
            // Delete the phone
            $phone->delete();
    
            // Return a success response
            return response()->json([
                'status' => true,
                'message' => 'Phone deleted successfully'
            ], 200);
        } catch (Exception $e) {
            // Log the error (adjust logging to your setup)
            error_log($e->getMessage());
    
            // Return a server error response
            return response()->json([
                'status' => false,
                'message' => 'Internal server error'
            ], 500);
        }
    }
    public function findByEmail($email)
    {
        // Find the phone by email
        $phone = Phone::where('email', $email)->first();

        // If the phone is not found, return a 404 error response
        if (!$phone) {
            return response()->json([
                'status' => false,
                'message' => 'Phone not found for the provided email'
            ], 404);
        }

        // Return the phone as JSON response
        return response()->json([
            'status' => true,
            'data' => $phone
        ], 200);
    }
}
