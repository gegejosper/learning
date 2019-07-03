<?php

use Illuminate\Database\Seeder;

use App\Profile;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Faker\Factory::create();

        $limit = 50;

        for ($i = 0; $i < $limit; $i++) {
            
            $dataUser = new User();
            $dataUser->name = $faker->name;
            $dataUser->username = $faker->userName;
            $dataUser->usertype = 'member';
            $dataUser->address = $faker->address;
            $dataUser->contactnum = $faker->e164PhoneNumber;
            $dataUser->profileimage ='profile.jpg';
            $dataUser->email = $faker->unique()->safeEmail;
            $dataUser->email_verified_at = now();
            $dataUser->password = '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'; // password
            $dataUser->remember_token = now();
            $dataUser->save();
        }
    }
}
