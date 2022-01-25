<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $category = [
            [
                'name' => 'Fruit',
                'slug' => 'fruit',
                'description' => 'Healthy fruit food',
                'status' => '1',
                'popular' => '1',
                'image' => '1642944592.jpg',
                'meta_title' => 'Fruit',
                'meta_descrip' => 'Healthy fruit food',
                'meta_keywords' => 'Fruit',
            ],
            [
                'name' => 'Vegetable',
                'slug' => 'vegetable',
                'description' => 'Healthy vegetable food',
                'status' => '1',
                'popular' => '1',
                'image' => '1642944567.jpg',
                'meta_title' => 'vegetable',
                'meta_descrip' => 'Healthy vegetable food',
                'meta_keywords' => 'Healthy vegetable food',
            ],
            [
                'name' => 'Drink',
                'slug' => 'drink',
                'description' => 'Healthy drink',
                'status' => '1',
                'popular' => '1',
                'image' => '1642944644.jpg',
                'meta_title' => 'drink',
                'meta_descrip' => 'Healthy drink',
                'meta_keywords' => 'Healthy drink',
            ],
            [
                'name' => 'Basic Food',
                'slug' => 'Basic-Food',
                'description' => 'Basic Food',
                'status' => '1',
                'popular' => '1',
                'image' => '1642943227.jpeg',
                'meta_title' => 'Basic Food',
                'meta_descrip' => 'Basic Food',
                'meta_keywords' => 'Basic Food',
            ],
        ];
        foreach ($category as $key => $value){
            Category::create($value);
        }
    }
}
