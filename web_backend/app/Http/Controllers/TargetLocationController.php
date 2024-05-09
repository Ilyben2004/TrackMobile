<?php
namespace App\Http\Controllers;

use App\Models\TargetLocation;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\Phone;



class TargetLocationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Retrieve all target locations from the database, sorted by 'updated_at' in descending order
        $targetLocations = TargetLocation::orderBy('updated_at', 'desc')
            ->with('phone') // Eager load the 'phone' relationship
            ->get();

        // Return the list of target locations with associated phone data
        return response()->json([
            'status' => true,
            'data' => $targetLocations
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validate the request data
        $request->validate([
            'phone_id' => 'required|integer|exists:phones,id',
            'longitude' => 'required|numeric',
            'latitude' => 'required|numeric',
        ]);

        // Create a new target location using the request data
        $targetLocation = TargetLocation::create($request->all());

        // Return the created target location as a JSON response
        return response()->json([
            'status' => true,
            'data' => $targetLocation
        ], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        // Find the target location by ID
        $targetLocation = TargetLocation::find($id);

        // If the target location is not found, return a 404 error response
        if (!$targetLocation) {
            return response()->json([
                'status' => false,
                'message' => 'Target location not found'
            ], 404);
        }

        // Return the target location as a JSON response
        return response()->json([
            'status' => true,
            'data' => $targetLocation
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Find the target location by ID
        $targetLocation = TargetLocation::find($id);

        // If the target location is not found, return a 404 error response
        if (!$targetLocation) {
            return response()->json([
                'status' => false,
                'message' => 'Target location not found'
            ], 404);
        }

        // Validate the request data
        $request->validate([
            'phone_id' => 'sometimes|required|integer|exists:phones,id',
            'longitude' => 'sometimes|required|numeric',
            'latitude' => 'sometimes|required|numeric',
        ]);

        // Update the target location with the new data
        $targetLocation->update($request->all());

        // Return the updated target location as a JSON response
        return response()->json([
            'status' => true,
            'data' => $targetLocation
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        // Find the target location by ID
        $targetLocation = TargetLocation::find($id);

        // If the target location is not found, return a 404 error response
        if (!$targetLocation) {
            return response()->json([
                'status' => false,
                'message' => 'Target location not found'
            ], 404);
        }

        // Delete the target location
        $targetLocation->delete();

        // Return a success response
        return response()->json([
            'status' => true,
            'message' => 'Target location deleted successfully'
        ], 200);
    }
    public function getTargetLocationsByPhone(int $phoneId)
    {
        // Validate that the phone exists
        $phone = Phone::find($phoneId);
        if (!$phone) {
            return response()->json([
                'status' => false,
                'message' => 'Phone not found'
            ], 404);
        }

        // Get the target locations associated with the phone
        $targetLocations = TargetLocation::where('phone_id', $phoneId)
            ->orderBy('updated_at', 'desc')
            ->get();

        // Return the target locations as a JSON response
        return response()->json([
            'status' => true,
            'data' => $targetLocations
        ], 200);
    }
}
