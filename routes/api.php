<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\ProductController;
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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
 
//test
Route::group(['namespace' => 'Api', 'prefix' => 'v1'], function () {
  Route::post('login', [UsersController::class, 'login']);
  Route::post('logout', [UsersController::class, 'destroy'])->middleware('auth:api');
   Route::post('register', [UsersController::class, 'register']);
// Route::get('products', [ProductController::class, 'index'])->name('products.index');
// Route::get('products/create', [ProductController::class, 'create'])->name('products.create');
// Route::post('products', [ProductController::class, 'store'])->name('products.store');
// Route::get('products/{id}/edit', [ProductController::class, 'edit'])->name('products.edit');
// Route::put('products/{id}', [ProductController::class, 'update'])->name('products.update');
// Route::delete('products/{id}', [ProductController::class, 'destroy'])->name('products.destroy');
     

});

  Route::apiResource('products',ProductController::class)->except([
    'create', 'show', 'edit'
]);