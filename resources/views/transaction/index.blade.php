@extends('layouts.app', ['title' => 'Transactions'])

@section('content')
<main class="p-4 w-full max-w-md">
    <div id="transactions" class="mt-4">
        <!-- Transaction Items -->
        @foreach ($transactions as $transaction)
        <a href="#" class="flex justify-between items-center block w-full p-4 mt-3 bg-white shadow rounded-xl">
            <div>
                <span class="text-md font-bold">{{$transaction->type}} - {{$transaction->category}}</span> <br>
                <span class="text-sm font-semibold text-gray-500">{{$transaction->created_at}}</span>
            </div>
            <div>
                @if ($transaction->type == "income")
                <span class="text-md font-bold text-green-500">
                    +$ {{$transaction->amount}}
                </span>
                @else
                <span class="text-md font-bold text-red-500">
                    -$ {{$transaction->amount}}
                </span>
                @endif
            </div>
        </a>
        @endforeach
        <!-- Duplicate as needed for more transactions -->
    </div>
</main>
@stop