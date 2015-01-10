@extends('layout')
@section('body')
<body>
<div >
    <div class="row-fluid">
        <div id="header" class="wrap">
            <div class="col-xs-4">
                <a href="{{URL::to('/')}}" id="logo"></a>
            </div>
            <div class="col-xs-8 pull-right text-right">
                <input id="searchform" placeholder="Tìm kiếm" class="pull-right">
                <ul id="nav" class="list-inline">
                    <li><a href="{{URL::to('/gioi-thieu.html')}}">Giới thiệu</a></li>
                    <li><a href="{{URL::to('/dich-vu.html')}}">Dịch vụ</a></li>
                    <li><a href="{{URL::to('/#')}}">Thư viện</a></li>
                    <li><a href="{{URL::to('/lien-he.html')}}">Liên hệ</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    @yield('pagecontent')
     <div id="footer">
        <div  class="row wrap">
            <div class="col-xs-12 col-md-5">
                <div class="blocktitle">CÔNG TY KIẾN TRÚC - XÂY DỰNG SOTACO</div>
                <ul class="list-unstyled" style="margin-left: 0">
                    <li>
                        <label>MST:</label> 0312911801
                    </li>
                    <li>
                        <label>Address: </label> 363/5 Bình Lợi, P.13, Q.Bình Thạnh, Tp,HCM
                    </li>
                    <li>
                        <label>Điện thoại: </label> 0866 839 839 <label> - Fax: </label> 0862 947 947
                    </li>
                    <li>
                        <label>Số tài khoản: </label> 0721000558830 - NH Vietcombank - CN Kỳ Đồng
                    </li>
                </ul>
            </div>
            <div class="col-xs-12 col-md-7">
                <div class="blocktitle">&nbsp;</div>
                <ul class="list-inline">
                    <li class="col-xs-3"><a href="#" class="client client1"></a></li>
                    <li class="col-xs-3"><a href="#" class="client client2"></a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    </div>
    </div>
    <div id="endfooter">Copyright &copy; SOTACO CONSTRUCTION</div>
    </body>
@stop
@section('script')

<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery('.tp-banner').revolution(
                {
                    delay:3000,
                    startwidth:1170,
                    startheight:500,
                    hideThumbs:10,
                    fullWidth:"on",
                    fullScreen:"off",
                    onHoverStop:"off"
                });
    });
</script>
@stop
