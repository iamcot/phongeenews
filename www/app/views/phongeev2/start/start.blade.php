@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
@include(Config::get('shop.theme').'/start/slider')
<div class="khuyenmaislide row-fluid hidden-phone text-center">
    <div class="row">
    <div class=" khuyenmai-inner wrap ">
        <span class="col-xs-3 col-md-2 khuyenmaiheader">TIN KHUYẾN MÃI</span>
        <ul class="col-xs-9 col-md-9 khuyenmaicontent list-inline">

            <li class="col-xs-12 col-md-6"><a href=""><i>Giá luôn tốt hơn khi đặt hàng trực tuyến</i></a></li>
            <li class="col-md-6"><a href=""><i>Phongee đang có chương trình khuyến mãi</i></a></li>
        </ul>
        <span class="khuyenindicator col-md-1 visible-desktop">
                <a><i class="fa fa-angle-left"></i></a>
                <a><i class="fa fa-angle-right"></i></a>
        </span>
        </div>
    </div>
</div>
<div class="widget row-fluid">
    @include(Config::get('shop.theme').'/start/bestsell')
    <div class="clear"></div>

    @include(Config::get('shop.theme').'/start/newarrive')
    <div class="clear"></div>

    @include(Config::get('shop.theme').'/start/khuyenmai')
    <div class="clear"></div>

    @include(Config::get('shop.theme').'/start/rate')
    <div class="clear"></div>
</div>
    @include(Config::get('shop.theme').'/start/topfooter')
    @include(Config::get('shop.theme').'/start/store')
@stop