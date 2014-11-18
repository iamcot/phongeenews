<div id="newarriver" class="mycontainer wrap">
    <div class="col-xs-4 text-center">
        <h1 class="">
            Latest Arrivals
        </h1>
        <p class=" w1">We have something very hot for you!</p>
        <a href="#" class="btn btn-info">More...</a>
    </div>
    <div class="col-xs-8">
        <ul class="grid">
            {{--*/ $grid=4 /*--}}
            {{--*/ $lists = Vproduct::where('isnews','0')->orderby('laview','desc')->orderby('id','desc')->take(6)->get(); /*--}}
            {{--*/ $noInfo = true; /*--}}
            @foreach($lists as $list)
            @include(Config::get('shop.theme').'/list/listitem')
            @endforeach
        </ul>
    </div>

    <div class="clearfix"></div>
</div>
