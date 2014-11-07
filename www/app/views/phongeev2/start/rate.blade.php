<div  class="mycontainer wrap widgetblock">
    <h1 class="text-center">
        Được đánh giá cao
    </h1>

    <p class="text-center title-sub" >Sản phẩm được đánh giá cao từ các chuyên gia công nghệ.</p>
    <div class="row-fluid widgetcontent">
        {{--*/ $lists = Vproduct::where('isnews','0')
                                ->orderby('laview','desc')
                                ->orderby('id','desc')
                                ->take(4)
                                ->get();
        /*--}}

        <ul class="grid row">
            @foreach($lists as $list)
            @include(Config::get('shop.theme').'/list/listitem')
            @endforeach
        </ul>
        <div class="navigation  pull-right">
            <ul class="list-inline">
                <li><a href="" class="active">1</a></li>
                <li><a href="">2</a></li>
                <li><a href="">3</a></li>
                <li><a href="" class="indicator"><i class="fa fa-angle-right"></i></a></li>
            </ul>
        </div>
    </div>

</div>
@section('jscript')
@parent

@stop
