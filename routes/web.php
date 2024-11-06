<?php

use App\Http\Controllers\NavigationController;
use Illuminate\Support\Facades\Route;

Route::get('/', [NavigationController::class, 'indexPage'])->name('indexPage');
Route::get('/category/{category_name}', [NavigationController::class, 'categoryPage'])->name('categoryPage');
Route::get('/course/{course_name}', [NavigationController::class, 'courseDetail'])->name('courseDetail');
Route::get('/writers', [NavigationController::class, 'writersPage'])->name('writersPage');
Route::get('/writer/{writer_id}', [NavigationController::class, 'writerDetailPage'])->name('writerDetailPage');
Route::get('/about-us', [NavigationController::class, 'aboutUsPage'])->name('aboutUsPage');
Route::get('/popular', [NavigationController::class, 'popularPage'])->name('popularPage');

