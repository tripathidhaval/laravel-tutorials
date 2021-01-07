<?php
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\RoleController;

// rolee is name of role, create it then register in kernel.php
Route::middleware(['web','auth','rolee:admin'])->group(function(){
    Route::get('/roles', [RoleController::class, 'index'])->name('admin.roles.index');
    Route::post('/roles', [RoleController::class, 'store'])->name('admin.roles.store');
    Route::delete('/roles/{role}/destroy', [RoleController::class, 'destroy'])->name('admin.roles.destroy');
    Route::get('/roles/{role}/edit', [RoleController::class, 'edit'])->name('admin.roles.edit');
    Route::put('/roles/{role}/update', [RoleController::class, 'update'])->name('admin.roles.update');

    Route::put('/roles/{role}/attach', [RoleController::class, 'attach_permission'])->name('role.permission.attach');
    Route::put('/roles/{role}/detach', [RoleController::class, 'detach_permission'])->name('role.permission.detach');
});
