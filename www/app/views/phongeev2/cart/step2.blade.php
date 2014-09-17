@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div id="cartpage" class="container-fluid">
    <div class="row-fluid wrap">
        @if(Session::has('cart'))
        <div class="col-xs-12 col-md-8"></div>
        <div class="col-xs-12 col-md-4">
            <div class="panel  panel-default">
                <div class="panel-heading">
                    THÔNG TIN ĐƠN HÀNG
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
                    <table class="table table-responsive sumcart">
                        {{--*/ $sumkhoiluong=0;$sum=0;/*--}}
                        @foreach(Session::get('cart') as $cart)
                        <tr>
                            <td>
                                <a href="{{URL::to($cart['caturl'].'/'.$cart['producturl'].'.html')}}" target="_BLANK"
                                   class="textgray">
                                    {{$cart['amount']}} x {{$cart['latitle'].'</a>
                                '.$cart['variantname']}}
                            </td>
                            <td class="text-right">{{number_format($cart['amount']*$cart['laprice'],0,',','.')}}</td>
                        </tr>
                        {{--*/ $sumkhoiluong += ($cart['amount']*$cart['lakhoiluong']) /*--}}
                        {{--*/ $sum += ($cart['amount']*$cart['laprice']) /*--}}
                        @endforeach
                        <tr>
                            <td class="">Giá Sản phẩm</td>
                            <td class="text-right">{{number_format($sum,0,',','.')}} VNĐ</td>
                        </tr>
                        <tr>
                            <td class="">Phiếu giảm giá

                                @if($voucher != null )
                                ( <strong>{{$voucher['id']}}</strong>
                                -{{number_format($voucher['value'],0,',','.')}}{{(($voucher['type']=='percent')?'%':'')}}
                                )
                                <a href="{{URL::to('cart/delvoucher')}}" title="Xóa voucher này"><span
                                        class="glyphicon glyphicon-remove-sign"></span></a>
                                @endif
                            </td>
                            <td class="text-right">
                                -{{number_format($giamvoucher,0,',','.')}} VNĐ
                            </td>
                        </tr>
                        <tr>
                            <td class="">Phí vận chuyển (<strong>{{number_format($sumkhoiluong,0,',','.')}}</strong>
                                g)<br>
                                <em id="shippingtime"></em></td>
                            <td class="text-right" id="feeshippingdisplay"></td>
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

