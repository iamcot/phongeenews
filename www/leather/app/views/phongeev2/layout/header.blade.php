<div id="top-menu" class="padding-top-5 hidden-print">
    <ul id="top-cat" class="list-inline col-xs-12 col-md-5">
        {{--*/ $active = 'leather'; /*--}}
        @foreach(Config::get('shop.topnav') as $cat)
        <li class="col"><a href="{{$cat['url']}}" class="{{($cat['id']==$active)?'active':''}}">{{$cat['title']}}</a>
        </li>
        @endforeach
    </ul>
    <div class="col col-xs-12 col-md-6 pull-right" style="padding-right:3%;">
        <div class="top-function pull-right margin-left-15">
            <a data-toggle="dropdown" href="#">TÀI KHOẢN VÀ ĐƠN HÀNG</a>
            <span class="caret"></span>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                @foreach(Config::get('shop.accountmenu') as $menu)
                <li><a href="{{$menu['url']}}">{{$menu['title']}}</a></li>
                @endforeach
            </ul>
        </div>
        <div class="top-function pull-right margin-left-15">
            <a data-toggle="dropdown" href="#">HƯỚNG DẪN MUA HÀNG</a>
            <span class="caret"></span>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                @foreach(Config::get('shop.accountmenu') as $menu)
                <li><a href="{{$menu['url']}}">{{$menu['title']}}</a></li>
                @endforeach
            </ul>
        </div>
        <div class="top-function pull-right margin-left-15">
            <a data-toggle="dropdown" href="#">CHĂM SÓC KHÁCH HÀNG</a>
            <span class="caret"></span>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                @foreach(Config::get('shop.accountmenu') as $menu)
                <li><a href="{{$menu['url']}}">{{$menu['title']}}</a></li>
                @endforeach
            </ul>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div id="top-header" role="banner" class="">
    <div class="mycontainer fold">

        <div id="logo">
            <a href="{{URL::to('/')}}">
                <img src="{{URL::to('/public/logo.png')}}">
            </a>
        </div>
        <a id="mobilecattoggle"" href="javascript:showmenuheader()" onmouseover="showmenuheader()"></a>

        <div class="header-tools hidden-print">
            <div id="cart" class="">
                <div class="cartinfo pull-right">
                    <div id="searchform" class="pull-right">
                        {{ Form::open(array(
                        'url' => 'search',
                        'method'=>'get',

                        )) }}
                        <a class="fa fa-search" id="searchbutton" style="z-index: 100;font-size: 15pt;padding-top: 3px;" href="javascript:showSearch()"></a>
                        <input type="text" id="s" name="s" placeholder="Tìm kiếm..." style="z-index: 99;display: none;">
                        {{Form::close()}}
                    </div>
                    <div style="float:left;" id="headerphone">
                        <span class="phoneicon"></span>
                        <a class=""> <b>{{Config::get('shop.phone')}}</b></a>
                    </div>
                    <a id="catoutter" href="javascript:showflybasket()">
                        <span class="carticon txt-color-red"></span>
                        <span class="badge carttext">
                            {{--*/ $sumcart = Orders::getSumCartItem()/*--}}
                            {{isset($sumcart)?$sumcart:0}}
                        </span>
                    </a>
                </div>


            </div>


        </div>
        <!-- end header tools -->

        <div class="nav-outer ">
            <div class="navbar-header">

            </div>
            <nav class="collapse navbar-collapse bs-navbar-collapse pull-right no-padding">
                @include(Config::get('shop.theme').'/layout/topnav')
            </nav>

        </div>


    </div>
    <!-- end container -->
    <div class="clearfix"></div>
</div>
@if(Session::has('cart'))
<div id="basketflybox">
    <div class="overlay"></div>
    <div class="contentbasket">
        {{--<span class="flybutton glyphicon glyphicon-eject " style="left:180px;top:-15px;color:#fff"></span>--}}
        <div class="col-xs-8" style=" padding:20px;background: #fff;">
        <p><a href="" ><img src="{{URL::to('public/logo.png')}}" style="width: 100px"></a></p>
        <table class="table flybasketcontent">
                    {{--*/ $sumprice = 0 /*--}}
                    @foreach(Session::get('cart') as $item)
                    <tr>
                        <td class="col-xs-2 no-padding">
                        @if($item['laimage'])
                            <img style="100%" src="{{URL::to('uploads/medium/product/'.$item['laimage'])}}">
                            @endif
                        </td>
                        <td class="col-xs-6 text-left">

                        <strong>{{$item['latitle']}}</strong><br>
                            {{$item['variantname']}}
                        </td>
                        <td class="text-right col-xs-4">{{$item['amount']}} x {{number_format( $item['laprice'],0,',','.')}}
                        </td>
                    </tr>
                    {{--*/ $sumprice += ($item['amount'] * $item['laprice']) /*--}}
                    @endforeach

                    <tr>
                        <td colspan="3" class="text-right">
                            TỔNG: <b>{{number_format($sumprice,'0',',','.')}}</b>
                        </td>
                    </tr>
                </table>
        </div>
        <div class="col-xs-4 flybasketfunction" style="vertical-align: middle">

        <p style="margin-top: 30px;text-align: center;font-size: 10pt;">Cảm ơn bạn đã đặt hàng tại {{ Config::get('shop.title') }}</p>
        <a href="javascript:hideflybasket()" style="position: absolute;top:10px; right:10px;"><i class="glyphicon glyphicon-remove"></i></a>
            <a href="{{URL::to('/cart/')}}" style="width: 90%;margin-top: 20px;" class="details-cart-button addcart">Thanh toán</a>
            <a href="javascript:hideflybasket()" style="width: 90%;margin-top: 5px; text-align: center" class="details-cart-button cancel">Tiếp tục mua hàng</a>
        </div>

    </div>
</div>
@endif