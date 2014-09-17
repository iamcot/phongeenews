@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
{{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
<div class="container-fluid wrap ">
    <div id="login" class="row">
        <br>
        <br>

        <div class="col col-xs-12 col-sm-6">
            <div class="well borderblue loginbox ">
                {{Form::open(array(
                "url" => "login",
                "autocomplete"=>"off",
                'class'=>'',
                )) }}
                <h5 class="col-xs-12"><i class="fa fa-user fa-2x textblue"></i><strong> Tài khoản đã
                                                                                        đăng
                                                                                        ký</strong>
                </h5>

                <div class="row-fluid no-padding">
                    <div class="form-group col-xs-12 " style="overflow: hidden;">
                        <i class="fa fa-envelope-o textsmall logininputicon"></i>
                        <input type="email" id="loginemailinput" class="form-control"
                               name="username" placeholder="Enter email">
                    </div>
                    <div class="form-group col-xs-12 " style="overflow: hidden;">
                        <i class="fa fa-unlock-alt textsmall logininputicon"></i>
                        <input type="password" class="form-control" name="password"
                               placeholder="Mật khẩu">
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-xs-12">
                        <div class="checkbox ">
                            <label class="infotextsmall">
                                <input type="checkbox" name="loginremember"> Tự động đăng nhập lần sau.
                            </label>
                        </div>
                    </div>
                    <br>

                    <div class="myrow-fluid text-center">
                        <div class="form-group col-xs-12 col-md-6">
                            {{Form::submit("Đăng nhập",array('class'=>'btn borderred col-xs-12
                            textsmall')) }}
                        </div>
                        <div class="form-group col-xs-12 col-md-6">
                            <a href="{{URL::to('facelogin')}}" class="btn loginface textsmall">Đăng
                                                                                               nhập
                                                                                               bằng
                                                                                               Facebook</a>
                        </div>
                    </div>
                </div>
                {{Form::close() }}
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col col-xs-12 col-sm-6">
            <div class="well borderred loginbox">
                <h5 class="textblack col-xs-12"><i class="fa fa-user fa-2x "></i> <strong> Khách
                                                                                           hàng
                                                                                           mới</strong>
                </h5>

                <div class="row-fluid">
                    <p class="infotextsmall textgray col-xs-12" id="reginfo">Tạo tài khoản trên
                                                                             PhonGee Color, bạn có
                                                                             thể mua hàng với nhiều
                                                                             ưu đãi hơn, thanh toán
                                                                             nhanh hơn, quản lý
                                                                             nhiều địa chỉ nhận hàng
                                                                             và nhiều hơn thế nữa.
                    </p>
                    <div id="reginput" class="" style="display: none">
                        {{Form::open(array(
                        "url" => "login/reg",
                        "autocomplete"=>"off",
                        'class'=>'',
                        'id'=>'registration'
                        )) }}
                        <div class="row-fluid no-padding">
                            <div class="form-group col-xs-12 ">
                                <div class="input-group ">
                                    <i class="fa fa-user textsmall logininputicon" style="margin-left: -15px;"></i>
                                    <input type="email" class="form-control " name="regname"
                                           placeholder="Họ và tên *">
                                    <div class="input-group-btn" >
                                        <input type="hidden" name="regtitle" value="">
                                        <button type="button" id="titledropdown"
                                                class="btn btn-default dropdown-toggle"
                                                data-toggle="dropdown" ><span id="dtitlelabel">Danh xưng</span> <span
                                                class="caret"></span></button>
                                        <ul class="dropdown-menu  dropdown-menu-right" role="menu">
                                            <li><a href="javascript:settitle('m','Ông')">Ông</a></li>
                                            <li><a href="javascript:settitle('f','Bà')">Bà</a></li>
                                        </ul>
                                    </div>
                                    <!-- /btn-group -->

                                </div>
                            </div>
                            <div class="form-group col-xs-12 " style="overflow: hidden;">
                                <i class="fa fa-envelope-o textsmall logininputicon"></i>
                                <input type="email" class="form-control " name="regemail"
                                       placeholder="Địa chỉ email *">
                            </div>
                            <div class="form-group col-xs-12 col-md-6" style="overflow: hidden;">
                                <i class="fa fa-unlock-alt textsmall logininputicon"></i>
                                <input type="password" class="form-control " name="password1"
                                       placeholder="Mật khẩu">
                            </div>
                            <div class="form-group col-xs-12 col-md-6" style="overflow: hidden;">
                                <i class="fa fa-unlock-alt textsmall logininputicon"></i>
                                <input type="password" class="form-control " name="password2"
                                       placeholder="Xác nhận mật khẩu">
                            </div>
                            <div class="col-xs-12">
                                <div class="col-xs-4 no-padding">
                                    <select name="dob" class="form-control no-radius-right">
                                        <option value="0">Ngày sinh</option>
                                        @for($i=1;$i<=31;$i++)
                                        <option value="{{$i}}">{{$i}}</option>
                                        @endfor
                                    </select>
                                </div>
                                <div class="col-xs-4 no-padding">
                                <select name="mob" class="form-control no-radius">
                                    <option value="0">Tháng sinh</option>
                                    @for($i=1;$i<=12;$i++)
                                    <option value="{{$i}}">Tháng {{$i}}</option>
                                    @endfor
                                </select>
                                </div>
                            <div class="col-xs-4 no-padding">
                                <select name="yob" class="form-control no-radius-left">
                                    <option value="0">Năm sinh</option>
                                    @for($i=1940;$i<=date('Y');$i++)
                                    <option value="{{$i}}">{{$i}}</option>
                                    @endfor
                                </select>
                               </div>
                            </div>
                            <div class="clear"><br></div>
                        </div>


                        {{Form::close() }}
                    </div>
                    <div class="myrow-fluid text-center" style=" overflow: hidden">
                        <div class="col-xs-12 col-md-6">
                            <a href="javascript:toggereg()" class="col-xs-12 bg-color-red btn">Đăng
                                                                                               ký
                                                                                               tài
                                                                                               khoản
                                                                                               mới</a>
                        </div>

                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <br>
    <br>
</div>
@stop
@section('jscript')
@parent
<script>
function IsEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}
function toggereg() {
    if ($("#reginfo").css('display') != 'none') {
        $("#reginfo").hide();
        $("#reginput").show();
    }
    else {
        if($("input[name=regname]").val().trim() ==""){
            alert("Chưa nhập Họ Tên");
            return;
        }
        if($("input[name=regemail]").val().trim() ==""){
            alert("Chưa nhập email");
            return;
        }
        if(!IsEmail($("input[name=regemail]").val().trim())){
            alert("Email không đúng");
            return;
        }
        if($("input[name=password1]").val().trim() ==""){
            alert("Chưa nhập Mật khẩu");
            return;
        }
        if($("#registration input[name=password1]").val() != $("#registration input[name=password2]").val())
        {
            alert("Mật khẩu xác nhận không đúng");
            return;
        }

        $("#registration").submit();
    }

}
function settitle(title,text){
    $("input[name=regtitle]").val(title);
    $("#dtitlelabel").text(text);
}
</script>
@stop