<?php

namespace Database\Seeders;

use App\Models\Cart;
use Illuminate\Database\Seeder;

class CartSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $cart = [
            [
                'user_id' => '2',
                'prod_id' => '1',
                'prod_qty' => '1',
            ],
        ];
        foreach ($cart as $key => $value){
            Cart::create($value);
        }
    }
}
