<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Http\Requests;


use App\Http\Requests\ContactRequest;


use App\Http\Controllers\Controller;

use Validator;
use Session;

use Lang;

//use App\Helpers\Contracts\SaveStr;

use Auth;

use App;

use SaveStr;



class ContactController extends Controller
{
   
    public function store(Request $request/*,SaveStr $saveStr*/,$id=FALSE) {
    	
    	
    	
    	
    	/*$var = new SomeClass();*/
    	
    	//$var = App::make('SaveStr');
    	
    	SaveStr::save($request,Auth::user());
    	
    	
     //$saveStr->save($request,Auth::user());
      // $saveStr->save($request,Auth::user());
		
		return redirect()->route('contact');
		
	}
	
	public function show(Request $request) {
		
		
		//dd(Lang::$app);
		
		//$result = $request->session()->get('key','default');
		//$result = $request->session()->all();
		$request->session()->put('key.first','value');
		
		//if($request->session()->has('key.second')) {
			//$result = $request->session()->all();
			//Session::push('key.second','value2');
			
			//dump(session('key5','defult'));
			//dump(Session::pull('key'));
			
			//Session::reflash();
		//dump($result);
		//}
		
		
		
		
		//$title_head = Lang::get('messages.hello',array('name'=>'Ben'));
		
		if(Lang::has('messages.apples')) {
			$title_head = Lang::choice('messages.apples',23);
		}
		
		
		
		
		return view('default.contact',['title'=>'Contacts','title_head'=>$title_head]);
	}
    
}
