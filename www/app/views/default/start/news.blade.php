<div>
<div class="widgetcol col-xs-8">
    <div class="start_newsbottom">
        <div class="widget-header">
            <h3>Tin tức</h3>
            <!-- Controls -->
            <div class="startnewsbottomcontrol">
                <a class="left mycarousel-control" href="#carousel-example-genericnews2" data-slide="prev">
                </a>
                <a class="right mycarousel-control" href="#carousel-example-genericnews2" data-slide="next">
                </a>
            </div>
        </div>
        {{--*/ $news = Vproduct::getLastestTincongty() /*--}}
        <div id="carousel-example-genericnews2" class="carouselnews slide " data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                {{--*/ $i = 0; $countnews = count($news); /*--}}
                @if($countnews > 0 )
                @foreach($news as $newitem)
                    @if($i%2==0)
                        <div class="item @if($i==0) active @endif">
                            <ul>
                    @endif
                        <li class=" col-xs-6">
                            @if($newitem->laimage !='')
                            <a href="{{URL::to($newitem->cat1url.'/'.$newitem->laurl.'.html')}}" class="text-center block">
                                <img src="{{URL::to('/uploads/medium/product/'.$newitem->laimage)}}">
                            </a>
                            @endif
                            <figcaption>
                                <div class="entry-header">
                                    <h4 class="entry-title">
                                        <a href="{{URL::to($newitem->cat1url.'/'.$newitem->laurl.'.html')}}">
                                            {{$newitem->latitle}}
                                        </a></h4>

                                    <div class="entry-format">
                                        <div class="cell-date">
                                            <em> </em><em> </em>
                                            <time datetime="{{date('Y-m-d',strtotime($newitem->created_at))}}"
                                                  title="{{date('Y-m-d',strtotime($newitem->created_at))}}">
                                                <strong>{{date('d',strtotime($newitem->created_at))}}</strong>
                                                <span>{{date('M',strtotime($newitem->created_at))}}</span>
                                            </time>
                                        </div>
                                    </div>
                                </div>

                                <div class="entry-content">
                                    <p>{{nl2br($newitem->lashortinfo)}} ...</p>
                                </div>
                            </figcaption>

                        </li>
                        {{--*/ $i +=1 /*--}}
                    @if($i%2==0 && $i<$countnews)
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
</div>
<div class="widgetcol col-xs-4">
    <div class="start_newsbottom">
        <div class="widget-header">
            <h3>Khuyến mãi</h3>
        </div>
        {{--*/ $news = Vproduct::getLastestTinKhuyenMai() /*--}}
        @if(count($news) > 0 )
        <ul>
            @foreach($news as $newitem)
            <li class="col date-type-big mini">
                <figure>
                    <div class="imgHolder">
                        <a href="{{URL::to($newitem->cat1url.'/'.$newitem->laurl.'.html')}}">
                            <img src="{{URL::to('/uploads/thumbnails/product/'.$newitem->laimage)}}">
                        </a>
                    </div>
                    <figcaption>
                        <div class="entry-header">
                            <h4 class="entry-title"><a href="{{URL::to($newitem->cat1url.'/'.$newitem->laurl.'.html')}}">{{$newitem->latitle}}</a></h4>

                            <div class="entry-format">
                                <div class="cell-date">
                                    <em> </em><em> </em>
                                    <time datetime="{{date('Y-m-d',strtotime($newitem->created_at))}}"
                                          title="{{date('Y-m-d',strtotime($newitem->created_at))}}">
                                        <strong>{{date('d',strtotime($newitem->created_at))}}</strong>
                                        <span>{{date('M',strtotime($newitem->created_at))}}</span>
                                    </time>
                                </div>
                            </div>
                        </div>

                        <div class="entry-content">
                            <p>{{nl2br($newitem->lashortinfo)}} ...</p>
                        </div>
                    </figcaption>
                </figure>
            </li>
            @endforeach
        </ul>
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