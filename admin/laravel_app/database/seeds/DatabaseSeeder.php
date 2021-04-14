<?php
/*
 * File name: DatabaseSeeder.php
 * Last modified: 2021.03.20 at 13:16:14
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 *
 */

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
	$this->call(CustomFieldsTableSeeder::class);
    }
}
