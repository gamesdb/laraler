@extends('layouts.app', ['title' => 'Expenses'])

@section('content')
<main class="p-4 w-full max-w-md">
    <form action="#" method="POST" class="p-6">
        @csrf
        <input type="hidden" name="type" value="expense">
        <h2 class="text-2xl font-semibold text-gray-700 mb-4">Add Expense</h2>
        
        <div class="mb-4">
            <label for="amount" class="block text-gray-700 text-sm font-bold mb-2">Amount</label>
            <input type="number" id="amount" name="amount" placeholder="Enter Expense amount" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500" required>
        </div>
        
        <div class="mb-4">
            <label for="date" class="block text-gray-700 text-sm font-bold mb-2">Date</label>
            <input type="date" id="date" name="date" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500" required>
        </div>

        <div class="mb-4">
            <label for="category" class="block text-gray-700 text-sm font-bold mb-2">Category</label>
            <select id="category" name="category" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500" required>
                <option value="">Select Category</option>
                <option value="Salary">Salary</option>
                <option value="Gaming">Gaming</option>
                <option value="Movie" >Movie</option>
                <option value="Cosplay" >Cosplay</option>
                <option value="Idol">Idol</option>
                <option value="Food" >Food</option>
                <option value="Shopping" >Shopping</option>
                <option value="Transport" >Transport</option>
                <option value="Utilities">Utilities</option>
                <option value="Subscription" >Subscription</option>
                <option value="Groceries">Groceries</option>
            </select>
        </div>
        
        <div class="mb-4">
            <label for="description" class="block text-gray-700 text-sm font-bold mb-2">Description</label>
            <textarea id="description" name="description" rows="3" placeholder="Enter Expense description" class="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"></textarea>
        </div>
        
        <button type="submit" class="w-full bg-blue-600 text-white font-semibold py-2 rounded-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500">Save Expense</button>
    </form>
</main>
@stop