<?php

use Illuminate\Database\Seeder;
use App\Models\User;
class UsersTableSeeder extends Seeder
{
  /**
  * Run the database seeds.
  *
  * @return void
  */
  public function run()
  {
    User::create([
      'username' => 'rabbi',
      'first_name' => 'Mr.',
      'phone_no' => '01843899809',
      'email' => 'rabbi@gmail.com',
      'password' => bcrypt('12345'),

    ]); 

  }
}
