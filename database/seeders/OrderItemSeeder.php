<?php

namespace Database\Seeders;

use App\Models\Order;
use App\Models\OrderItem;
use Illuminate\Database\Seeder;

class OrderItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $orderItem = [
            [
                'order_id' => '1',
                'prod_id' => '3',
                'price' => '1',
                'qty' => '20000'
            ],
            [
                'order_id' => '1',
                'prod_id' => '5',
                'price' => '1',
                'qty' => '10000'
            ],
            [
                'order_id' => '1',
                'prod_id' => '10',
                'price' => '1',
                'qty' => '20000'
            ],
            [
                'order_id' => '2',
                'prod_id' => '4',
                'price' => '1',
                'qty' => '20000'
            ],
            [
                'order_id' => '2',
                'prod_id' => '13',
                'price' => '1',
                'qty' => '14000'
            ],
            [
                'order_id' => '2',
                'prod_id' => '16',
                'price' => '2',
                'qty' => '4500'
            ],
            [
                'order_id' => '3',
                'prod_id' => '3',
                'price' => '1',
                'qty' => '20000'
            ],
            [
                'order_id' => '3',
                'prod_id' => '2',
                'price' => '1',
                'qty' => '9500'
            ],
        ];
        foreach ($orderItem as $key => $value){
            OrderItem::create($value);
        }
    }
}
