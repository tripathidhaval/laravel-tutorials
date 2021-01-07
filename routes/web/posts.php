<?php
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\PostController;

Route::get('/post/{post}', [PostController::class, 'show'])->name('post');

Route::middleware(['auth'])->group(function(){
    Route::get('/posts', [PostController::class, 'index'])->name('adminpost.index');
    Route::get('/posts/create', [PostController::class, 'create'])->name('adminpost.create');
    Route::post('/posts', [PostController::class, 'store'])->name('adminpost.store');
    Route::delete('/posts/{post}/delete', [PostController::class, 'destroy'])->name('adminpost.destroy');
    Route::patch('/posts/{post}/update', [PostController::class, 'update'])->name('adminpost.update');
    Route::get('/posts/{post}/edit', [PostController::class, 'edit'])->middleware('can:view,post')->name('adminpost.edit');
});