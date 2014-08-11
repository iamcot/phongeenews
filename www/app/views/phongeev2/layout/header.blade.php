<div id="top-menu" class="row-fluid  padding-top-5">
    <ul id="top-cat" class="list-inline col col-xs-6">
    @foreach(Config::get('shop.topnav') as $cat)
             <li class="col"><a href="{{$cat['url']}}">{{$cat['title']}}</a></li>
    @endforeach
    </ul>
    <div  class="col col-xs-6 pull-right" style="padding-right:45px;">
        <div class="top-function pull-right col-xs-4">
            <a data-toggle="dropdown" href="#">TÀI KHOẢN VÀ ĐƠN HÀNG</a>
            <span class="caret"></span>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                @foreach(Config::get('shop.accountmenu') as $menu)
                    <li><a href="{{$menu['url']}}">{{$menu['title']}}</a></li>
                @endforeach
            </ul>
        </div>
        <div class="top-function pull-right col-xs-4">
            <a data-toggle="dropdown" href="#">HƯỚNG DẪN MUA HÀNG</a>
            <span class="caret"></span>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                @foreach(Config::get('shop.accountmenu') as $menu)
                    <li><a href="{{$menu['url']}}">{{$menu['title']}}</a></li>
                @endforeach
            </ul>
        </div>
        <div class="top-function pull-right col-xs-4">
            <a data-toggle="dropdown" href="#">CHĂM SÓC KHÁCH HÀNG</a>
            <span class="caret"></span>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                @foreach(Config::get('shop.accountmenu') as $menu)
                    <li><a href="{{$menu['url']}}">{{$menu['title']}}</a></li>
                @endforeach
            </ul>
        </div>
    </div>
</div>
<div id="top-header" role="banner" class="row-fluid">
    <div class="mycontainer fold" >

        <div id="logo" class="col-xs-5 col-md-2">
            <a href="{{URL::to('/')}}">
                <img src="{{URL::to('/public/logo.png')}}">
            </a>
        </div>
        <div class="header-tools col-xs-12 col-md-5">

            <div id="searchform" class="col-xs-5">
                {{ Form::open(array(
                'url' => 'search',
                'method'=>'post',

                )) }}
                <a id="searchbutton"></a>
                <input type="text" id="s"  name="s" placeholder="Tìm sản phẩm">
                {{Form::close()}}
            </div>
              <div id="cart" class="col-xs-7">
                  <div class="cartinfo">
                            <span class="carticon"></span>
                          <a href="javascript:showflybasket()">
                               GIỎ HÀNG ({{isset($sumcart)?$sumcart:0}})
                          </a>
                      <span class="phoneicon"></span>
                      <a class=""> {{Config::get('shop.phone')}}</a>
                  </div>
                  @if(Session::has('cart'))
                  <div id="basketflybox">
                      <span class="flybutton glyphicon glyphicon-eject" style="right:10px"></span>
                      <table class="table flybasketcontent">
                          {{--*/ $sumprice = 0 /*--}}

                          @foreach(Session::get('cart') as $item)
                          <tr><td class="col-xs-8 text-left"><strong>{{$item['latitle']}}</strong> {{$item['variantname']}} x {{$item['amount']}}</td><td class="text-right"><span class="glyphicon glyphicon-usd"></span> {{number_format($item['amount'] * $item['laprice'],0,',','.')}}</td></tr>
                          {{--*/ $sumprice += ($item['amount'] * $item['laprice']) /*--}}
                          @endforeach

                          <tr><td colspan="2" class="text-right"><a href="{{URL::to('/cart/')}}">Thanh toán <span class="glyphicon glyphicon-play"></span></a></td></tr>
                      </table>
                  </div>
                  @endif

              </div>



        </div><!-- end header tools -->

        <div class="col-xs-12  col-md-5 nav-outer" style="">
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