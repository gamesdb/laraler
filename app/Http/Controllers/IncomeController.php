<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Http\Request;

class IncomeController extends Controller
{
    public function index()
    {
        return view('income.index');
    }

    public function edit($id){
        return view('income.edit');
    }
}
