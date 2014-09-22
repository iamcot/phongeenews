@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div id="cartpage" class="container-fluid" data-ng-controller="step2ctrl">
    <div class="row-fluid wrap">
        @if(Session::has('cart'))
        @include(Config::get('shop.theme').'/cart/stepbar')
        <div class="col-xs-12 col-md-8 loginbox">
            {{Form::open(
                array(
                    'url'=> 'cart/savestep2'
                )
            )}}
            <p class="cartblock"><b>ĐỊA CHỈ HÓA ĐƠN</b></p>
            <div class="radio ">
                <label class="">
                    <input data-ng-click="changebilladdrtype(0)" type="radio" name="typeaddress" value="old" ng-checked="billaddress.type==0"> Sử dụng địa chỉ có sẵn.
                </label>
            </div>
            <div ng-if="billaddress.type==0">
                <div class="form-group col-xs-12">
                    <select name="address" class="form-control no-radius-right">
                        <option value="0">Chọn địa chỉ</option>
                    </select>
                </div>
            </div>
            <div class="clear"></div>
            <div class="radio ">
                <label class="">
                    <input data-ng-click="changebilladdrtype(1)"  type="radio" name="typeaddress" value="new"  ng-checked="billaddress.type==1"> Sử dụng địa chỉ mới.
                </label>
            </div>
            <div id="newaddress"  ng-if="billaddress.type==1">
                <div class="form-group col-xs-12 ">
                    <div class="input-group ">
                        <i class="fa fa-user textsmall logininputicon" style="margin-left: -15px;"></i>
                        <input type="email" class="form-control " name="regname"
                               placeholder="Họ và tên *">
                        <div class="input-group-btn" >
                            <input type="hidden" name="newaddrtitle" value="">
                            <button type="button" id="titledropdown"
                                    class="btn btn-default dropdown-toggle"
                                    data-toggle="dropdown" ><span id="newaddrtitle">Danh xưng</span> <span
                                    class="caret"></span></button>
                            <ul class="dropdown-menu  dropdown-menu-right" role="menu">
                                <li><a href="javascript:settitle('m','Ông','newaddrtitle')">Ông</a></li>
                                <li><a href="javascript:settitle('f','Bà','newaddrtitle')">Bà</a></li>
                            </ul>
                        </div>
                        <!-- /btn-group -->

                    </div>
                </div>
                <div class="form-group col-xs-12 " style="overflow: hidden;">
                    <i class="fa fa-phone textsmall logininputicon"></i>
                    <input type="email" class="form-control " name="regemail"
                           placeholder="Số điện thoại">
                </div>
                <div class="form-group col-xs-12 " style="overflow: hidden;">
                    <i class="fa fa-map-marker textsmall logininputicon"></i>
                    <input type="email" class="form-control " name="regemail"
                           placeholder="Địa chỉ">
                </div>
            </div>
            <p class="cartblock"><b>ĐỊA CHỈ GIAO HÀNG</b></p>
            <div class="checkbox ">
                <label class="">
                    <input data-ng-click="differenceaddress = !differenceaddress" ng-checked="differenceaddress" type="checkbox" name="typeaddress" value="new"> Địa chỉ giao hàng khác với địa chỉ hóa đơn. <br>
                    <i class="textsmall">
                       (Trường hợp tặng quà, nhờ người khác nhận giùm ... )</i>
                </label>
            </div>
            <div ng-if="differenceaddress">
                <div class="radio ">
                    <label class="">
                        <input data-ng-click="changedeliaddrtype(0)" type="radio" name="typedeliaddress" value="old" ng-checked="deliaddress.type==0"> Sử dụng địa chỉ có sẵn.
                    </label>
                </div>
                <div ng-show="deliaddress.type==0">
                    <div class="form-group col-xs-12">
                        <select name="address" class="form-control no-radius-right">
                            <option value="0">Chọn địa chỉ</option>
                        </select>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="radio ">
                    <label class="">
                        <input data-ng-click="changedeliaddrtype(1)"  type="radio" name="typedeliaddress" value="new"  ng-checked="deliaddress.type==1"> Sử dụng địa chỉ mới.
                    </label>
                </div>
                <div  ng-show="deliaddress.type==1">
                    <div class="form-group col-xs-12 ">
                        <div class="input-group ">
                            <i class="fa fa-user textsmall logininputicon" style="margin-left: -15px;"></i>
                            <input type="email" class="form-control " name="regname"
                                   placeholder="Họ và tên *">
                            <div class="input-group-btn" >
                                <input type="hidden" name="newdeliaddrtitle" value="">
                                <button type="button" id="titledropdown"
                                        class="btn btn-default dropdown-toggle"
                                        data-toggle="dropdown" ><span id="newdeliaddrtitle">Danh xưng</span> <span
                                        class="caret"></span></button>
                                <ul class="dropdown-menu  dropdown-menu-right" role="menu">
                                    <li><a href="javascript:settitle('m','Ông','newdeliaddrtitle')">Ông</a></li>
                                    <li><a href="javascript:settitle('f','Bà','newdeliaddrtitle')">Bà</a></li>
                                </ul>
                            </div>
                            <!-- /btn-group -->

                        </div>
                    </div>
                    <div class="form-group col-xs-12 " style="overflow: hidden;">
                        <i class="fa fa-phone textsmall logininputicon"></i>
                        <input type="email" class="form-control " name="regemail"
                               placeholder="Số điện thoại">
                    </div>
                    <div class="form-group col-xs-12 " style="overflow: hidden;">
                        <i class="fa fa-map-marker textsmall logininputicon"></i>
                        <input type="email" class="form-control " name="regemail"
                               placeholder="Địa chỉ">
                    </div>
                </div>
            </div>
            <div class="no-padding col-xs-12">
            <div class=" col-xs-12 col-sm-6">
                <button class="btn bg-color-red col-xs-12"><i class="fa fa-arrow-circle-right"></i> Giao đến địa chỉ này</button>
                </div>
            <div class=" col-xs-12  col-sm-6">
                <a class="btn btn-black col-xs-12" href="{{URL::to('cart')}}"><i class="fa fa-reply"></i> Quay lại</a>
            </div>
                  <div class="clear"></div>
            </div>
            <br><br>
            {{Form::close()}}
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
                <div class="panel-footer text-10 ">
                    <table class="table table-responsive sumcart stepsum" style="margin-bottom: 0">
                        <tr>
                            <td><strong>Tổng giá trị tạm tính: </strong></td>
                            <td class="text-right">
                                <strong>{{number_format(($sum-$giamvoucher),0,',','.')}} VNĐ
                            </strong></td>
                        </tr>
                        </table>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        @endif
    </div>
</div>
@stop
@section('jscript')
<script>
function step2ctrl($scope){
    $scope.billaddress = {
        type:1//new
    };
    $scope.deliaddress = {
        type:1//new
    };
    $scope.differenceaddress = false;
    $scope.changebilladdrtype = function(type){
        $scope.billaddress.type = type;
    }
    $scope.changedeliaddrtype = function(type){
        $scope.deliaddress.type = type;
    }
}
function settitle(title,text,id){
    $("input[name=id]").val(title);
    $("#"+id).text(text);
}
</script>
@stop

