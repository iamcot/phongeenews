<div class="sidebar-widget">

</div>
<div class="sidebar-widget">
    {{--*/ $lists = Vproduct::where('isnews','0')
    ->orderby('laview','desc')
    ->orderby('id','desc')
    ->take(3)
    ->get();
    /*--}}
    <h4>Sản phẩm bán chạy</h4>
    <ul>
        @foreach($lists as $news)
        @include(Config::get('shop.theme').'/list/widgetitem')
        @endforeach
    </ul>
</div>
<div class="sidebar-widget">
    {{--*/ $lists = Vproduct::where('isnews','0')
    ->orderby('laview','desc')
    ->orderby('id','desc')
    ->take(3)
    ->get();
    /*--}}
    <h4>Đang khuyến mãi</h4>
    <ul>
        @foreach($lists as $news)
        @include(Config::get('shop.theme').'/list/widgetitem')
        @endforeach
    </ul>
</div>
<div class="sidebar-widget">
    {{--*/ $lists = Vproduct::where('isnews','0')
    ->orderby('laview','desc')
    ->orderby('id','desc')
    ->take(3)
    ->get();
    /*--}}
    <h4>Sắp có hàng</h4>
    <ul>
        @foreach($lists as $news)
        @include(Config::get('shop.theme').'/list/widgetitem')
        @endforeach
    </ul>
</div>