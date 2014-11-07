@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div id="cartpage" class="container-fluid">
    <div class="row-fluid wrap">
        @if(Session::has('cart'))
        @include(Config::get('shop.theme').'/cart/stepbar')
        <div class="col-xs-12 col-md-8">
            <p class="cartblock"><b>ĐỊA CHỈ GIAO HÀNG</b></p>
        </div>
        <div class="col-xs-12 col-md-4">
            <div class="panel  panel-default">
                <div class="panel-heading padding-15">
                    <b>THÔNG TIN ĐƠN HÀNG</b>
                </div>
                <div class="panel-body">

                    {{--*/ $voucher = Session::get('voucher',null) /*--}}
                    {{--*/ $giamvoucher = 0 /*--}}
                    @if($voucher != null )
                    @if($voucher['type']=='percent')
                    {{--*/ $giamvoucher = $voucher['value']*$sum/100 /*--}}
                    @else
                    {{--*/ $giamvoucher = $voucher['value'] /*--}}
                    @endif
                    @endif
                    <table class="table table-responsive sumcart stepsum">
                        {{--*/ $sumkhoiluong=0;$sum=0;/*--}}
                        @foreach(Session::get('cart') as $cart)
                        {{--*/ $sumkhoiluong += ($cart['amount']*$cart['lakhoiluong']) /*--}}
                        {{--*/ $sum += ($cart['amount']*$cart['laprice']) /*--}}
                        @endforeach
                        <tr>
                            <td class=""><strong>Giá Sản phẩm</strong></td>
                            <td class="text-right">{{number_format($sum,0,',','.')}} VNĐ</td>
                        </tr>
                        @foreach(Session::get('cart') as $cart)
                        <tr>
                            <td>
                                <a href="{{URL::to($cart['caturl'].'/'.$cart['producturl'].'.html')}}" target="_BLANK"
                                   class="textgray">
                                    <b>{{$cart['amount']}}</b> x {{$cart['latitle'].'</a>
                                '.$cart['variantname']}}
                            </td>
                            <td class="text-right"><b>{{$cart['amount']}}</b> x {{number_format($cart['laprice'],0,',','.')}} VNĐ</td>
                        </tr>
                        @endforeach
                        <tr>
                            <td class=""><strong>Phiếu giảm giá</strong>

                                @if($voucher != null )
                                <br>( <strong>{{$voucher['id']}}</strong>
                                -{{number_format($voucher['value'],0,',','.')}}{{(($voucher['type']=='percent')?'%':'')}}
                                )
                                @endif
                            </td>
                            <td class="text-right">
                                -{{number_format($giamvoucher,0,',','.')}} VNĐ
                            </td>
                        </tr>
                        <tr>
                            <td class=""><strong>Phí vận chuyển</strong></td>
                            <td class="text-right" id="feeshippingdisplay">Miễn phí</td>
                        </tr>

                    </table>
                </div>
                <div class="panel-footer">
                    <strong>Tổng giá trị tạm tính: {{number_format(($sum-$giamvoucher),0,',','.')}} VNĐ</strong>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        @endif
    </div>
</div>
@stop

