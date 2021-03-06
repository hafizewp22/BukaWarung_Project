<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product = [
            [
                'cate_id' => '1',
                'name' => 'Apple 2 Kg',
                'slug' => 'apple-2-kg',
                'small_description' => 'This is a healthy apple',
                'description' => 'Apples are the most recommended fruit to be consumed every day, so there is a saying that says "an apple a day keep the doctor away". This is because apples are rich in antioxidants, flavonoids, and fiber. In addition, the content of phytonutrients and antioxidants in apples can help reduce the risk of cancer, hypertension, diabetes, and heart disease.',
                'original_price' => '10000',
                'selling_price' => '10000',
                'image' => '1638760312.jpg',
                'qty' => '78',
                'tax' => '0',
                'status' => '0',
                'trending' => '1',
                'meta_title' => 'Apple',
                'meta_keywords' => 'Apple',
                'meta_description' => 'Apple',
            ],
            [
                'cate_id' => '2',
                'name' => 'Green Spinach',
                'slug' => 'green-spinach',
                'small_description' => 'Green Spinach a healthy vegetable',
                'description' => 'Green Spinach a healthy vegetable',
                'original_price' => '8000',
                'selling_price' => '9500',
                'image' => '1638760503.jpg',
                'qty' => '51',
                'tax' => '0',
                'status' => '0',
                'trending' => '0',
                'meta_title' => 'Green Spinach',
                'meta_keywords' => 'Green Spinach',
                'meta_description' => 'Green Spinach',
            ],
            [
                'cate_id' => '3',
                'name' => 'Indomilk Fresh Milk',
                'slug' => 'indomilk-fresh-milk',
                'small_description' => 'Indomilk Fresh Milk',
                'description' => 'Indomilk Fresh Milk',
                'original_price' => '18000',
                'selling_price' => '20000',
                'image' => '1638760644.png',
                'qty' => '21',
                'tax' => '0',
                'status' => '0',
                'trending' => '1',
                'meta_title' => 'Milk',
                'meta_keywords' => 'Milk',
                'meta_description' => 'Milk',
            ],
            [
                'cate_id' => '1',
                'name' => 'Durian',
                'slug' => 'Durian',
                'small_description' => 'This is a healthy Durian',
                'description' => "Now eating durian doesn't have to be complicated and doesn't need to be zoned. Now there is a peeled montong durian that is guaranteed to be delicious, sweet, and legit with a weight of approximately 500gr",
                'original_price' => '60000',
                'selling_price' => '20000',
                'image' => '1642491717.jpeg',
                'qty' => '0',
                'tax' => '0',
                'status' => '0',
                'trending' => '1',
                'meta_title' => 'Durian',
                'meta_keywords' => 'Durian',
                'meta_description' => 'Durian',
            ],
            [
                'cate_id' => '1',
                'name' => 'Orange 2 Kg',
                'slug' => 'Orange-2-Kg',
                'small_description' => 'This is a healthy orange',
                'description' => 'Sunkist oranges are a high enough source of vitamin C which acts as an antioxidant.',
                'original_price' => '10000',
                'selling_price' => '10000',
                'image' => '1642941030.jpg',
                'qty' => '19',
                'tax' => '0',
                'status' => '0',
                'trending' => '1',
                'meta_title' => 'Orange',
                'meta_keywords' => 'Orange',
                'meta_description' => 'Orange',
            ],
            [
                'cate_id' => '1',
                'name' => 'Korea Strawberry 4 Kg',
                'slug' => 'Korea-Strawberry-4-Kg',
                'small_description' => 'This is a healthy Strawberry',
                'description' => 'Have you tried Korean Strawberry? certainly different from other strawberries. from the appearance it is very tempting, in terms of color there is a little white on the stem. it has a refreshing sweet taste. curious?',
                'original_price' => '25000',
                'selling_price' => '25000',
                'image' => '1642941321.png',
                'qty' => '10',
                'tax' => '0',
                'status' => '0',
                'trending' => '0',
                'meta_title' => 'Strawberry',
                'meta_keywords' => 'Strawberry',
                'meta_description' => 'Strawberry',
            ],
            [
                'cate_id' => '2',
                'name' => 'Chilli pcs',
                'slug' => 'Chilli-pcs',
                'small_description' => 'White mustard is a healthy vegetable',
                'description' => 'White mustard has a yellowish white color with curly leaves and a crunchy texture.',
                'original_price' => '9500',
                'selling_price' => '9500',
                'image' => '1642941690.png',
                'qty' => '20',
                'tax' => '0',
                'status' => '0',
                'trending' => '1',
                'meta_title' => 'Chilli',
                'meta_keywords' => 'Chilli',
                'meta_description' => 'Chilli',
            ],
            [
                'cate_id' => '2',
                'name' => 'Red Cherry Tomatoes Pack',
                'slug' => 'Red-Cherry-Tomatoes-Pack-250-gr',
                'small_description' => 'Healthy vegetable tomatoes',
                'description' => 'Has a bright red color with a slightly oval round shape.',
                'original_price' => '6500',
                'selling_price' => '6500',
                'image' => '1642941964.png',
                'qty' => '8',
                'tax' => '0',
                'status' => '0',
                'trending' => '0',
                'meta_title' => 'Tomat Cherry',
                'meta_keywords' => 'Tomat Cherry',
                'meta_description' => 'Tomat Cherry',
            ],
            [
                'cate_id' => '2',
                'name' => 'Spinach Green Root Pack',
                'slug' => 'Spinach-Green-Root-Pack',
                'small_description' => 'Green Spinach a healthy vegetable',
                'description' => 'Green spinach is round and has a thin and smooth leaf texture',
                'original_price' => '7980',
                'selling_price' => '7980',
                'image' => '1642942130.png',
                'qty' => '20',
                'tax' => '0',
                'status' => '0',
                'trending' => '0',
                'meta_title' => 'Green Spinach',
                'meta_keywords' => 'Green Spinach',
                'meta_description' => 'Green Spinach',
            ],
            [
                'cate_id' => '3',
                'name' => 'Vsoy Multigrain 1 Liter',
                'slug' => 'Vsoy-Multigrain-1-Liter',
                'small_description' => 'Vsoy Multigrain 1 Liter',
                'description' => 'V Soy Multi Grain UHT signature rich & smooth taste and delectable multi-grains including purple brown rice, black sesame, barley and malt extract.',
                'original_price' => '20000',
                'selling_price' => '20000',
                'image' => '1642943433.png',
                'qty' => '19',
                'tax' => '0',
                'status' => '0',
                'trending' => '1',
                'meta_title' => 'Milk',
                'meta_keywords' => 'Milk',
                'meta_description' => 'Milk',
            ],
            [
                'cate_id' => '3',
                'name' => 'Cimory Fresh Milk Strawberry',
                'slug' => 'Cimory-Fresh-Milk-Strawberry',
                'small_description' => 'Cimory Fresh Milk Strawberry',
                'description' => 'description Cimory Fresh Milk Strawberry 950 ml Fresh Strawberry Pasteurized Milk made from fresh Cimory milk and guaranteed authenticity. Benefit Fresh milk is useful for maintaining strong bone density and preventing osteoporosis, helping lower blood pressure, caring for teeth, preventing tooth decay, and maintaining oral health. Consumption & Storage Guide Cimory Fresh Strawberry Milk can be drunk immediately and is more delicious when consumed cold. Can be stored at room temperature but should be stored in the refrigerator.',
                'original_price' => '25000',
                'selling_price' => '25000',
                'image' => '1642943564.png',
                'qty' => '30',
                'tax' => '0',
                'status' => '0',
                'trending' => '1',
                'meta_title' => 'Milk',
                'meta_keywords' => 'Milk',
                'meta_description' => 'Milk',
            ],
            [
                'cate_id' => '3',
                'name' => 'Sariwangi Teh Asli Teh',
                'slug' => 'Sariwangi-Teh-Asli-Teh',
                'small_description' => 'Sariwangi Teh Asli Teh',
                'description' => 'Original Sariwangi Tea Bags Fill 50 Twin Packs Processed from selected leaves, the packaging maintains the freshness of the taste and aroma',
                'original_price' => '15000',
                'selling_price' => '15000',
                'image' => '1642943677.png',
                'qty' => '40',
                'tax' => '0',
                'status' => '0',
                'trending' => '1',
                'meta_title' => 'Teh',
                'meta_keywords' => 'Teh',
                'meta_description' => 'Teh',
            ],
            [
                'cate_id' => '4',
                'name' => 'Rose Brand Minyak Goreng',
                'slug' => 'Rose-Brand-Minyak-Goreng',
                'small_description' => 'Rose Brand Minyak Goreng',
                'description' => 'Made from selected palm oil and processed with high technology and hygienic. Make food more savory and delicious. Contains Beta Carotene, omega 9, vitamins A and E which are good for the body.',
                'original_price' => '14000',
                'selling_price' => '14000',
                'image' => '1642943792.png',
                'qty' => '19',
                'tax' => '0',
                'status' => '0',
                'trending' => '1',
                'meta_title' => 'Cooking oil',
                'meta_keywords' => 'Cooking oil',
                'meta_description' => 'Cooking oil',
            ],
            [
                'cate_id' => '4',
                'name' => 'Gulaku Gula Kuning',
                'slug' => 'Gulaku-Gula-Kuning',
                'small_description' => 'Gulaku Gula Kuning',
                'description' => 'Sugar Cane Sugar is made from selected original cane sugar with a hygienic process. It has good quality at an affordable price. The taste is very sweet, natural, pure and clean.',
                'original_price' => '12500',
                'selling_price' => '12500',
                'image' => '1642943921.png',
                'qty' => '30',
                'tax' => '0',
                'status' => '0',
                'trending' => '0',
                'meta_title' => 'Sugar',
                'meta_keywords' => 'Sugar',
                'meta_description' => 'Sugar',
            ],
            [
                'cate_id' => '4',
                'name' => 'Kims Tahu Putih',
                'slug' => 'Kims-Tahu-Putih',
                'small_description' => 'Kims Tahu Putih',
                'description' => 'White Kims Tofu has a softer texture and crumbles easily. Does not contain preservatives and artificial coloring, the water contained is natural water from tofu.',
                'original_price' => '13500',
                'selling_price' => '13500',
                'image' => '1642944077.png',
                'qty' => '20',
                'tax' => '0',
                'status' => '0',
                'trending' => '0',
                'meta_title' => 'White tofu',
                'meta_keywords' => 'White tofu',
                'meta_description' => 'White tofu',
            ],
            [
                'cate_id' => '4',
                'name' => '3 Ayam Mie Telur Kuning',
                'slug' => '3-Ayam-Mie-Telur-Kuning',
                'small_description' => '3 Ayam Mie Telur Kuning',
                'description' => 'Egg noodles are processed with quality ingredients with high quality standards. Halal without using preservatives. Suitable to be processed into fried noodles or noodle soup.',
                'original_price' => '4500',
                'selling_price' => '4500',
                'image' => '1642944181.png',
                'qty' => '18',
                'tax' => '0',
                'status' => '0',
                'trending' => '1',
                'meta_title' => 'Yellow Noodles',
                'meta_keywords' => 'Yellow Noodles',
                'meta_description' => 'Yellow Noodles',
            ],
        ];
        foreach ($product as $key => $value){
            Product::create($value);
        }
    }
}
