<?php

use App\Http\Controllers\ExpenseController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\IncomeController;
use App\Http\Controllers\TestController;
use App\Http\Controllers\TransactionController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', HomeController::class.'@index')->name('home');
Route::get('/income', IncomeController::class.'@index')->name('income.index');
Route::get('/income/{id}/edit', IncomeController::class.'@edit')->name('income.edit');
Route::get('/expense', ExpenseController::class.'@index')->name('expense.index');
Route::get('/expense/{id}/edit', ExpenseController::class.'@edit')->name('income.edit');
Route::get('/transaction', TransactionController::class.'@index')->name('transaction.index');