<?php

class UserController extends BaseController
{
    private $data = array(
        'typeEnd' => 'shop',
        'haveHeader'=> 1,
        'sidebartype' => 'none',  //sright - sleft - none

    );
    public function __construct(){
    }
    public function login(){
        $input = Input::all();
//       echo  \Illuminate\Support\Facades\Hash::make('abc123');
        if(isset($input['_token'])){
            $credentials = array(
                "username" => $input['username'],
                "password" => $input['password']
            );
            if(isset($input['loginremember'])) $remem = true;
            else $remem = false;
            if (Auth::attempt($credentials,$remem)) {
//                Session::set('user',Auth::user()->getAll());
                if($credentials['username']=='admin') Session::set("uid",'1657743351');
                if(Session::has('beforelogin'))
                    return Redirect::to(Session::get('beforelogin'));
                else return Redirect::to('/');
            } else {
                return Redirect::to('login')
                    ->with('message', 'Email hoặc mật khẩu không đúng');
            }
//            $user = User::create(array(
//                'username'=>Input::get('username'),
//                'password'=>Hash::make(Input::get('password'))
//            ));
//
//            Auth::login($user);
//            return Redirect::to('/');
        }

        return View::make(Config::get('shop.theme').'.user.login',$this->data);
    }
    public function logout() {
        Auth::logout();
        if(Session::has('uid'))
            Session::forget('uid');
        return Redirect::to('/');
    }
    public function reg(){
        $input = Input::all();
        $olduser = User::where('username',$input['regemail'])->first();
        if($olduser){
            return Redirect::to('login')
                ->with('message', 'Email này đã có');
        }
        else{
            $user = User::create(array(
                'username' => $input['regemail'],
                'password' => Hash::make($input['password1']),
                'lafullname' => $input['regname'],
                'lasex' => $input['regtitle'],
                'ladob' => strtotime($input['yob'].'-'.$input['mob'].'-'.$input['dob'].' 00:00:00')
            ));
            if($user){
                return Redirect::to('login')
                    ->with('message', 'Đăng ký  thành công email '.$input['regemail']);
            }
            else{
                return Redirect::to('login')
                    ->with('message', 'Đăng ký  thất bại email '.$input['regemail'].'. Vui lòng thử lại.');
            }
        }
    }
}