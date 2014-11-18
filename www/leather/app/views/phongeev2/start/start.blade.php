@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
@include(Config::get('shop.theme').'/start/slider')
<div class="khuyenmaislide row-fluid hidden-phone text-center">
    <div class="row">
    <div class=" khuyenmai-inner wrap ">
        <span class="col-xs-3 col-md-2 khuyenmaiheader">TIN KHUYẾN MÃI</span>
        <ul class="col-xs-9 col-md-9 khuyenmaicontent list-inline">

            <li class="col-xs-12 col-md-6"><a href=""><i>Giá luôn tốt hơn khi đặt hàng trực tuyến</i></a></li>
            <li class="col-md-6"><a href=""><i>Phongee đang có chương trình khuyến mãi</i></a></li>
        </ul>
        <span class="khuyenindicator col-md-1 visible-desktop">
                <a><i class="fa fa-angle-left"></i></a>
                <a><i class="fa fa-angle-right"></i></a>
        </span>
        </div>
    </div>
</div>
<div class="widget row-fluid" ng-controller="startController">
    @include(Config::get('shop.theme').'/start/bestsell')
    <div class="clear"></div>

    @include(Config::get('shop.theme').'/start/newarrive')
    <div class="clear"></div>

    @include(Config::get('shop.theme').'/start/khuyenmai')
    <div class="clear"></div>

    @include(Config::get('shop.theme').'/start/rate')
    <div class="clear"></div>
    <br><br>
</div>
    @include(Config::get('shop.theme').'/start/topfooter')
    @include(Config::get('shop.theme').'/start/store')
@stop
@section('jscript')
    @parent
    <script>
    app.controller('startController',['$scope','$http',function($scope,$http){
        $scope.bestsell = {
            per_page:4,
            page:{},
            current_page:1,
            last_page:1
        };
        $scope.new = {
            per_page:4,
            page:{},
            current_page:1,
            last_page:1
        };
        $scope.loadwideget = function(type,page,pp){
            var request = false;
            if(type=='bestsell'){
                if(!$scope.bestsell.page[page]) request = true;
                else{
                    $scope.bestsell.current_page = page;
                }
            }
            if(type=='new'){
                if(!$scope.new.page[page]) request = true;
                else{
                    $scope.new.current_page = page;
                }
            }
            if(request){
                $http.get('ajax/startwidget/'+type+'/'+pp+'?page='+page)
                    .success(function(response){
                        if(response.last_page > 5) response.last_page = 5;
                        if(type=='bestsell'){
                            $scope.bestsell.page[page] = response;
                            $scope.bestsell.current_page = response.current_page;
                            $scope.bestsell.last_page = response.last_page;

                        }
                        if(type=='new'){
                            $scope.new.page[page] = response;
                            $scope.new.current_page = response.current_page;
                            $scope.new.last_page = response.last_page;
                        }
                    });
            }

        }
        $scope.loadwideget('bestsell',1,$scope.bestsell.per_page);
        $scope.loadwideget('new',1,$scope.new.per_page);
    }]);
    </script>
@stop