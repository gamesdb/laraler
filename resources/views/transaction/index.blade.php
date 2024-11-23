@extends('layouts.app', ['title' => 'Transactions'])

@section('content')
<main class="p-4 w-full max-w-md">
    <div id="transactions" class="mt-4">
        <!-- Transaction Items -->
        @for ($i = 0; $i < 10; $i++)
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