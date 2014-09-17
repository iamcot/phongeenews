@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
@if(Session::has('cart'))

<div id="cartpage" class="container-fluid">

    <div class="row-fluid wrap">
        {{--*/ $actionstatus = Session::get('actionstatus', 0) /*--}}
        <div id="notif" class="bg-danger row-fluid" style="padding:15px;display:{{(($actionstatus >= 20 && $actionstatus <= 29)?'block':'none')}}">
        @if($actionstatus >= 20 && $actionstatus <= 29)
        {{trans('error.'.$actionstatus)}}
        @endif
        </div>
        <table class="table table-responsive carttable">
            <thead>
            <tr>
                <th colspan="2">Sản phẩm trong giỏ</th>
                <th class="text-center">Số lượng</th>
                <th class="text-right">Đơn giá</th>
                <th class="text-right">Thành tiền</th>
            </tr>
            </thead>
            {{--*/ $sum = 0 /*--}}
            {{--*/ $sumkhoiluong = 0 /*--}}
            @foreach(Session::get('cart') as $cart)
            <tr>
                <td class="cartimg">{{HTML::image('/uploads/thumbnails/product/'.$cart['laimage'])}}</td>
                <td><a href="{{URL::to($cart['caturl'].'/'.$cart['producturl'].'.html')}}" target="_BLANK" class="textgray">{{$cart['latitle'].'</a>
                    '.$cart['variantname']}}
                </td>
                <td class="text-center"><a title="Tăng 1 sản phẩm" class="badge cartamountup" href="{{URL::to('cart/changeamout/'.$cart['product_id'].'/1')}}">+</a> {{$cart['amount']}} <a title="Giảm 1 sản phẩm"  href="{{URL::to('cart/changeamout/'.$cart['product_id'].'/0')}}" class="badge cartamountdown">-</a></td>
                <td class="text-right">{{number_format($cart['laprice'],0,',','.')}}</td>
                <td class="text-right">{{number_format($cart['amount']*$cart['laprice'],0,',','.')}}</td>
            </tr>
            {{--*/ $sumkhoiluong += ($cart['amount']*$cart['lakhoiluong']) /*--}}
            {{--*/ $sum += ($cart['amount']*$cart['laprice']) /*--}}
            @endforeach
<!--            <tr>-->
<!---->
<!--                <td class="text-right" colspan="2"></td>-->
<!--                <td style="width: 25%">-->
<!--                    <div class="input-group">-->
<!--                        <span class="input-group-addon">Tổng Klg (g)</span>-->
<!--                        <input type="text" class="form-control" placeholder="Tổng khối lượng hàng"-->
<!--                               name="showsumklg" value="{{$sumkhoiluong}}" onchange="checkProvinceFee()">-->
<!---->
<!--                    </div>-->
<!--                </td>-->
<!--                <td></td>-->
<!--                <td></td>-->
<!--                <td></td>-->
<!--            </tr>-->
        </table>
    </div>
    <div class="wrap cartblock">
        {{ Form::open(array(
        'url'=>'cart/addvoucher'
        ))}}
        <div class="col-xs-4">
            <div class="input-group ">
                <input type="text" class="form-control" placeholder="Mã Phiếu Giảm Giá" name="vouchercode">
                <span class="input-group-btn">
                <button class="btn bg-color-red" type="submit">Áp dụng</button>
                </span>
            </div>
        </div>
        <div class="text-right col-xs-8">
            <a href="{{URL::to('/')}}" class="btn btn-black"><i class="fa fa-home"></i> Tiếp tục mua hàng</a>
            <a class="btn btn-black"><i class="fa fa-trash-o"></i> Xóa giỏ hàng</a>
        </div>
        {{Form::close()}}
    </div>
    {{--*/ $voucher = Session::get('voucher',null) /*--}}
    {{--*/ $giamvoucher = 0 /*--}}
    @if($voucher != null )
        @if($voucher['type']=='percent')
        {{--*/ $giamvoucher = $voucher['value']*$sum/100 /*--}}
        @else
        {{--*/ $giamvoucher = $voucher['value'] /*--}}
        @endif
    @endif
    <div class="wrap ">
        <div class="row">
    <div class="col-xs-12 col-md-6 pull-right">

        <br>

        <div class="container-fluid">
            <h3 class="txt-color-red">Tổng giá trị đơn hàng</h3>
            <table class="table table-responsive sumcart">
                <tr>
                    <td class="sumcartheader">Giá Sản phẩm</td>
                    <td class="text-right">{{number_format($sum,0,',','.')}}  VNĐ</td>
                </tr>
                <tr>
                    <td class="sumcartheader">Phiếu giảm giá

                        @if($voucher != null )
                        ( <strong>{{$voucher['id']}}</strong>
                        -{{number_format($voucher['value'],0,',','.')}}{{(($voucher['type']=='percent')?'%':'')}} )
                        <a href="{{URL::to('cart/delvoucher')}}" title="Xóa voucher này"><span class="glyphicon glyphicon-remove-sign"></span></a>
                        @endif
                    </td>
                    <td class="text-right">
                        -{{number_format($giamvoucher,0,',','.')}} VNĐ
                    </td>
                </tr>
                <tr>
                    <td class="sumcartheader">*Phí vận chuyển (<strong>{{number_format($sumkhoiluong,0,',','.')}}</strong> g)<br>
                    <em id="shippingtime"></em></td>
                    <td class="text-right" id="feeshippingdisplay"></td>
                </tr>
                <tr>
                    <td class="sumcartheader"><strong>Tổng giá trị tạm tính</strong></td>
                    <td class="text-right"><strong
                            id="totalbill">{{number_format(($sum-$giamvoucher),0,',','.')}} VNĐ</strong></td>
                </tr>
            </table>
            <button onclick="checkout()" class="col-xs-12 btn bg-color-red"><span class="glyphicon glyphicon-shopping-cart"></span> Đặt mua & Thanh toán
            </button>
            <div class="clearfix"></div>
            <br>
            <br>
        </div>
    </div>
        </div>
    </div>
</div>

@section('jscript')
{{HTML::script('/src/jquery.validate.js')}}
<script>
    function checkShipping(select) {
        $("select[name=payment]").html('');
        $("select[name=orderprovince]").html('');
        if (select != 0) {
            $.ajax({
                url: "{{URL::to('cart/checkshipping')}}/" + select,
                type: "post",
                success: function (msg) {
                    var result = eval(msg);
                    $.each(result['payment'], function (index, pay) {
                        $("select[name=payment]").append("<option value='" + pay['id'] + "'>" + pay['value'] + "</option>");
                    });
//                        console.log();
                    if (result['province'].length > 0) {
                        if (result['province'].length > 1)
                            $("select[name=orderprovince]").html('<option value="0">Tỉnh/Thành Phố</option>');
                        $.each(result['province'], function (index, prov) {
                            $("select[name=orderprovince]").append("<option value='" + prov['id'] + "'>" + prov['title'] + "</option>");
                        });
                        $("select[name=orderdistrict]").val(0);
                        checkProvinceFee();
                    }
//                        if(result['enabledistrict']== 1) $("select[name=orderdistrict]").removeAttr("disabled");
//                        else  $("select[name=orderdistrict]").attr("disabled","disabled");
                }
            })
        }
    }
    function checkProvinceFee() {
        var province = $("select[name=orderprovince]").val();
        var klg = $("input[name=sumkhoiluong]").val();
        var payment = $("select[name=payment]").val();
        var shipping = $("select[name=shipping]").val();
        var district = $("select[name=orderdistrict]").val();
        var currentbill = "{{ $sum - $giamvoucher }}";
        $("#feeshippingdisplay").html("");
        $("#shippingtime").html("");
        $("#totalbill").html("");
        $("input[name=feeshipping]").val("");
        if(payment == 0 || shipping == 0){
            alert("Vui lòng chọn phương thức thanh toán và nhận hàng");
            return;
        }
        if (province != 0) {
            if(shipping == 'ship_hcm' && district == 0){
                return;
            }
            $("#feeshippingdisplay").addClass("ajaxload");


                $.ajax({
                    url: "{{URL::to('cart/checkfee')}}",
                    type: "post",
                    data: "province="+ province + "&klg=" + klg + "&shipping=" + shipping + "&payment=" + payment +"&district="+district+ "&token={{Session::get('_token')}}",
                    success: function (msg) {
                        var result = eval(msg);
                        if (result['status'] == 1) {
                            $("input[name=feeshipping]").val(result['feeshipping']);
                            $("#feeshippingdisplay").removeClass("ajaxload");
                            $("#feeshippingdisplay").html(result['feeshipping'].formatMoney(0, ',', '.'));
                            $("#shippingtime").html("Thời gian nhận hàng "+result['time']+" ngày");
                            $("#totalbill").html((parseInt(result['feeshipping']) + parseInt(currentbill)).formatMoney(0, ',', '.'));
                        }
                    }
                });
        }
    }
    Number.prototype.formatMoney = function (c, d, t) {
        var n = this,
            c = isNaN(c = Math.abs(c)) ? 2 : c,
            d = d == undefined ? "." : d,
            t = t == undefined ? "," : t,
            s = n < 0 ? "-" : "",
            i = parseInt(n = Math.abs(+n || 0).toFixed(c)) + "",
            j = (j = i.length) > 3 ? j % 3 : 0;
        return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
    };
    function checkout(){
        if($("select[name=shipping]").val()==0){
            $("#notif").html("Chưa chọn hình thức ship hàng").show();
            $(window).scrollTop(0);
            return;
        }
        if($("select[name=orderprovince]").val()==0){
            $("#notif").html("Chưa chọn tỉnh").show();
            $(window).scrollTop(0);
            return;
        }
        if($("select[name=orderdistrict]").val()==0 && $("select[name=shipping]").val()=="ship_hcm"){
            $("#notif").html("Chưa quận trong TP Hồ Chí Minh").show();
            $(window).scrollTop(0);
            return;
        }

        $("#formorderinfo").submit();
    }
    $(document).ready(function(){

        $('#formorderinfo').validate(
            {
                rules: {
                    ordername: {
                        minlength: 2,
                        required: true
                    },
                    orderemail: {
                        email: true
                    },
                    ordertel: {
                        minlength: 10,
                        required: true
                    },
                    orderaddr: {
                        minlength: 5,
                        required: true
                    }
                },
                highlight: function(element) {
                    $(element).closest('.control-group').removeClass('success').addClass('error');
                },
                success: function(element) {
                    element
                        .text('OK!').addClass('valid')
                        .closest('.control-group').removeClass('error').addClass('success');
                }
            });
    }); // end document.ready
</script>
@stop
@else
<div id="cartpage" class="container-fluid">
    <p class="">Chưa có sản phẩm nào trong giỏ hàng</p>
    <br>
    @if(Session::has('lastorder'))
    <p>Đơn hàng gần nhất của bạn có mã là: <strong>{{Session::get('lastorder')}}</strong>  <a href="{{URL::to('/cart/old/'.Session::get('lastorder'))}}">Xem đơn hàng</a></p>
    @endif
</div>
    @endif
@stop