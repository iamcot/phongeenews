<li class="col-xs-6 col-md-3 " itemprop="itemListElement" itemscope itemtype="http://schema.org/Product">
    <div class="widget-product ">
    @if($list->laimage !='')
        <a class="imgHolder" href="{{URL::to($list->cat1url.'/'.$list->laurl.'.html')}}">
            <img src="{{URL::to('/uploads/medium/product/'.$list->laimage)}}">
        </a>
        @endif
        <div class="product-overlay"></div>
        <figcaption>
            <p>{{$list->latitle}}</p>
            <p class="current-price">{{number_format($list->laprice,0,',','.')}}</p>
            <p class="color-light">Available on Store</p>
            <a class="buttoncart" href="{{URL::to($list->cat1url.'/'.$list->laurl.'.html')}}">View Details</a>
        </figcaption>

    </div>
</li>