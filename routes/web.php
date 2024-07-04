<?php

use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

// Route::get();
// Route::post();
// Route::put();
// Route::patch();
// Route::delete();
// Route::options();

// Route::match(['get', 'post', '/', function()]{
//     return 'POST and Get is allowed';
// });

// Route::any('/welcome', function(){
//     return 'Welcome';
// });

// Route::view('/welcome', 'welcome');

// Route::get('/', function(){
//     return 'redirected';
// });

// Route::permanentRedirect('/welcome', '/');

// Route::get('/', function(){
//     return 'Welcome!';
// });

// Route::get('/users', function(Request $request){
//     dd($request);
//     return null;
// });

// Route::get('/get-text', function(){
//     return response('Hello PinoyFreeCoder', 200)
//                 ->header('Content-Type', 'text/plain');
// });

// Route::get('/user/{id}/{group}', function($id, $group){
//     return response($id.'-'.$group, 200);
// });

// Route::get('/request-json', function() {
//     return response()->json(['name' => 'PinoyFreeCoder', 'age',
//     '22']);
// });

// Route::get('request-download', function() {
 
//     $path = public_path().'/sample.txt';
//     $name = 'sample.txt';
//     $headers = array(
//         'Content-type : application/text-plain'
//     );
//     return response()->download($path, $name, $headers);
// });

// Route::get('/users', [UserController::class, 'index'])->name('login'); 

// Route::get('/user/{id}', [UserController::class, 'show']);

// Route::get('/student/{id}', [StudentController::class, 'show']);

//Common routes naming
//index - Show all data or student
//show - Show a single data or student
//create - Show a form to a new user
//store - Store a data
//edit - Show form to edit a data
//update - Update a data
//destroy - delete a data

Route::controller(UserController::class)->group(function(){
    Route::get('register','register');
    Route::get('/login','login')->name('login')->middleware('guest');
    Route::post('/login/process','process');
    Route::post('/logout','logout');
    Route::post('/store','store');    
});

Route::controller(StudentController::class)->group(function(){
    Route::get('/','index')->middleware('auth');
    Route::get('/add/student','create');
    Route::post('/add/student','store');
    Route::get('/student/{id}','show');
    Route::put('/student/{student}','update');
    Route::delete('/student/{student}','destroy');
});

