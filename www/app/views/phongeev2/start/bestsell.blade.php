<div  class="mycontainer wrap widgetblock">
    <h1 class="text-center">
        Sản phẩm bán chạy
    </h1>

    <p class="text-center title-sub" >Cam kết mang đến những sản phẩm mới nhất và tốt nhất.</p>
    <div class="row-fluid widgetcontent">
        {{--*/ $lists = Vproduct::where('isnews','0')
        ->orderby('laview','desc')
        ->orderby('id','desc')
        ->take(8)
        ->get();
        /*--}}

        <ul class="grid row">
            @foreach($lists as $list)
            @include(Config::get('shop.theme').'/list/listitem')
            @endforeach
        </ul>
        <div class="navigation  pull-right">
            <ul class="list-inline">
                <li><a href="">1</a></li>
                <li><a href="">2</a></li>
                <li><a href="">3</a></li>
                <li><a href=""><i class="fa fa-angle-right"></i></a></li>
            </ul>
        </div>
    </div>

</div>
@section('jscript')
@parent

@stop
