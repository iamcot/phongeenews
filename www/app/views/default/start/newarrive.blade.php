<div id="newarriver" class="mycontainer wrap">
    <h1 class="text-center">
        Latest Arrivals
    </h1>
    <p class="text-center">This time we have something very hot for you!</p>
    <br>
    <ul class="grid">
    {{--*/ $lists = Vproduct::where('isnews','0')->orderby('laview','desc')->orderby('id','desc')->take(12)->get(); /*--}}
    {{--*/ $noInfo = true; /*--}}
    @foreach($lists as $list)
    @include(Config::get('shop.theme').'/list/listitem')
    @endforeach
    </ul>
    <div class="clearfix"></div>
</div>
