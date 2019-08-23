<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{	
	public function __construct(){

	}
    public function index() {
    	$book = DB::table('t_book')->get();
    	return view('home', ['book' => $book]);
    }
    public function requestRent($id){
    	$book = DB::table('t_book')->where('id', $id)->first();
    	return view('request_rent', ['book' => $book]);
    }
    public function sendRequest(Request $request) {
    	DB::table('t_rent')->insert([
			'email' => $request->email,
			'book_id' => $request->id,
			'book_title' => $request->title,
			'status' => 0
		]);
		return redirect('/book');
    }
}
