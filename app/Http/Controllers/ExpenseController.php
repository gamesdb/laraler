<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ExpenseController extends Controller
{
    public function index()
    {
        return view('expense.index');
    }

    public function edit($id){
        return view('expense.edit');
    }
}
