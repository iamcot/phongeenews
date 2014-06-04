<div class="clearfix"></div>
<div class="start_newsbottom">
    {{--*/ $news = Vproduct::getNewsBottom() /*--}}
    @if($news!=null)
    <div id="carousel-example-genericnews" class="carouselnews slide col-xs-8" data-ride="carousel">

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            {{--*/ $i = 0 /*--}}
            @foreach($news as $newitem)
            @if($i%2==0)
            <div class="item @if($i==0) active @endif">
                <ul>
                    @endif
                    <li class=" col-xs-6">
                        <span class="bottom-date">{{date('M.d',strtotime($newitem->created_at))}}</span>
                        <h3>{{$newitem->latitle}}</h3>

                        <p>{{nl2br($newitem->lashortinfo)}}</p>
                        <a href="#" class="readmore">Xem thêm</a>
                    </li>
                    {{--*/ $i +=1 /*--}}
                    @if($i%2==0)
                </ul>
            </div>
            @endif

            @endforeach
            </ul>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-genericnews" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#carousel-example-genericnews" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>
<div class="col-xs-4">
    <div class="finance">
        <div class="rt-block">
            <div class="module-title">
                <h2 class="title"><span>upcoming</span> tour dates</h2>
            </div>
            <div class="customfinance">
                <a href="#"><span>view details</span></a></div>
        </div>
    </div>
</div>
</div>
@section('jscript')
@parent
<script>
    $('.carouselnews').carousel({
        animation: 'slow'
    });
</script>

@stop
@endif
