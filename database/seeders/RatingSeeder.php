<?php

namespace Database\Seeders;

use App\Models\Rating;
use Illuminate\Database\Seeder;

class RatingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $rating = [
            [
                'user_id' => '3',
                'prod_id' => '3',
                'stars_rated' => '5',
            ],
            [
                'user_id' => '3',
                'prod_id' => '5',
                'stars_rated' => '4',
            ],
            [
                'user_id' => '3',
                'prod_id' => '10',
                'stars_rated' => '5',
            ],
            [
                'user_id' => '2',
                'prod_id' => '4',
                'stars_rated' => '4',
            ],
            [
                'user_id' => '2',
                'prod_id' => '13',
                'stars_rated' => '5',
            ],
            [
                'user_id' => '2',
                'prod_id' => '16',
                'stars_rated' => '5',
            ],
            [
                'user_id' => '2',
                'prod_id' => '3',
                'stars_rated' => '5',
            ],
            [
                'user_id' => '2',
                'prod_id' => '2',
                'stars_rated' => '4',
            ],
        ];
        foreach ($rating as $key => $value){
            Rating::create($value);
        }
    }
}
