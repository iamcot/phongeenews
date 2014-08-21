<div  class="mycontainer wrap widgetblock">
    <h1 class="text-center">
        Sản phẩm bán chạy
    </h1>

    <p class="text-center title-sub" >Cam kết mang đến những sản phẩm mới nhất và tốt nhất.</p>
    <div class="row-fluid widgetcontent">


        <ul class="grid row">
            <li ng-repeat="list in bestsell" ng-include="itemjs.html" class="col col-sm-3 col-xs-12 listpage" itemprop="itemListElement" itemscope itemtype="http://schema.org/Product">
            </li>
        </ul>
        <script type="text/ng-template" id="itemjs.html">
        <div class="widget-product ">
                       <div class="tophover">
                                      <a class="imgHolder" href="{{URL::to('/')}}@{{list.cat1url+'/'+list.laurl+'.html'}}">
            <img src="{{URL::to('/uploads/medium/product/')}}@{{list.laimage}}">
            <a href="" class="col-xs-6 favor"><span>Yêu thích</span></a>
        <a href="" class="col-xs-6 addcart">Thêm vào giỏ</a>
                                                         </a>
                                                         </div>
        <div class="widgetinfo">
                       <a class="buttoncart"></a>
                                    <p class="list-item-title"><strong>@{{list.latitle}}</strong></p>
        <p class="list-item-price">@{{list.laprice}} VNĐ (cửa hàng)</p>
        <p class="list-item-price txt-color-red">@{{list.laprice}} VNĐ (online)</p>
                                                                       </div>
        </div>
        </script>
        <div class="navigation  pull-right">
            <ul class="list-inline">
                <li><a href="" class="active">1</a></li>
                <li><a href="">2</a></li>
                <li><a href="">3</a></li>
                <li><a href=""><i class="fa fa-angle-right"></i></a></li>
            </ul>
        </div>
    </div>

</div>