<?php

namespace Database\Seeders;

use App\Models\Review;
use Illuminate\Database\Seeder;

class ReviewSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $review = [
            [
                'user_id' => '3',
                'prod_id' => '3',
                'user_review' => 'Milk is still fresh and delicious. Delivery is neat and as ordered. Thank you.',
            ],
            [
                'user_id' => '3',
                'prod_id' => '5',
                'user_review' => 'The oranges are still fresh and very tasty. But the shipment is not neat and takes a long time in delivery. Thank you.',
            ],
            [
                'user_id' => '3',
                'prod_id' => '10',
                'user_review' => "I really like the milk, it's the first time I've tried it and the order is fast and according to the application. Later I want to buy again at the online shop BukaWarung",
            ],
            [
                'user_id' => '2',
                'prod_id' => '4',
                'user_review' => 'Durian is delicious and smells good too',
            ],
            [
                'user_id' => '2',
                'prod_id' => '13',
                'user_review' => 'The price of cooking oil is very cheap and quickly sent in 1 day directly arrived.',
            ],
            [
                'user_id' => '2',
                'prod_id' => '16',
                'user_review' => "Yellow noodles are going viral, they're really delicious and they ship quickly in 1 day and they arrive immediately.",
            ],
            [
                'user_id' => '2',
                'prod_id' => '3',
                'user_review' => 'Very delicious milk',
            ],
            [
                'user_id' => '2',
                'prod_id' => '2',
                'user_review' => 'Delivery takes a long time but the vegetables are still fresh',
            ],
        ];
        foreach ($review as $key => $value){
            Review::create($value);
        }
    }
}
