<?php 
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

Route::middleware('auth')->group(function(){
    Route::put('/users/{user}/update', [UserController::class, 'update'])->name('user.profile.update');
    // To update data route should be put or patch
    
    Route::delete('/users/{user}/destroy', [UserController::class, 'destroy'])->name('admin.users.destroy');
    Route::put('/users/{user}/attach', [UserController::class, 'attach'])->name('users.role.attach');
    Route::put('/users/{user}/detach', [UserController::class, 'detach'])->name('users.role.detach');
    
});



// rolee is name of role, create it then register in kernel.php
// You can also pass array in middleware
Route::middleware('rolee:admin')->group(function(){
    Route::get('/users', [UserController::class, 'index'])->name('admin.users.index');
});

Route::middleware('can:view,user')->group(function(){
    //app\Policies\UserPolicy.php
    Route::get('/users/{user}/profile', [UserController::class, 'show'])->name('user.profile.show');
});