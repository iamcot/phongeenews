@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div id="cartpage" class="container-fluid" data-ng-controller="step3ctrl">
    <div class="row-fluid wrap">
        @if(Session::has('orderaddress'))
        @include(Config::get('shop.theme').'/cart/stepbar')
        <div class="col-xs-12 col-md-8">
            <p class="cartblock"><b>PHƯƠNG THỨC THANH TOÁN</b></p>
            <div class="col-xs-12">
                {{Form::open(
                array(
                'url'=> 'cart/savestep3',
                'method'=>'POST'
                )
                )}}
                <div class="radio ">
                    <label class="">
                        <input data-ng-click="changetypepayment(0)" type="radio" name="typepayment"
                               value="0" ng-checked="paymenttype==0">
                        <span class="tticon icon-cash pull-left step3icon"></span>
                        <span class=" pull-left">&nbsp;Thanh toán bằng tiền mặt</span>
                    </label>
                </div>
                <div class="clear"></div>
                <div class="radio ">
                    <label class="">
                        <input data-ng-click="changetypepayment(1)" type="radio" name="typepayment"
                               value="1" ng-checked="paymenttype==1">
                        <span class="tticon icon-ck pull-left step3icon"></span>
                        <span class=" pull-left">&nbsp;Chuyển khoản ATM</span>
                    </label>
                </div>
                <div id="infopayment1" class="col-xs-12" ng-if="paymenttype==1">
                    <div class="panel  panel-default">
                        <div class="panel-heading cartblock">
                            <b>THÔNG TIN TÀI KHOẢN PHONGEE COLOR</b>
                        </div>
                        <div class="panel-body">
                            <b>Vietcombank</b><br>
                            <b>Tên Tài khoản:</b> Cty CPTM Dịch vụ Nhất Phong<br>
                            <b>Số Tài khoản:</b> 1234567890
                            <hr>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <p class="cartblock"><b>YÊU CẦU TỪ NGƯỜI MUA</b></p>
            <div class="col-xs-12">
                <div class="checkbox " style="line-height: 20px;vertical-align: middle">
                    <label class="">
                        <input type="checkbox" name="requireinvole">
                        Yêu cầu xuất hóa đơn VAT cho đơn hàng này. <br>
                    </label>
                    <label> Ghi chú cho đơn hàng</label>
                    <textarea name="laordernote" rows=5 class="col-xs-12"></textarea>

                    <div class="clear"></div>
                </div>
            </div>
            <div class="" style="margin: 0 -15px;">
                <br>

                <div class=" col-xs-12 col-sm-6">
                    <button class="btn bg-color-red col-xs-12"><i class="fa fa-check"></i> Đặt mua
                    </button>
                </div>
                <div class=" col-xs-12  col-sm-6">
                    <a class="btn btn-black col-xs-12" href="{{URL::to('cart/step/2')}}"><i
                            class="fa fa-reply"></i> Quay lại</a>
                </div>
                <div class="clear"></div>
            </div>
            <br><br>
            {{Form::close()}}
        </div>
        <div class="col-xs-12 col-md-4">
            @include(Config::get('shop.theme').'/cart/stepsidebar')
        </div>
        <div class="clear"></div>
        @endif
    </div>
</div>
@stop
@section('jscript')
<script>
function step3ctrl($scope) {
    $scope.paymenttype = 0;
    $scope.changetypepayment = function (type) {
        $scope.paymenttype = type;
    }
}
</script>
@stop

