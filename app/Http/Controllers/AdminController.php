<?php 

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Mail\BookRentalEmail;
use Illuminate\Support\Facades\Mail;

class AdminController extends Controller
{
	public function login(){
		return view('login_admin');
	}

	public function loginProcess(Request $request){
		$username = $request->input('username');
		$password = $request->input('password');
		if($username == "admin" && $password == "admin") return redirect('/admin');
		else return redirect('/admin/login');
	}

	public function dashboard(){
		$rents = DB::table('t_rent')->get();
		return view('dashboard',['rents' => $rents]);
	}

	public function sendEmail(Request $request){
		Mail::to($request)->send(new BookRentalEmail());
 
		return "Email telah dikirim";
	}
}

 ?>