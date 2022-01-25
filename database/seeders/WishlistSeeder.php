<?php

namespace Database\Seeders;

use App\Models\Wishlist;
use Illuminate\Database\Seeder;

class WishlistSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $wishlist = [
            [
                'user_id' => '3',
                'prod_id' => '4',
            ],
            [
                'user_id' => '2',
                'prod_id' => '12',
            ],
            [
                'user_id' => '2',
                'prod_id' => '10',
            ],
            [
                'user_id' => '2',
                'prod_id' => '6',
            ],
        ];
        foreach ($wishlist as $key => $value){
            Wishlist::create($value);
        }
    }
}
