<?php

namespace App\Http\Controllers\Auth\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

use App\Notifications\VerifyRegistration;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Admin;
use Auth;


class LoginController extends Controller
{
  /*
  |--------------------------------------------------------------------------
  | Login Controller
  |--------------------------------------------------------------------------
  |
  | This controller handles authenticating users for the application and
  | redirecting them to your home screen. The controller uses a trait
  | to conveniently provide its functionality to your applications.
  |
  */

  use AuthenticatesUsers;

  /**
  * Where to redirect users after login.
  *
  * @var string
  */
  protected $redirectTo = '/admin';

  /**
  * Create a new controller instance.
  *
  * @return void
  */
  public function __construct()
  {
    $this->middleware('guest')->except('logout');
  }

  public function showLoginForm()
  {
    return view('auth.admin.login');
  }


  public function login(Request $request)
  {
//     $inputs= $request->only('email', 'password');
//     $inputs_email=$request->email;
//     $inputs_pass=$request->password;
//     //dd($inputs_pass);
//     $admin_email= Admin::select(['email'])->where('email', $inputs['email'])->first();
//     $admin_pass= Admin::select(['password'])->where('email', $inputs['email'])->first();
//     //$admin_email_only=$admin_email['email'];
//     //$test=($inputs_email==$admin_email_only);
//     //dd($admin_pass);
//     if(!$admin_email && $admin_pass==$inputs_pass)
//     {
//       return redirect()->back();
//
//     }
//     else
//     {
// return view('backend.pages.index');
//     }

     //dd($request->all());
    $this->validate($request, [
      'email' => 'required|email',
      'password' => 'required',
    ]);

    if (Auth::guard('admin')->attempt(['email' => $request->input('email'), 'password' => $request->input('password')])) {
      // Log Him Now
       //dd($request->all());
      session()->flash('message', 'You have logedIn');
      //return redirect('/'.auth()->user());
      return redirect('/admin');
    }else {
     // dd($request->password);
      session()->flash('sticky_error', 'Invalid Login');
      return back();
    }
  }

  public function logout(Request $request)
  {
    $this->guard()->logout();

    $request->session()->invalidate();

    return redirect()->route('admin.login');
  }

}
