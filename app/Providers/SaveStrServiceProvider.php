<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Helpers\SaveEloquentOrm;
use App\Helpers\SaveFile;


class SaveStrServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
        
        //$obj = new SaveFile();
        
       // $this->app->instance('App\Helpers\Contracts\SaveStr',$obj);
        
        //dd($this->app->make('App\Helpers\Contracts\SaveStr'));

     $this->app->bind('savestr',function() {
        	
        	//return new SaveEloquentOrm();
        	
        	
        	return new SaveFile();
        	
        });
        
        
      // $this->app->bind('App\Helpers\Contracts\SaveStr','App\Helpers\SaveFile');
        
    }
}
