<div id="top-header" role="banner">
    <div class="mycontainer fold" >

        <div id="logo" class="col-xs-5 col-md-2">
            <a href="{{URL::to('/')}}">
                <img src="{{URL::to('/public/logo.png')}}">
            </a>
        </div>
        <div class="header-tools col-xs-6 col-md-3">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <ul class="socials col-xs-4 hidden-phone">
                <li><a class="facebook" href="#" target="_blank"></a></li>
                <li><a class="youtube" href="#" target="_blank"></a></li>
                <li><a class="rss" href="#" target="_blank"></a></li>
            </ul><!-- end socials -->
            <div id="searchform" class="col-xs-6">
                {{ Form::open(array(
                'url' => 'search',
                'method'=>'post',
                )) }}
                <input type="text" id="s" placeholder="" name="s">
                {{Form::close()}}
            </div><!-- end searchform -->



        </div><!-- end header tools -->

        <div class="col-xs-12  col-md-7  nav-outer">
            <div class="navbar-header">

            </div>
            <nav class="collapse navbar-collapse bs-navbar-collapse">
                @include(Config::get('shop.theme').'/layout/topnav')
            </nav>

        </div>


    </div><!-- end container -->
    <div class="clearfix"></div>
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