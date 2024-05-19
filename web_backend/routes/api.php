<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\PhoneController;
use App\Http\Controllers\PhoneLocationController;
use App\Http\Controllers\TargetLocationController;




/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/auth/register', [UserController::class, 'createUser']);
Route::post('/auth/login', [UserController::class, 'loginUser']);
Route::apiResource('/phones', PhoneController::class);
Route::apiResource('/locations', PhoneLocationController::class);
Route::apiResource('/target-locations', TargetLocationController::class);


Route::get('/phones-by-email/{email}',[ PhoneController::class,'findByEmail']);
Route::post('/target-locations/visited/{targetLocationId}',[TargetLocationController::class,'setTargetLocationVisited'] );



Route::get('/target-locations/by-phone/{phoneId}', [TargetLocationController::class, 'getTargetLocationsByPhone']);
