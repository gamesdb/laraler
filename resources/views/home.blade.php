@extends('layouts.app', ['title' => 'Home'])

@section('content')
<main class="p-4 w-full max-w-md">
    <div id="balance" class="block p-6 bg-gradient-to-r from-purple-500 to-pink-500 shadow rounded-xl">
        <h6 class="text-md tracking-tight text-white">Total Balance</h6>
        <h4 class="mb-2 text-2xl font-bold tracking-tight text-white">Rp 2,000,000</h4>
        <div class="flex justify-between mt-4">
            <div>
                <span class="flex items-center justify-center font-semibold text-white">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="h-7 w-7 mr-1">
                        <path stroke-linecap="round" stroke-linejoin="round" d="m9 12.75 3 3m0 0 3-3m-3 3v-7.5M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                    </svg>
                    Income
                </span>
                <span class="block font-semibold text-md text-white">Rp 1,500,000</span>
            </div>
            <div>
                <span class="flex items-center justify-center font-semibold text-white">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="h-7 w-7 mr-1">
                        <path stroke-linecap="round" stroke-linejoin="round" d="m15 11.25-3-3m0 0-3 3m3-3v7.5M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                    </svg>
                    Expense
                </span>
                <span class="block font-semibold text-md text-white">Rp 500,000</span>
            </div>
        </div>
    </div>

    <div id="transactions" class="mt-4">
        <div class="flex justify-between">
            <h6 class="font-bold text-xl">Transactions</h6>
            <a href="{{route('transaction.index')}}" class="font-semibold text-md text-gray-400">See All</a>
        </div>

        <!-- Transaction Items -->
        @for ($i = 0; $i < 5; $i++)
            <a href="#" class="flex justify-between items-center block w-full p-4 mt-3 bg-white shadow rounded-xl">
                <div>
                    <span class="text-md font-bold">Money Transfer</span> <br>
                    <span class="text-sm font-semibold text-gray-500">12.00 PM</span>
                </div>
                <div>
                    <span class="text-md font-bold text-green-500">+ Rp 1,500,000</span>
                </div>
            </a>
        @endfor
        <!-- Duplicate as needed for more transactions -->
    </div>
</main>
@stop