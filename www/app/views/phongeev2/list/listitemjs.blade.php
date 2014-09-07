<li ng-repeat="list in lists.data"
    class="col col-sm-3 col-xs-6 listpage" itemprop="itemListElement" itemscope
    itemtype="http://schema.org/Product">
    <div class="widget-product ">
        <div class="tophover">
            <a class="imgHolder"
               href="{{URL::to('/')}}/@{{list.cat1url+'/'+list.laurl+'.html'}}">
                <img
                    src="{{URL::to('/uploads/medium/product')}}/@{{list.laimage}}">
                <a href="" class="col-xs-6 favor"><span>Yêu thích</span></a>
                <a href="" class="col-xs-6 addcart">Thêm vào giỏ</a>
            </a>
        </div>
        <div class="widgetinfo">
            <a class="buttoncart" href="{{URL::to('/')}}/@{{list.cat1url+'/'+list.laurl+'.html'}}"></a>

            <p class="list-item-title"><strong>@{{list.latitle}}</strong></p>
            <p class="list-item-price">@{{list.laprice}} VNĐ (cửa hàng)</p>
            <p class="list-item-price txt-color-red">@{{list.laprice}} VNĐ
                                                     (online)
            </p>
        </div>
    </div>
</li>

