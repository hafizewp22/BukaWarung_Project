<?php

namespace Database\Seeders;

use App\Models\Cart;
use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = [
            [
                'name' => 'Admin',
                'email' => 'admin@bukawarung.com',
                'password' => bcrypt('12345678'),
                'role_as' => '1',
            ],
            [
                'name' => 'Ani',
                'email' => 'ani32@gmail.com',
                'password' => bcrypt('12345678'),
//                'lname' => 'Neswati',
//                'phone' => '08154206537',
//                'address1' => 'Rahayu Indah Blok A 02',
//                'address2' => 'No. 01',
//                'city' => 'Serang',
//                'state' => 'Banten',
//                'country' => 'Indonesia',
//                'pincode' => '4193',
//                'role_as' => '0',
            ],
            [
                'name' => 'Doni',
                'email' => 'd.ardi@gmail.com',
                'password' => bcrypt('12345678'),
//                'lname' => 'Ardi',
//                'phone' => '087724006119',
//                'address1' => 'Jl. Kebun Jeruk  A02',
//                'address2' => 'No 1 234',
//                'city' => 'Jakarta Barat',
//                'state' => 'DKI Jakarta',
//                'country' => 'Indonesia',
//                'pincode' => '1432',
//                'role_as' => '0',
            ],
        ];
        foreach ($user as $key => $value){
            User::create($value);
        }
    }
}
