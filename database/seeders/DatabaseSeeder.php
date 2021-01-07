<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         //\App\Models\Post::factory(20)->create();

         \App\Models\User::factory(100)->create()->each(function($user){
             $user->posts()->save(\App\Models\Post::factory()->make());
         });
    }
}
