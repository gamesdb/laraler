<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Http\Request;

class ExpenseController extends Controller
{
    public function index()
    {
        return view('expense.index');
    }

    public function edit($id){
        $data['transactions'] = Transaction::find($id);
        return view('expense.edit',$data);
    }

    
    public function store(Request $request){
        Transaction::create($request->all());
        return redirect()->route('home');
    }
    
    public function update(Request $request,$id){
        $transaction = Transaction::find($id);
        $transaction->update($request->all());
        return redirect()->route('home');
    }
}
