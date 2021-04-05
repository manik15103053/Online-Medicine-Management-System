<?php

use Illuminate\Database\Seeder;
use App\Models\Admin;


class UsersTableSeeder extends Seeder
{
  /**
  * Run the database seeds.
  *
  * @return void
  */
  public function run()
  {

    Admin::create([

     'name' => 'admin',
     'email' => 'admin@gmail.com',
     'password' => bcrypt('12345'),
     'phone_no' => '01843899809',     


   ]);