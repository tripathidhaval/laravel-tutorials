<?php
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PermissionController;

Route::middleware(['rolee:admin'])->group(function(){
    Route::get('/permissions', [PermissionController::class, 'index'])->name('admin.permissions.index');
    Route::post('/permissions', [PermissionController::class, 'store'])->name('admin.permissions.store');
    Route::delete('/permissions/{permission}/destroy', [PermissionController::class, 'destroy'])->name('admin.permissions.destroy');
    Route::get('/permissions/{permission}/edit', [PermissionController::class, 'edit'])->name('admin.permissions.edit');
    Route::put('/permissions/{permission}/update', [PermissionController::class, 'update'])->name('admin.permissions.update');
});
