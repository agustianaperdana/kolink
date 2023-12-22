<?php

namespace App\Providers;

//use Illuminate\Support\ServiceProvider;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Schema;
use Laravel\Passport\Passport;

class AppServiceProvider extends ServiceProvider
{
	 // protected $policies = [
 // 'App\Model' => 'App\Policies\ModelPolicy',
 // ];
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
		Passport::ignoreRoutes();
        //
		$this->registerPolicies();
 //Passport::routes();
    }
	
	
}
