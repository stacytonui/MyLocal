<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            [
                'name' => 'Tusker(6 Pack)',
                'imagePath'=> 'tusker.jpg',
                'category_id'=>2,
                'price'=> 1200,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'Desperados (6 Pack)',
                'imagePath'=> 'desperados.jpg',
                'category_id'=>2,
                'price'=> 1200,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'Tusker Malt(6 Pack)',
                'imagePath'=> 'tuskermalt.jpg',
                'category_id'=>2,
                'price'=> 1200,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'Guinness(6 Pack)',
                'imagePath'=> 'guinness.jpg',
                'category_id'=>2,
                'price'=> 1200,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'Four Cousins Red',
                'imagePath'=> 'four-cousins.jpg',
                'category_id'=>1,
                'price'=> 700,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'Four Cousins White',
                'imagePath'=> 'four-cousins-white.jpg',
                'category_id'=>1,
                'price'=> 700,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'Frontera',
                'imagePath'=> 'frontera.jpg',
                'category_id'=>1,
                'price'=> 800,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'RW White',
                'imagePath'=> 'RW.jpg',
                'category_id'=>1,
                'price'=> 1200,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'Del Monte(Mango)',
                'imagePath'=> 'del-monte-mango.jpg',
                'category_id'=>3,
                'price'=> 250,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'Del Monte(Mixed Berry)',
                'imagePath'=> 'del-monte-mixed-berry.jpg',
                'category_id'=>3,
                'price'=> 250,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'Del Monte(Orange)',
                'imagePath'=> 'del-monte-orange.jpg',
                'category_id'=>3,
                'price'=> 250,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],
            [
                'name' => 'Del Monte(Passion Fruit)',
                'imagePath'=> 'del-monte-passion-fruit.jpg',
                'category_id'=>3,
                'price'=> 250,
                'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
                'updated_at' => Carbon::now()->format('Y-m-d H:i:s')
            ],


        ]);
    }
}
