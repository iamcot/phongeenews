<div id="newarriver" class="mycontainer wrap">
    <h1 class="text-center">
        Latest Arrivals
    </h1>

    <p class="text-center" style=" color:#676767;">This time we have something very hot for you!</p>
    <br>
    {{--*/ $lists = Vproduct::where('isnews','0')->orderby('laview','desc')->orderby('id','desc')->take(24)->get();
    /*--}}
    {{--*/ $noInfo = true; /*--}}
    {{--*/ $i = 0;$countnews = count($lists); /*--}}
    @if($countnews >0)
    <div id="carousel-example-genericnews" class="carouselnews " data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            @foreach($lists as $list)
            @if($i%12==0)
            <div class="item @if($i==0) active @endif">
                <ul class="grid">
            @endif
                        @include(Config::get('shop.theme').'/list/startlistitem')
                        {{--*/ $i +=1 /*--}}
                        @if($i%12==0 && $i< $countnews)
                    </ul>
            </div>
            @endif
            @endforeach
            </ul>
        </div>
        <div class="newarrivercontrol">
            <a class="left carousel-control" href="#carousel-example-genericnews" data-slide="prev">
            </a>
            <a class="right carousel-control" href="#carousel-example-genericnews" data-slide="next">
            </a>
        </div>
    </div>
</div>
@endif

<div class="clearfix"></div>
</div>
@section('jscript')
@parent
<script>
    $('.carouselnews').carousel({
        animation: 'slow'
    });
</script>

@stop
