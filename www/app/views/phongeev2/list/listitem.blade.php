<li class="col col-sm-3 col-xs-12 listpage" itemprop="itemListElement" itemscope itemtype="http://schema.org/Product">
    <div class="widget-product ">
        <div class="tophover">
    @if($list->laimage !='')
        <a class="imgHolder" href="{{URL::to($list->cat1url.'/'.$list->laurl.'.html')}}">
            <img src="{{URL::to('/uploads/medium/product/'.$list->laimage)}}">
                <a href="" class="col-xs-6 favor"><span>Yêu thích</span></a>
                <a href="" class="col-xs-6 addcart">Thêm vào giỏ</a>
        </a>
        @endif
        </div>
        <div class="widgetinfo">
         <a class="buttoncart" href="{{URL::to('/uploads/medium/product')}}/@{{list.laimage}}"></a>
        <p class="list-item-title" title="{{$list->latitle}}"><strong>{{$list->latitle}}</strong></p>
        <p class="list-item-price">{{number_format($list->laprice,0,',','.')}} VNĐ (cửa hàng)</p>
        <p class="list-item-price txt-color-red">{{number_format($list->laprice,0,',','.')}} VNĐ (online)</p>
        </div>
    </div>

</li>