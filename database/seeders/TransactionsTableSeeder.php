<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Faker\Factory as Faker;

class TransactionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Instantiate Faker for generating random data
        $faker = Faker::create();

        // Categories to randomize
        $categories = ['Gaming', 'Movie', 'Cosplay', 'Idol', 'Food', 'Shopping', 'Transport', 'Utilities', 'Subscription'];

        // Insert 30 random entries
        for ($i = 0; $i < 30; $i++) {
            DB::table('transactions')->insert([
                'amount' => $faker->randomFloat(2, 10, 1000),  // Random amount between 10 and 1000
                'date' => Carbon::now()->subDays(rand(1, 30))->toDateString(),  // Random date within the last 30 days
                'category' => $categories[array_rand($categories)],  // Random category from predefined list
                'type' => $faker->randomElement(['income', 'expense']),  // Random type (income or expense)
                'description' => $faker->sentence(),  // Random description
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }
    }
}
