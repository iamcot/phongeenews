<div class="start_newsbottom col-xs-12 ">
    <div class="widget-header">
        <h3>Sản phẩm hot</h3>
        <!-- Controls -->
        <div class="startnewsbottomcontrol">
            <a class="left mycarousel-control" href="#carousel-example-genericnews" data-slide="prev">
            </a>
            <a class="right mycarousel-control" href="#carousel-example-genericnews" data-slide="next">
            </a>
        </div>
    </div>
    {{--*/ $news = Vproduct::getNewsBottom() /*--}}
    @if($news!=null)
    <div id="carousel-example-genericnews" class="carouselnews slide widget-product" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            {{--*/ $i = 0;$countnews = count($news); /*--}}
            @if($countnews >0)
                @foreach($news as $newitem)
                @if($i%4==0)
                <div class="item @if($i==0) active @endif">
                    <ul>
                        @endif
                        <li class=" col-xs-3">
                            @if($newitem->laimage !='')
                            <a href="{{URL::to($newitem->cat1url.'/'.$newitem->laurl.'.html')}}">
                                <img src="{{URL::to('/uploads/thumbnails/product/'.$newitem->laimage)}}">
                            </a>
                            @endif
                            <figcaption>
                                <h4 class="item-title">
                                    <a href="#">{{$newitem->latitle}}
                                    </a></h4>
                                @if($newitem->laoldprice > $newitem->laprice)
                                <del>{{number_format($newitem->laoldprice,0,',','.') }}</del>
                                @endif
                                <p class="current-price">{{number_format($newitem->laprice,0,',','.')}}</p>
                            </figcaption>
                        </li>
                        {{--*/ $i +=1 /*--}}
                        @if($i%4==0 && $i< $countnews)
                    </ul>
                </div>
                @endif
                @endforeach
                    </ul>
                </div>
            @endif
        </div>
    </div>
</div>
<div class="clearfix"></div>
@section('jscript')
@parent
<script>
    $('.carouselnews').carousel({
        animation: 'slow'
    });
</script>

@stop
@endif
