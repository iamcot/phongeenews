{{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
        @foreach($categories as $cate)
            @if($cate['isnews'] == 1)
                    {{--*/ $newtree = $cate['children']/*--}}
            @endif
        @endforeach
<div class="@if(isset($newtree)) col-xs-8 @else col-xs-12 @endif border-right newsroot">
    <ul>
    @foreach($lists as $news)
      <li>
          <article class="list-news" role="article">

              <div class="entry-media">
                  <div class="imgHolder">
                      <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">
                          @if($news->laimage!='')
                          <img src="{{URL::to('/uploads/product/'.$news->laimage)}}" alt="">
                          @elseif($news->youtubeid!='')
                          <img src="http://img.youtube.com/vi/{{$news->youtubeid}}/0.jpg" alt="">
                          <a class="videoplay" href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}"></a>

                          @endif
                      </a>
                  </div>
                  <div class="sep hbar"> </div>
              </div>

              <div class="entry-main">

                  <div class="entry-header">
                      <h3 class="entry-title">
                          <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">{{$news->latitle}}</a>
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
                      <p>{{$news->lashortinfo}}</p>

                  </div>

                  <div class="entry-meta">
                      <div class="entry-meta-wrapper clearfix">

                          <a href="#" class="label label-default">{{$news->laview}}</a>

                          <a href="#" class="label label-default" rel="category">{{$news->cat1name}}</a>
                      </div>

                          <div class="readmore right">
                              <a href="#" class="linkbutton">Read More</a>
                              <a href="#" class="label label-primary">•••</a>
                          </div>



                  </div>

              </div><!-- end entry-main -->

          </article>
      </li>
    @endforeach
    </ul>
    {{$lists->links()}}
</div>
@if(isset($newtree))
<div class="col-xs-4">
    <div class="sidebar-widget">
        <h4>Chuyên mục</h4>
        

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
@endif
