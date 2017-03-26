<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Auth;
use App\User;

class AdminController extends Controller
{
    //
    
    
    public function __construct() {
		
		//$this->middleware('auth');
	}
    
    public function show(Request $request) {
		
		return view('welcome');
	}
}
