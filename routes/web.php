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

/*Home*/
Route::get('/home', HomeController::class.'@index')->name('home');

/*Income*/
Route::get('/income', IncomeController::class.'@index')->name('income.index');
Route::get('/income/{id}/edit', IncomeController::class.'@edit')->name('income.edit');
Route::post('/income', IncomeController::class.'@store')->name('income.store');
Route::put('/income/{id}/edit', IncomeController::class.'@update')->name('income.update');

/*Expense*/
Route::get('/expense', ExpenseController::class.'@index')->name('expense.index');
Route::get('/expense/{id}/edit', ExpenseController::class.'@edit')->name('income.edit');
Route::post('/expense', ExpenseController::class.'@store')->name('expense.store');
Route::put('/expense/{id}/edit', ExpenseController::class.'@store')->name('income.store');

/*Transaction*/
Route::get('/transaction', TransactionController::class.'@index')->name('transaction.index');
Route::get('/transaction/{id}/delete', TransactionController::class.'@delete')->name('transaction.delete');
