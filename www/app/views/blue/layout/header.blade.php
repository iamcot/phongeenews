<div id="top-header">
    <div class="mycontainer fold">

        <p>Call us : Thịnh 0906 947 847</p>
        <div class="header-tools">

            <div id="searchform">
                {{ Form::open(array(
                'url' => 'search',
                'method'=>'post',
                )) }}
                    <input type="text" id="s" placeholder="Search .." name="s">
                {{Form::close()}}
            </div><!-- end searchform -->

            <ul class="socials">
                <li><a class="facebook" href="https://www.facebook.com/nhaccuphukien" target="_blank"></a></li>
                <li><a class="youtube" href="https://www.youtube.com/user/GuitarAndGears" target="_blank"></a></li>
<!--                <li><a class="twitter" href="#" target="_blank"></a></li>-->
<!--                <li><a class="gplus" href="#" target="_blank"></a></li>-->
<!--                <li><a class="dribble" href="#" target="_blank"></a></li>-->
<!--                <li><a class="vimeo" href="#" target="_blank"></a></li>-->
<!--                <li><a class="delicious" href="#" target="_blank"></a></li>-->
                <li><a class="rss" href="#" target="_blank"></a></li>
            </ul><!-- end socials -->

        </div><!-- end header tools -->

    </div><!-- end container -->
</div>
<header id="siteheader" role="banner" >
    <div class="mycontainer">
        <div id="logo" class="col-xs-3">
            <a href="{{URL::to('/')}}">
<!--                <img src="{{URL::to('/public/logo.png')}}">-->
                <h1 style="color:#fff">GuitarAndGears</h1>
            </a>
        </div>
        <div class="col-xs-9">
            @include(Config::get('shop.theme').'/layout/topnav')

        </div>
    </div>
<!--    <a title="Xem giỏ hàng" href="{{URL::to('/cart/')}}" class="bag pull-right col-sm-1 col-xs-4 hidden-print" >-->
<!--        {{--*/ $sumcart = Orders::getSumCartItem()/*--}}-->
<!--        @if($sumcart>0)-->
<!--        <span class="badge">{{$sumcart}}</span>-->
<!--        @endif-->
<!--    </a>-->
<!--    <div id="info" class="pull-right col-xs-12  col-sm-3 text-right hidden-xs nopaddingright hidden-print">-->
<!--        <span class="small"><span class="glyphicon glyphicon-phone-alt "> </span> Hotline: <strong>xxx.xxx.xxxx</strong></span>-->
<!--        <div class="cartinfo">-->
<!--            <span class="cartsum">@if(Session::has('uid'))-->
<!--            <a href="{{ URL::to('cart/uid/'.Session::get('uid')) }}">Các đơn hàng cũ</a>-->
<!--            @endif-->
<!--            </span> <br>-->
<!--            <span class="cartsum"><a href="javascript:showflybasket()"><strong class="text-success">{{$sumcart}}</strong> sản phẩm | <span class="glyphicon glyphicon-usd"></span> <strong  class="text-success">{{number_format(Orders::getSumPriceCart(),0,',','.')}}</strong></a></span>-->
<!--        </div>-->
<!--        @if(Session::has('cart'))-->
<!--        <div id="basketflybox">-->
<!--            <span class="flybutton glyphicon glyphicon-eject" style="right:10px"></span>-->
<!--            <table class="table flybasketcontent">-->
<!--                {{--*/ $sumprice = 0 /*--}}-->
<!---->
<!--                @foreach(Session::get('cart') as $item)-->
<!--                <tr><td class="col-xs-8 text-left"><strong>{{$item['latitle']}}</strong> {{$item['variantname']}} x {{$item['amount']}}</td><td class="text-right"><span class="glyphicon glyphicon-usd"></span> {{number_format($item['amount'] * $item['laprice'],0,',','.')}}</td></tr>-->
<!--                {{--*/ $sumprice += ($item['amount'] * $item['laprice']) /*--}}-->
<!--                @endforeach-->
<!---->
<!--                <tr><td colspan="2" class="text-right"><a href="{{URL::to('/cart/')}}">Thanh toán <span class="glyphicon glyphicon-play"></span></a></td></tr>-->
<!--            </table>-->
<!--        </div>-->
<!--        @endif-->
<!---->
<!--    </div>-->
</header>
@section('jscript')
<script>
    @if(Session::get('actionstatus', 0) == Config::get('actionstatus.cart_has_new'))

        $(document).ready(function() {
            $("#basketflybox").show();
        });

    @endif


         function showflybasket(){
             $("#basketflybox").show();
         }
         function hideflybasket(){
             $("#basketflybox").hide();
         }
         $('html').click(function() {
             $("#basketflybox").hide();
         });

         $('#basketflybox').click(function(event){
             event.stopPropagation();
         });
     </script>
@stop