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
        $data['transactions'] = Transaction::find($id);
        return view('income.edit',$data);
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
