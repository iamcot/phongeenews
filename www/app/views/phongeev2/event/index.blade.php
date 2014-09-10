@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div id="event" class="mycontainer wrap" ng-controller="eventController">
    @if($event==null)
    <p class="well">Hiện tại không có sự kiện nào.</p>
    @else
    <h1>Sự kiện "{{$event->latitle}}"</h1>
    <hr>
    <div class="row-fluid">
        <div class="">
            <ul class="list-inline" id="eventlistpic">
                <li ng-repeat="pic in pics">
                    <img src="{{URL::to('/uploads/thumbnails/event')}}/@{{pic.lapic}}" ng-click="openimage(pic)">
                </li>
            </ul>
        </div>
    </div>
    <hr>
    <div class="col-xs-6">
        <h4><i class="fa fa-list"></i> Theo dòng sự kiện</h4>
        <div id="listnewsbox">
            <ul class="nav nav-pills nav-stacked">
                <li ng-repeat="newsitem in news">
                    <a href="" ng-click="open($index)">
                    <label class="label label-info">@{{newsitem.created_at | date:"HH:mm dd/MM/yyyy"}}</label>
                    @{{newsitem.latitle}}
                    </a>
                </li>
            </ul>
        </div>
        <hr>
        <h4><i class="fa fa-comments-o"></i> Bình luận</h4>
        <div id="commentbox">
            <div class="fb-comments" data-href="{{Request::url('event/'.$event->laurl)}}" data-numposts="10" data-colorscheme="light" data-width="100%"></div>
        </div>
    </div>
    <div class="col-xs-6">
        <div id="listproductbox"></div>
        <p><strong>@{{activecontent.latitle}}</strong></p>
        <div id="contentbox">
            <div ng-if="activecontent.showimg">
                <img ng-src="@{{activecontent.src}}">
            </div>
            <div ng-if="!activecontent.showimg">
            <div ng-if="activecontent.youtubeframe">
                <iframe width="100%" height="315" ng-src="@{{activecontent.youtubeframe}}" frameborder="0" allowfullscreen></iframe>
            </div>
            <img ng-if="activecontent.laimage !=''" ng-src="@{{activecontent.laimage}}">
            <div ng-bind-html="activecontent.lainfo">

            </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
@endif
@stop
@section('jscript')
@parent
<script>
    app.controller('eventController', ['$scope','$sce', function ($scope,$sce) {
        $scope.pics = {{$pics}};
        $scope.news = {{$news}};
        $scope.activecontent = {};
        var retouchnews = function(){
            angular.forEach($scope.news,function(val){
                val.created_at = Date.parse(val.created_at);

            });
        }
        $scope.open = function(index){
            angular.copy($scope.news[index],$scope.activecontent);
            $scope.activecontent.showimg = false;
            if($scope.activecontent.youtubeid)
                $scope.activecontent.youtubeframe = $sce.trustAsResourceUrl("//www.youtube.com/embed/"+$scope.activecontent.youtubeid);
            $scope.activecontent.lainfo = $sce.trustAsHtml($scope.activecontent.lainfo);
            if($scope.activecontent.laimage != '')
                $scope.activecontent.laimage = $sce.trustAsResourceUrl("{{URL::to('/uploads/product')}}"+"/"+$scope.activecontent.laimage);
        };

        retouchnews();
        if($scope.news.length>0){
            $scope.open(0);
        };
        $scope.openimage = function(pic){
            $scope.activecontent = {
                showimg:true,
                src:$sce.trustAsResourceUrl("{{URL::to('/uploads/event')}}"+"/"+pic.lapic),
                latitle:pic.latitle
            };
        }
    }]);
</script>
@stop
