<div class="col-sm-3 col-md-3 widget-product " itemprop="itemListElement" itemscope itemtype="http://schema.org/Product">
        @if($list->laimage !='')
        <a href="{{URL::to($list->cat1url.'/'.$list->laurl.'.html')}}">
            <img src="{{URL::to('/uploads/thumbnails/product/'.$list->laimage)}}">
        </a>
        @endif
        <figcaption>
            <h4 class="item-title">
                <a href="{{URL::to($list->cat1url.'/'.$list->laurl.'.html')}}">{{$list->latitle}}
                </a></h4>
            @if($list->laoldprice > $list->laprice)
            <del>{{number_format($list->laoldprice,0,',','.') }}</del>
            @endif
            <p class="current-price">{{number_format($list->laprice,0,',','.')}}</p>
        </figcaption>
</div>