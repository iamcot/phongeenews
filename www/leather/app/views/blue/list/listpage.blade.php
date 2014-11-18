@if(count($lists) > 0)
    {{--*/ $news = $lists[0] /*--}}
@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div class="col-xs-12 border-right detais-news">

    <article class="" role="article">
        @if($news->laimage!='')
        <div class="entry-media">
            <div class="imgHolder">
                <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">
                    <img src="{{URL::to('/uploads/product/'.$news->laimage)}}" alt="">                                                    </a>
            </div>
            <div class="sep hbar"> </div>
        </div>
        @endif
        <div class="entry-main">

            <div class="entry-header">
                <h3 class="entry-title">
                    <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">{{$news->latitle}}</a>
                    <br>
                    <div class="fb-like" data-href="{{Request::url()}}" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>

                </h3>
                <div class="cell-date left">
                    <em> </em><em> </em>
                    <time datetime="{{date('Y-m-d',strtotime($news->created_at))}}" title="{{date('Y-m-d',strtotime($news->created_at))}}">
                        <strong>{{date('d',strtotime($news->created_at))}}</strong>
                        <span>{{date('M',strtotime($news->created_at))}}</span>
                    </time>
                </div>

            </div>

            <div class="entry-content">
                {{$news->lainfo}}

            </div>

            <div class="entry-meta">
                <div class="entry-meta-wrapper clearfix">

                    <a href="#" class="label label-default">{{$news->laview}}</a>

                    <a href="#" class="label label-default" rel="category">{{$news->cat1name}}</a>
                </div>

                <div class="readmore right">

                </div>



            </div>
        </div><!-- end entry-main -->
        <div>
            <div class="fb-comments" data-width="100%" data-href="{{Request::url()}}" data-numposts="5" data-colorscheme="light"></div>

        </div>

    </article>

</div>
@stop
@endif