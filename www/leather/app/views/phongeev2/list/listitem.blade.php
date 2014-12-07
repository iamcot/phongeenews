<li class="col col-sm-3 col-xs-6 listpage" itemprop="itemListElement" itemscope itemtype="http://schema.org/Product">
    <div class="widget-product ">
        <div class="tophover">
        <a class="imgHolder" href="{{URL::to($list->cat1url.'/'.$list->laurl.'.html')}}">
        @if($list->laimage =='') {{--*/ $list->laimage=URL::to('public/noimage.png'); /*--}}
        @else
        {{--*/ $list->laimage = URL::to('/uploads/medium/product/'.$list->laimage)/*--}}
        @endif
            <img src="{{$list->laimage}}" class="image1">
            <img src="{{($list->laimage2!='')?URL::to('/uploads/medium/product/'.$list->laimage2):$list->laimage}}" class="image2">
                <a href="" class="col-xs-6 favor"><span>Yêu thích</span></a>
                <a href="" class="col-xs-6 addcart">Thêm vào giỏ</a>
        </a>
        </div>
        <div class="widgetinfo">
         <a class="buttoncart" href="{{URL::to($list->cat1url.'/'.$list->laurl.'.html')}}"></a>
        <p class="list-item-title" title="{{$list->latitle}}"><strong>{{$list->latitle}}</strong></p>
        <p class="list-item-price">{{number_format($list->laprice,0,',','.')}} VNĐ (cửa hàng)</p>
        <p class="list-item-price txt-color-red">{{number_format($list->laprice,0,',','.')}} VNĐ (online)</p>
        </div>
    </div>

</li>