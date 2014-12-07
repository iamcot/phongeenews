@extends('layout')
@section('body')
<div ng-controller="adminordercontroller">
<style>
.no-padding{
padding-left: 0 !important;
padding-right: 0 !important;
}
.autocomplete input{
    font-size: 1em!important;
    padding: 2px !important;
}
</style>
<script type="text/ng-template" id="myModalContent.html">
        <div class="modal-header">
            <h3 class="modal-title">Tạo đơn hàng mới</h3>
        </div>
        <div class="modal-body">
            <p ng-if="nofi" class="alert alert-info">@{{ nofi }}</p>
            <form role="form">
              <div class="form-group col-xs-6">
                <label for="ordername">Tên khách hàng</label>
                <input type="text" class="form-control" id="ordername" ng-model="order.name" placeholder="Tên khách hàng">
              </div>
              <div class="form-group col-xs-6">
                <label for="ordersdt">Số điện thoại</label>
                <input type="text" class="form-control" id="ordersdt" ng-model="order.sdt" placeholder="Số điện thoại">
              </div>
              <div class="form-group col-xs-6">
                <label for="orderthanhtoan">Thanh toán</label>
                <select class="form-control" id="orderthanhtoan" ng-model="order.lapayment">
                    <option value="pay_tienmat">Trực tiếp</option>
                    <option value="pay_cod">COD</option>
                    <option value="pay_chuyenkhoan">Chuyển khoản</option>
                </select>
              </div>
              <div class="form-group col-xs-6">
                <label for="orderloaihang">Loại hàng</label>
                 <select class="form-control" id="orderloaihang" ng-model="order.loaihang">
                    <option value="store">Cửa hàng</option>
                    <option value="ngoaigiao">Ngoại giao</option>
                    <option value="kygui">Ký gửi</option>
                    <option value="khac">Khác</option>
                </select>
              </div>
              <div class="form-group col-xs-12">
                <label for="orderaddress">Địa chỉ giao hàng</label>
                <input type="text" class="form-control" id="orderaddress" ng-model="order.address" placeholder="Địa chỉ giao hàng">
              </div>
              <div>
                 <div class="form-group col-xs-5">
                    <label for="newitemname">Tên Sản phẩm</label>
                    <autocomplete placeholder="" ng-model="newitem.title" data="searchresult" on-type="searchproduct"></autocomplete>
                  </div>
                 <div class="form-group col-xs-1 no-padding">
                    <label for="newitemid">ID</label>
                    <label class="form-control" >@{{ newitem.id }}</label>
                  </div>
                 <div class="form-group col-xs-1 no-padding">
                    <label for="newitemslg">S/lg</label>
                    <input type="text" class="form-control" id="newitemslg" ng-model="newitem.amount" placeholder="S/lg">
                  </div>
                 <div class="form-group col-xs-2 no-padding">
                    <label for="newitemgia">Giá</label>
                    <input type="text" class="form-control" id="newitemgia" ng-model="newitem.price" placeholder="Giá">
                  </div>
                 <div class="form-group col-xs-2 no-padding">
                    <label for="newitemthanhtien" >Thành tiền</label>
                    <label class="form-control" >@{{ newitem.amount * newitem.price }}</label>
                  </div>
                 <div class="form-group col-xs-1">
                 <label for="">&nbsp;</label>
                    <button class="btn btn-success pull-right" ng-click="addproduct()"><i class="glyphicon glyphicon-plus"></i></button>
                  </div>
                </div>
                              <div class="clear"></div>
                <div ng-repeat="item in order.orderitems">
                       <div class="form-group col-xs-5">
                          <input type="text" class="form-control" id="itemname@{{$index}}" ng-model="item.title" placeholder="Tên SP">
                        </div>
                       <div class="form-group col-xs-1 no-padding">
                          <label class="form-control" >@{{ item.id }}</label>
                        </div>
                       <div class="form-group col-xs-1 no-padding">
                          <input type="text" class="form-control" id="itemslg@{{$index}}" ng-model="item.amount" placeholder="S/lg">
                        </div>
                       <div class="form-group col-xs-2 no-padding">
                          <input type="text" class="form-control" id="itemgia@{{$index}}" ng-model="item.price" placeholder="Giá">
                        </div>
                       <div class="form-group col-xs-2 no-padding">
                          <label class="form-control" >@{{ item.amount * item.price }}</label>
                          </div>
                       <div class="form-group col-xs-1">
                          <button class="btn btn-dagger pull-right" ng-click="delproduct($index)"><i class="glyphicon glyphicon-remove-sign"></i></button>
                        </div>
                        </div>
                        <div class="clear"></div>
                    <div>
              </div>
              </form>
              <div class="clear"></div>
        </div>
        <div class="modal-footer">
        <div class="pull-left">Tổng tiền: <strong>@{{ ordertotal() }}</strong></div>
            <button class="btn btn-success" ng-click="ok()">Lưu</button>
            <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
        </div>
    </script>
<div class="col-xs-12">
    {{--*/ $adminNav = Config::get('admin.adminnav') /*--}}
    {{--*/ $strActCat = $adminNav[$actCat] /*--}}
    <h2><strong>{{trans('common.'.$strActCat['title'])}}</strong>
        <button class="btn btn-primary pull-right" ng-click="openformorder('new')"><i class="glyphicon glyphicon-bookmark"></i> Thêm đơn hàng</button>
</h2>
</div>

<div class="col-xs-12">
    <table class="table table-bordered table-responsive">
        <thead>
        <tr class="">
            <th>Mã đơn hàng</th>
            <th>Ngày đặt</th>
            <th>Tổng giá trị</th>
            <th>Khách hàng</th>
            <th>SĐT</th>
            <th>Địa chỉ</th>
            <th>Giao hàng</th>
            <th style="width: 185px">Mã Bưu phẩm</th>
            <th>Thanh toán</th>
            <th>Loại hàng</th>
            <th>Ghi chú</th>
            <th>Trạng thái</th>
            <th></th>
            <th>Cập nhật lúc</th>
        </tr>
        </thead>

    @foreach($oOrders as $order)
        <tr id="tr{{$order->id}}">
            {{--*/ $details = 'Sản phẩm: '.number_format($order->sumsanpham,0,',','.').'
            <br>Voucher: -'.number_format($order->giamvoucher,0,',','.').'
            <br>Phí ship: '.number_format($order->lafeeshipping,0,',','.') /*--}}
            {{--*/ $oShipping = Config::get('shop.shipping.'.$order->lashipping) /*--}}
            {{--*/ $oPayment = Config::get('shop.payment.'.$order->lapayment) /*--}}
            {{--*/ $oProvince = Config::get('shop.province.'.$order->laorderprovince) /*--}}
            {{--*/ $oDistrict = Config::get('shop.hcm_district.'.$order->laorderdistrict) /*--}}
            <td><a class="label label-primary" id="a{{$order->id}}" href="javascript:viewDetail({{$order->id}})"> {{$order->id}} </a>
            <a class="pull-right" href="" ng-click="openformorder({{$order->id}})"><i class="glyphicon glyphicon-pencil"></i></a>
            </td>
            <td>{{date("H:i d/m/Y",strtotime($order->created_at))}}</td>
            <td><a class="sumpopup" title="{{$details}}" data-placement="right">{{number_format($order->sumsanpham - $order->giamvoucher + $order->lafeeshipping,0,',','.')}}</a></td>
            <td>{{$order->laordername}}</td>
            <td>{{$order->laordertel}}</td>
            <td>{{$order->laorderaddr}},
                {{(($oDistrict!=null)?$oDistrict['title'].',':'')}}
                {{$oProvince['title']}}</td>
<!--            <td>{{$oShipping['value']}}</td>-->
            <td>{{$order->lashipping}}</td>
            <td><input style="width: 130px" id="trackid{{$order->id}}" value="{{$order->latrackid}}"><a class="glyphicon glyphicon-save" href="javascript:savetrackid({{$order->id}})"></a><a class="glyphicon glyphicon-eye-open" href="javascript:findtrackid({{$order->id}})"></a></td>
            <td>{{$oPayment['value']}}</td>
            <td>{{Config::get('shop.loaihang.'.$order['loaihang'])}}</td>
            <td>{{nl2br($order->laordernote)}}</td>
            <td id="status{{$order->id}}"><span class="label label-{{Config::get('shop.orderstatus.'.$order->order_status.'.color')}}">{{Config::get('shop.orderstatus.'.$order->order_status.'.value')}}</span></td>
            <td>
                <select onchange="changestatus({{$order->id}},this.value)">
                    @foreach(Config::get('shop.orderstatus') as $key=>$status)
                        <option value="{{$key}}" {{(($key == $order->order_status )?'selected':'')}}>{{$status['value']}}</option>
                    @endforeach
                </select>
            </td>
            <td>{{date("H:i d/m/Y",strtotime($order->updated_at))}}</td>
        </tr>
    @endforeach
    </table>
    {{$oOrders->links()}}
    <div class="clearfix" id="loading" style="display: block;height: 20px;width: 100%"></div>
    <table class="table table-responsive table-bordered" id="trackcontent">
    </table>
</div>

</div>
@stop
@section('jscript')
<script>
    app.controller('adminordercontroller',['$scope','$modal','$http',function($scope,$modal,$http){
            $scope.openformorder = function(type){
                if(type == 'new'){
                    actionopenform(null);
                }
                else {
                    $http.get('orderjx/'+type)
                    .success(function(data){
                        actionopenform(data);
                    });
                }
            };
            function actionopenform(order){
                var modalInstance = $modal.open({
                  templateUrl: 'myModalContent.html',
                  controller: 'ModalInstanceCtrl',
                  size: 'lg',
                  resolve: {
                  data: function ()
                     {
                       return order;
                     }
                 }
                });

                modalInstance.result.then(function (rs) {
                    if(rs == 1){
                        window.location.reload();
                    }
                }, function () {
                });
            }
       }]);
       app.controller('ModalInstanceCtrl', function ($scope, $modalInstance,$http,data) {
            $scope.newitem = {
                 id:'',
                 title:'',
                 amount:1,
                 price:''
            };

            console.log(data);
            if(data == null){
                $scope.order = {
                    name:'',
                    sdt:'',
                    address:'',
                    loaihang:'store',
                    lapayment:'pay_tienmat',
                    orderitems:[],
                    sum:0
                };
            }
            else {
                $scope.order = {
                    id:data.order.id,
                    name:data.order.laordername,
                    sdt:data.order.laordertel,
                    address: data.order.laorderaddr,
                    loaihang: data.order.loaihang,
                    lapayment:data.order.lapayment,
                    orderitems:[],
                    sum:0
                }
                for(var i=0;i<data.orderitem.length;i++){
                    var value = data.orderitem[i];
                    $scope.order.orderitems[i] = {
                        id:value.id,
                         title:value.latitle,
                         amount:value.amount,
                         price:value.laprice,
                         image:value.laimage,
                         url:value.producturl,
                         varname:value.variantname
                    };
                    $scope.order.sum += (value.amount * value.laprice);
                }
            }


            $scope.addproduct = function(){
                if($scope.newitem.id==''){
                    $scope.nofi = 'Không thể thêm sản phẩm không có ID';
                    return;
                }
                $scope.order.orderitems.push($scope.newitem);
                 $scope.newitem = {
                                 id:'',
                                 title:'',
                                 amount:1,
                                 price:''
                            };
            };
            $scope.ordertotal = function(){
                var sum = 0;
                angular.forEach($scope.order.orderitems, function(val,key){
                    sum += val.amount * val.price;
                });
            $scope.order.sum = sum;
                return sum;
            };
            $scope.searchflag='';
            $scope.searchresult = [];
            $scope.searchmin = 3;
            $scope.searchproduct = function(typed){
                if(typed.length >= $scope.searchmin ){
                    if($scope.searchflag==''){
                        $scope.searchflag = typed;
                        $scope.searchresult = [];
                        $http.post('searchproduct',{
                            search:$scope.searchflag,
                            _token: '<?php echo Session::get('_token');?>'

                        })
                            .success(function(data){
                                if(data.length == 1){
                                    value = data[0];
                                    $scope.newitem = {
                                         id:value.id,
                                         title:value.latitle,
                                         amount:1,
                                         price:value.laprice,
                                         image:value.laimage,
                                        url:value.laurl,
                                        varname:value.lashortinfo
                                    };
                                }
                                else{
                                    angular.forEach(data,function(value,key){
                                        $scope.searchresult.push(value.latitle);
                                    });
                                }

                            $scope.searchflag = '';
                            });
                    }
                }
                if(typed.length < $scope.searchmin){
                    //reset search key
                    $scope.searchflag = '';
                }
            };
            $scope.delproduct = function(index){
                $scope.order.orderitems.splice(index,1);
            }

             $scope.ok = function () {
             $scope.nofi = null;
                if($scope.order.name == '' || $scope.order.sdt == '' || $scope.order.address == '' || $scope.order.orderitems.length == 0){
                    $scope.nofi = 'Bạn chưa nhập đủ thông tin đơn hàng hoặc chưa có sản phẩm nào.';
                    return;
                }
                $http.post('saveorder',{
                    _token: '<?php echo Session::get('_token');?>',
                    order: $scope.order
                }).success(function(data){
                    if(data == 1){
                        $modalInstance.close(1);
                    }
                    else{
                        $scope.nofi = data;
                    }
                });
//             console.log($scope.order);
//               $modalInstance.close();
             };

             $scope.cancel = function () {
               $modalInstance.dismiss('cancel');
             };
           });
</script>
     <script>
     function changestatus(orderid,status){
         $.ajax({
             url:"{{URL::to('/admin/changeorderstatus/')}}/"+orderid+"/"+status,
             type:"get",
             success:function(msg){
                $("#status"+orderid).html(msg);
             }
         })
     }
     function savetrackid(orderid){
         $.ajax({
             url:"{{URL::to('/admin/savetrackid/')}}/"+orderid+"/"+$("#trackid"+orderid).val(),
             type:"get",
             success:function(msg){
                if(msg==1) alert("OK");
                 else alert("FAIL");
             }
         })
     }
     function viewDetail(orderid){
         if($("#append"+orderid).length <=0)
             $.ajax({
             url:"{{URL::to('/admin/vieworderdetails/')}}/"+orderid,
             type:"get",
             success:function(msg){
                     $("#tr"+orderid).after("<tr id='append"+orderid+"'><td><button type='button' class='close' aria-hidden='true' onclick='closetr(\""+orderid+"\")' class='close'>&times;</button></td><td colspan='10'>"+msg+"</td></tr>");
             }
         })
     }
     function closetr(orderid){
         $("#append"+orderid).remove();
     }
     $('.sumpopup').tooltip({html:true});
     function findtrackid(orderid){
         $("#loading").addClass("ajaxload");
         $("#trackcontent").html("");
         $.ajax({
             url:"{{URL::to('/cart/findtrackid/')}}/"+$("#trackid"+orderid).val(),
             success:function(msg){
                 $("#loading").removeClass("ajaxload");
                 $("#trackcontent").html(msg);
             }
         });
     }
     </script>
@stop
