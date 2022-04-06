<?php

use App\Models\Ac;
use App\Models\User;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AcController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CctvMonitor1Controller;
use App\Http\Controllers\ChartAcController;
use App\Http\Controllers\LoginController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('auth.login');
// });



Route::get('/', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/', [LoginController::class, 'postLogin']);
Route::post('/logout/{id}', [LoginController::class, 'logout']);


Route::get('/dashboard', [ChartAcController::class, 'index'])->middleware('auth');
Route::post('/dashboard', [ChartAcController::class, 'getChart'])->middleware('auth');
Route::get('/dashboard/charts', [ChartAcController::class, 'dataChart'])->middleware('auth');

Route::post('/dashboard/charts/createChart', [ChartAcController::class, 'tambahDataChart']);

Route::post('/dashboard/charts/updateChart', [ChartAcController::class, 'updateDataChart']);

// Route::get('/dashboard/charts/update', [ChartAcController::class, 'updateViewChartAc'])->middleware('auth');


Route::delete('/dashboard/charts/delete/{id}', [ChartAcController::class, 'deleteDataChartAc'])->middleware('auth');



Route::get('/ac', [AcController::class, 'index'])->middleware('auth');
Route::get('/ac/create', [AcController::class, 'create'])->middleware('auth');
Route::post('/ac/create', [AcController::class, 'store'])->middleware('auth');
Route::get('/ac/delete/{id}', [AcController::class, 'destroy'])->name('delete')->middleware('auth');
Route::get('/ac/update/{id}', [AcController::class, 'show'])->middleware('auth');
Route::post('/ac/update/{id}', [AcController::class, 'update'])->middleware('auth');
Route::get('/ac/trash', [AcController::class, 'trash'])->middleware('auth');
Route::get('/ac/trash/deleteAll', [AcController::class, 'deleteAll'])->middleware('auth');
Route::get('/ac/export', [AcController::class, 'exportDataAc'])->middleware('auth');
Route::delete('/selectedac', [AcController::class, 'deleteCheckedAc'])->name('ac.deleteSelected')->middleware('auth');
Route::delete('ac/trash/{id}', [AcController::class, 'restore'])->middleware('auth');


Route::resource('/dashboard/users', AdminController::class)->middleware('admin');
Route::delete('dashboard/users/delete/{id}', [AdminController::class, 'destroy'])->middleware('auth');

Route::get('/error', [AdminController::class, 'errorPage']);


// CCTV Monitor 1
Route::resource('/dashboard/cctv', CctvMonitor1Controller::class);

Route::get('/dashboard/trashed/cctv', [CctvMonitor1Controller::class, 'trash']);

Route::delete('/dashboard/cctv/trash/{id}', [CctvMonitor1Controller::class, 'restoreDataCctv1'])->middleware('auth');

Route::get('/dashboard/cctv/trash/deleteAll', [CctvMonitor1Controller::class, 'deleteAll'])->middleware('auth');

Route::get('/dashboard/export/cctv', [CctvMonitor1Controller::class, 'exportDataCctv1'])->middleware('auth');
