@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
{{--*/ $news = $oProduct /*--}}
<div class="mycontainer wrap">
<div class="col-xs-12 col-md-8 pull-right detais-news">
            <article class="" role="article">

                <div class="entry-main">

                    <div class="entry-header">
                        <h3 class="entry-title">
                            <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">{{$news->latitle}}</a>
                            <div class="fb-like" data-href="{{Request::url()}}" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>

                        </h3>
                        <span>Ngày đăng: {{date('d/m/Y H:i',strtotime($news->created_at))}}</span>

                    </div>
                    @if($news->laimage!='')
                    <div class="entry-media">
                        <div class="imgHolder">
                            <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">
                                <img src="{{URL::to('/uploads/product/'.$news->laimage)}}" alt="">                                                    </a>
                        </div>
                    </div>
                    @endif
                    <div class="entry-content">
                    {{str_replace('\\','',$news->lainfo)}}

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
<div class="col-xs-12 col-md-4">
    @include(Config::get('shop.theme').'/list/sidebarnews')
</div>

@stop