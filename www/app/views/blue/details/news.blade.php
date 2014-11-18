@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
{{--*/ $news = $oProduct /*--}}
<div class="col-xs-8 border-right detais-news">

            <article class="" role="article">
                @if($news->laimage!='' && $news->youtubeid =='')
                <div class="entry-media">
                    <div class="imgHolder">
                        <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">

                            <img src="{{URL::to('/uploads/product/'.$news->laimage)}}" alt="">
                        </a>
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
                        {{str_replace("[CLIP]",'<iframe width="100%" height="315" src="//www.youtube.com/embed/'.$news->youtubeid.'" frameborder="0" allowfullscreen></iframe>', $news->lainfo)}}

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
<div class="col-xs-4">
    <div class="sidebar-widget">
        <h4>Chuyên mục</h4>
        {{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
        @foreach($categories as $cate)
        @if($cate['laurl'] == 'tin-tuc')
        {{--*/ $newtree = $cate['children']/*--}}
        @endif
        @endforeach
        <ul>
            @foreach($newtree as $cat)
            <li>
                <a href="{{URL::to($cat['laurl'])}}">{{$cat['latitle']}}</a>
            </li>
            @endforeach
        </ul>
    </div>
    <div class="sidebar-widget">
        {{--*/ $hotnews = Vproduct::getHotNews()/*--}}
        <h4>Tin hot</h4>
        <ul>
            @foreach($hotnews as $news)
            <li>
                <figure>
                    <div class="imgHolder">
                        <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">
                            @if($news->laimage!='')
                            <img src="{{URL::to('/uploads/thumbnails/product/'.$news->laimage)}}" alt="">
                            @elseif($news->youtubeid!='')
                            <img src="http://img.youtube.com/vi/{{$news->youtubeid}}/1.jpg" alt="">
                            @endif
                        </a>
                    </div>
                    <figcaption>
                        <div class="entry-header">
                            <h4 class="entry-title">
                                <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">{{$news->latitle}}</a>
                            </h4>

                            <div class="entry-format">
                                <div class="post-format image-format"> </div>
                            </div>
                        </div>

                        <div class="entry-content">

                            <time datetime="{{date('Y-m-d',strtotime($news->created_at))}}" title="{{date('Y-m-d',strtotime($news->created_at))}}">
                                {{date('M d, Y',strtotime($news->created_at))}}
                            </time>

                        </div>
                    </figcaption>
                </figure>
            </li>
            @endforeach
        </ul>
    </div>
</div>

@stop