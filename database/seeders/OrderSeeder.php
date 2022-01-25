<?php

namespace Database\Seeders;

use App\Models\Order;
use Illuminate\Database\Seeder;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $order = [
            [
                'user_id' => '3',
                'fname' => 'Doni',
                'lname' => 'Ardi',
                'email' => 'd.ardi@gmail.com',
                'phone' => '087724006119',
                'address1' => 'Jl. Kebun Jeruk  A02',
                'address2' => 'No 1 234',
                'city' => 'DKI Jakarta',
                'state' => 'Jakarta Barat',
                'country' => 'Indonesia',
                'pincode' => '1432',
                'total_price' => '50000',
                'payment_mode' => 'COD',
                'payment_id' => null,
                'status' => '1',
                'message' => null,
                'tracking_no' => 'BukaWarung4412'
            ],
            [
                'user_id' => '2',
                'fname' => 'Ani',
                'lname' => 'Neswati',
                'email' => 'ani32@gmail.com',
                'phone' => '08154206537',
                'address1' => 'Rahayu Indah Blok A 02',
                'address2' => 'No. 01',
                'city' => 'Banten',
                'state' => 'Serang',
                'country' => 'Indonesia',
                'pincode' => '4193',
                'total_price' => '38500',
                'payment_mode' => 'COD',
                'payment_id' => null,
                'status' => '1',
                'message' => null,
                'tracking_no' => 'BukaWarung9467'
            ],
            [
                'user_id' => '2',
                'fname' => 'Ani',
                'lname' => 'Neswati',
                'email' => 'ani32@gmail.com',
                'phone' => '08154206537',
                'address1' => 'Rahayu Indah Blok A 02',
                'address2' => 'No. 01',
                'city' => 'Banten',
                'state' => 'Serang',
                'country' => 'Indonesia',
                'pincode' => '4193',
                'total_price' => '29500',
                'payment_mode' => 'COD',
                'payment_id' => null,
                'status' => '1',
                'message' => null,
                'tracking_no' => 'BukaWarung6565'
            ],
        ];
        foreach ($order as $key => $value){
            Order::create($value);
        }
    }
}
