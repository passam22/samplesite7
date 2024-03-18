<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Attendance;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class SampleController extends Controller
{
    public function view_info($id)
    {
        $data = array(
            'info' => Customer::where('id', $id)->first(),
        );
        return view('profile', $data);
    }

    public function login_form()
    {
        //Display Form
        return view("login_form");
    }

    public function register_form()
    {
        //Display Registration Form
        return view("register_form");
    }

    public function register_employee(Request $request)
    {
        //Add New Employee
        if($request->input("password")!=$request->input("confirm_password"))
        {
            return redirect("/register_form")->with('error', 'Incorrect password confirmation');
        }

        $record = array(
            'employee_name' => $request->input('employee_name'),
            'email' => $request->input('email'),
            'password' => Hash::make($request->input('password')),
        );

        User::create($record);
        return redirect("/login_form")->with('success', 'Account successfully created');        
    }

    public function check_login(Request $request)
    {
        $credentials = array(
            'email' => $request->input('email'),
            'password' => $request->input('password'),
        );

                 
        if (Auth::attempt($credentials))
        {
            return redirect('/dashboard');
        }                   
        
        //IF WRONG EMIAL/ PASSWORD
        return redirect('/login_form')->with('error', 'Wrong Email or Password');
    }

    public function sign_in_via_qr(Request $request)
    {
        $record = array(
            'signin_time' => date("Y-m-d H:i:s"),
           'user_id' => $request->user()->id
        );

        Attendance::create($record);
        return redirect('/dashboard');
    }
    public function dashboard(Request $request)
    {
        $data = array(
            'info' => $request->user(), //retrieves the currently login user info
            'records' => Attendance::leftJoin('users', 'users.id', '=', 'attendance.user_id')->get(), //retrieves the currently login user info
        );

        return view("dashboard", $data);
    }

    public function logout(Request $request)
    {
        Auth::logout();
    
        $request->session()->invalidate();
        $request->session()->regenerateToken();
    
        return redirect('/login_form');
    }
}
