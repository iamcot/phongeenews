<li class="col col-sm-3 col-xs-12 listpage" itemprop="itemListElement" itemscope itemtype="http://schema.org/Product">
    <div class="widget-product ">
    @if($list->laimage !='')
        <a class="imgHolder" href="{{URL::to($list->cat1url.'/'.$list->laurl.'.html')}}">
            <img src="{{URL::to('/uploads/medium/product/'.$list->laimage)}}">
        </a>
        @endif
        <div class="widgetinfo">
         <a class="buttoncart"></a>
        <p class="list-item-title"><strong>{{$list->latitle}}</strong></p>
        <p class="list-item-price">{{number_format($list->laprice,0,',','.')}} VNĐ (cửa hàng)</p>
        <p class="list-item-price txt-color-red">{{number_format($list->laprice,0,',','.')}} VNĐ (online)</p>
        </div>
    </div>

</li>