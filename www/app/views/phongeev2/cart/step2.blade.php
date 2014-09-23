@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div id="cartpage" class="container-fluid" data-ng-controller="step2ctrl">
    <div class="row-fluid wrap">
        @if(Session::has('cart'))
        @include(Config::get('shop.theme').'/cart/stepbar')
        <div class="col-xs-12 col-md-8 loginbox no-padding">
            {{Form::open(
                array(
                    'url'=> 'cart/savestep2',
                    'method'=>'POST'
                )
            )}}
            <p class="cartblock"><b>ĐỊA CHỈ HÓA ĐƠN</b></p>
            <div class="col-xs-12">
            <div class="radio ">
                <label class="">
                    <input ng-disabled="disableoldaddress" data-ng-click="changebilladdrtype(0)" type="radio" name="typeaddress" value="old" ng-checked="billaddress.type==0"> Sử dụng địa chỉ có sẵn.
                </label>
            </div>
            <div ng-if="billaddress.type==0">
                <div class="form-group col-xs-12">
                    <select name="billid" class="form-control no-radius-right">
                        <option ng-repeat="address in oldaddress" value="@{{address.id}}" ng-selected="currentbillid == address.id">@{{address.name +"|" +address.tel + "|"+address.address}}</option>
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
                        <input type="text" class="form-control " name="newbillname"
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
                    <input type="text" class="form-control " name="newbilltel"
                           placeholder="Số điện thoại">
                </div>
                <div class="form-group col-xs-12 " style="overflow: hidden;">
                    <i class="fa fa-map-marker textsmall logininputicon"></i>
                    <input type="text" class="form-control " name="newbilladdress"
                           placeholder="Địa chỉ">
                </div>
            </div>
            </div>
            <p class="cartblock"><b>ĐỊA CHỈ GIAO HÀNG</b></p>
            <div class="col-xs-12">
            <div class="checkbox ">
                <label class="">
                    <input data-ng-click="differenceaddress = !differenceaddress" ng-checked="differenceaddress" type="checkbox" name="differenceaddress"> Địa chỉ giao hàng khác với địa chỉ hóa đơn. <br>
                    <i class="textsmall">
                       (Trường hợp tặng quà, nhờ người khác nhận giùm ... )</i>
                </label>
            </div>
            <div ng-if="differenceaddress">
                <div class="radio ">
                    <label class="">
                        <input  @{{disableoldaddress}} data-ng-click="changedeliaddrtype(0)" type="radio" name="typedeliaddress" value="old" ng-checked="deliaddress.type==0"> Sử dụng địa chỉ có sẵn.
                    </label>
                </div>
                <div ng-show="deliaddress.type==0">
                    <div class="form-group col-xs-12">
                        <select name="deliid" class="form-control no-radius-right">
                            <option ng-repeat="address in oldaddress" value="@{{address.id}}"  ng-selected="currentdeliid == address.id">@{{address.name +"|" +address.tel + "|"+address.address}}</option>
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
                            <input type="text" class="form-control " name="newdeliname"
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
                        <input type="text" class="form-control " name="newedelitel"
                               placeholder="Số điện thoại">
                    </div>
                    <div class="form-group col-xs-12 " style="overflow: hidden;">
                        <i class="fa fa-map-marker textsmall logininputicon"></i>
                        <input type="text" class="form-control " name="newdeliaddress"
                               placeholder="Địa chỉ">
                    </div>
                </div>
            </div>
            </div>
            <div class="" style="margin: 0 -15px;">
                <br>
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
            @include(Config::get('shop.theme').'/cart/stepsidebar')
        </div>
        <div class="clear"></div>
        @endif
    </div>
</div>
@stop
@section('jscript')
<script>
function step2ctrl($scope){
    $scope.oldaddress = {{OrderAddress::where('user_id',Auth::user()->id)->get()->toJson()}};
    $scope.billaddress = {
        type:1//new
    };
    $scope.deliaddress = {
        type:1//new
    };
    $scope.disableoldaddress = false;
    $scope.currentbillid = 0;
    $scope.currentdeliid = 0;
    @if(Session::has('orderaddress'))
    {{--*/ $orderaddr = Session::get('orderaddress'); /*--}}
    $scope.currentbillid = {{$orderaddr['billid']}};
    $scope.currentdeliid = {{$orderaddr['deliid']}};
    @endif

    if($scope.currentbillid == $scope.currentdeliid )
         $scope.differenceaddress = false;
    else   $scope.differenceaddress = true;

    if($scope.oldaddress.length > 0){
        $scope.billaddress.type = 0;
        $scope.deliaddress.type = 0;
    }
    else{
        $scope.disableoldaddress = true;
    }

    $scope.changebilladdrtype = function(type){
        $scope.billaddress.type = type;
    }
    $scope.changedeliaddrtype = function(type){
        $scope.deliaddress.type = type;
    }
}
function settitle(title,text,id){
    $("input[name="+id+"]").val(title);
    $("#"+id).text(text);
}
</script>
@stop

