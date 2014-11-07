<div class="col-xs-12 col-md-8 newsroot pull-right">
    <ul>
    @foreach($lists as $news)
      <li>
          <article class="list-news" role="article">
              <div class="entry-main">
                  <div class="entry-header">
                      <h3 class="entry-title">
                          <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">{{$news->latitle}}</a>
                      </h3>
                      <span>Ngày đăng: {{date('d/m/Y H:i',strtotime($news->created_at))}}</span>
                  </div>
                  <div class="clear"></div>
                  <div class="entry-media">
                      <div class="imgHolder">
                          <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">
                              <img src="{{URL::to('/uploads/product/'.$news->laimage)}}" alt="">                                                    </a>
                      </div>
                  </div>
                  <div class="entry-content">
                      <p>{{$news->lashortinfo}} …</p>
                  </div>
                  <div class="entry-meta">
                          <div class="readmore">
                              <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}" class="linkbutton bg-color-red">Xem thêm</a>
                          </div>
                  </div>

              </div><!-- end entry-main -->

          </article>
      </li>
    @endforeach
    </ul>
    {{$lists->links()}}
</div>
<div class="col-xs-12 col-md-4">
    @include(Config::get('shop.theme').'/list/sidebarnews')
</div>
<div class="clearfix"></div>


