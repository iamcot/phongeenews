@extends('layout')
{{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
@section('body')
<div class="container-fluid wrap ">
    <div id="login" class="row">
        <br>
        <br>

        <div class="col col-xs-12 col-sm-6">
            <div class="well borderblue">
                {{Form::open(array(
                "url" => "login",
                "autocomplete"=>"off",
                'class'=>'form-inline',
                )) }}
                <div class=""><i class="fa fa-user fa-2x textblue"></i> Tài khoản đã đăng ký</div>
                <br>
                <div class="form-group">
                    <label class="sr-only" for="exampleInputEmail2">Email address</label>
                    <input type="email" id="exampleInputEmail2" class="form-control  col-xs-12" name="username" placeholder="Enter email">
                </div>
                <br>
                <div class="form-group">
                    <label class="sr-only" for="exampleInputEmail2">Email address</label>
                    <input type="password" class="form-control" name="password" placeholder="Mật khẩu">
                </div>
                <br>
                <div class="form-group col-sm-12 text-center">
                    <div class="col-xs-12 col-md-6">
                        {{Form::submit("Đăng nhập",array('class'=>'btn borderred col-xs-12')) }}
                    </div>
                    <div class="col-xs-12 col-md-6">
                        <a href="{{URL::to('facelogin')}}" class="btn loginface col-xs-12">Đăng nhập bằng Facebook</a>
                    </div>
                </div>
                {{Form::close() }}
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col col-xs-12 col-sm-6">
            <div class="well borderred">
                {{Form::open(array(
                "url" => "login",
                "autocomplete"=>"off",
                'class'=>'form-horizontal',
                )) }}
                <div class="form-group">
                    <span class="col-sm-3 control-label text-left">Tài khoản</span>

                    <div class="col-sm-12">
                        <input type="text" class="form-control" placeholder="Tên tài khoản" name="username">
                    </div>
                </div>
                <div class="form-group">
                    <span class="col-sm-3 control-label text-left">Mật khẩu</span>

                    <div class="col-sm-9">
                        <input type="password" class="form-control" placeholder="Mật khẩu" name="password">
                    </div>
                </div>
                <div class="form-group col-sm-12 text-center">
                    {{Form::submit("Đăng nhập",array('class'=>'btn btn-success')) }}
                </div>
                {{Form::close() }}
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <br>
    <br>
</div>
@stop