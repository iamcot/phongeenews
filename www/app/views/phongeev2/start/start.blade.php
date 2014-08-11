@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
@include(Config::get('shop.theme').'/start/slider')
<div class="khuyenmaislide row-fluid">
    <div class="col-xs-12 khuyenmai-inner">
        <span class="col-xs-2 khuyenmaiheader">TIN KHUYẾN MÃI</span>
        <ul class="col-xs-9 khuyenmaicontent list-inline">

            <li class="col-xs-6"><a href=""><i>Giá luôn tốt hơn khi đặt hàng trực tuyến</i></a></li>
            <li class="col-xs-6"><a href=""><i>Phongee đang có chương trình khuyến mãi</i></a></li>
        </ul>
        <span class="khuyenindicator col-xs-1">
                <a><i class="fa fa-angle-left"></i></a>
                <a><i class="fa fa-angle-right"></i></a>
        </span>
    </div>
</div>
<div class="widget row-fluid">
    @include(Config::get('shop.theme').'/start/bestsell')
    @include(Config::get('shop.theme').'/start/newarrive')
    @include(Config::get('shop.theme').'/start/khuyenmai')
    @include(Config::get('shop.theme').'/start/rate')
</div>
    <div class="khuyenmaislide top-footerouter row-fluid">
        <div class="col-xs-12 top-footer">
            <div class="col-xs-6 text-align-center"><span class="giaohangicon"></span>GIAO HÀNG TRÊN TOÀN QUỐC</div>
            <div class="col-xs-6 text-align-center"><span class="hotlineicon"></span>HOTLINE 24/7 (08) 222 2222 88</div>
        </div>
    </div>
    @include(Config::get('shop.theme').'/start/store')


@stop