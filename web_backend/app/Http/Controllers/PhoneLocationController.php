<?php

namespace App\Http\Controllers;

use App\Models\PhoneLocation;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class PhoneLocationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Get all phone locations from the database sorted by 'updated_at' in descending order
        // Also, eager load the 'phone' relationship for each phone location
        $phoneLocations = PhoneLocation::orderBy('updated_at', 'desc')
            ->with('phone') // Eager load the 'phone' relationship
            ->get();
        
        // Return the list of phone locations with phone data as JSON response
        return response()->json([
            'status' => true,
            'data' => $phoneLocations
        ], 200);
    }
    
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate request data
        $request->validate([
            'latitude' => 'required|numeric',
            'longitude' => 'required|numeric',
            'speed' => 'required|numeric',
            'id_phone' => 'required|integer|exists:phones,id',
        ]);

        // Create a new phone location
        $phoneLocation = PhoneLocation::create($request->all());
        
        // Return the created phone location as JSON response
        return response()->json([
            'status' => true,
            'data' => $phoneLocation
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        // Find the phone location by ID
        $phoneLocation = PhoneLocation::find($id);

        // If the phone location is not found, return a 404 error response
        if (!$phoneLocation) {
            return response()->json([
                'status' => false,
                'message' => 'Phone location not found'
            ], 404);
        }

        // Return the phone location as JSON response
        return response()->json([
            'status' => true,
            'data' => $phoneLocation
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Find the phone location by ID
        $phoneLocation = PhoneLocation::where('id_phone', $id)->first();
        // If the phone location is not found, return a 404 error response
        if (!$phoneLocation) {
            return response()->json([
                'status' => false,
                'message' => 'Phone location not found'
            ], 404);
        }

        // Validate request data
        $request->validate([
            'latitude' => 'sometimes|required|numeric',
            'longitude' => 'sometimes|required|numeric',
            'speed' => 'sometimes|required|numeric',
            'id_phone' => 'sometimes|required|integer|exists:phones,id',
        ]);

        // Update phone location with request data
        $phoneLocation->update($request->all());

        // Return the updated phone location as JSON response
        return response()->json([
            'status' => true,
            'data' => $phoneLocation
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        try {
            // Find the phone location by ID
            $phoneLocation = PhoneLocation::find($id);
    
            // If the phone location is not found, return a 404 error response
            if (!$phoneLocation) {
                return response()->json([
                    'status' => false,
                    'message' => 'Phone location not found'
                ], 404);
            }
    
            // Delete the phone location
            $phoneLocation->delete();
    
            // Return a success response
            return response()->json([
                'status' => true,
                'message' => 'Phone location deleted successfully'
            ], 200);
        } catch (Exception $e) {
            // Log the error
            \Log::error($e->getMessage());
    
            // Return a server error response
            return response()->json([
                'status' => false,
                'message' => 'Internal server error'
            ], 500);
        }
    }
}
