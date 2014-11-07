@extends('layout')
@section('body')
<div data-ng-controller="adminevent">
    <div class="row-fluid">
        <h2>
            <strong class="col col-xs-8">@{{title}}</strong>

            <div class="col col-xs-2">
                <button class="btn btn-primary pull-right" data-ng-click="create()">Thêm sự kiện
                </button>
            </div>
            <div class="col col-xs-2">
                <button class="btn btn-success pull-right" data-ng-click="save()">Lưu sự kiện
                </button>

            </div>
        </h2>
        <div class="clear"></div>
        <hr>
        <div class="col-xs-12">
            <div class="col-xs-6 table-responsive">
                <h3>Danh sách sự kiện</h3>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Event</th>
                        <th>URL</th>
                        <th>Info</th>
                        <th>Active</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr data-ng-repeat="event in eventlist" data-ng-click="edit(event)">
                        <td>@{{event.id}}</td>
                        <td>@{{event.latitle}}</td>
                        <td>@{{event.laurl}}</td>
                        <td>@{{event.lainfo}}</td>
                        <td>
                            <label class="label label-success"
                                   ng-if="event.laactive == 1">active</label>
                            <label class="label label-danger"
                                   ng-if="event.laactive == 0">stop</label>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <h3>Tin tức/sản phẩm liên quan</h3>
                <hr>
                <div class="row-fluid">
                    <div class="form-group col-xs-6">
                        <label for="lainfo">Tin tức liên quan</label>
                            <textarea class="form-control" id="lanews"
                                      ng-model="event.lanews" rows="4"></textarea>
                    </div>
                    <div class="form-group col-xs-6">
                        <label for="lainfo">Sản phẩm liên quan</label>
                            <textarea class="form-control" id="laproduct"
                                      ng-model="event.laproduct" rows="4"></textarea>
                    </div>
                </div>
            </div>
            <div class="col-xs-6">
                <h3>Thông tin sự kiện</h3>

                <form role="form">
                    <div class="row-fluid">
                        <div class="form-group col-xs-6">
                            <label for="id">ID</label>
                            <input type="text" class="form-control" id="id" placeholder=""
                                   ng-model="event.id" readonly>
                        </div>
                        <div class="form-group col-xs-6">
                            <br>
                            <label for="laactive">Active</label>
                            <input type="checkbox" id="laactive" ng-model="event.laactive">
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="form-group col-xs-6">
                            <label for="latitle">Tên sự kiện</label>
                            <input type="text" class="form-control" id="latitle"
                                   placeholder="Tên sự kiện" ng-model="event.latitle">
                        </div>
                        <div class="form-group col-xs-6">
                            <label for="laurl">URL</label>
                            <input type="text" class="form-control" id="laurl"
                                   placeholder="Đường dẫn" ng-model="event.laurl">
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="lainfo">Info</label>
                            <textarea class="form-control" id="lainfo"
                                      ng-model="event.lainfo"></textarea>
                        </div>
                </form>
                <h3>Hình ảnh liên quan</h3>
                <hr>
                <div class="row-fluid">
                    <div class="well">
                        <input id="fileupload" type="file" name="files[]"
                               data-url="{{URL::to('/upload/calljupload/event')}}" multiple>
                    </div>


                    <div id="progress" style="width:50%">
                        <div class="bar" style="width: 0%;"></div>
                    </div>
                    <ul id="uploadlinks" class="list-inline">
                        <li data-ng-repeat="pic in piclist" class="row-fluid">
                            <div class="col-xs-3" style="position: relative">
                                <img src='@{{pic.thumbnailUrl}}'
                                     style="max-height: 100px;width: auto;margin-right:15px;" class="pull-left">
                                <a href='#' data-ng-click="delpic(pic.name)"
                                   style="position: absolute;bottom:10px;left:10px;">
                                    <span class='glyphicon glyphicon-trash'></span></a>
                            </div>
                            <div class="col-xs-9">
                                <input type="text" ng-model="pic.latitle"  style="width: 95%">

                            </div>

                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <br><br>
    <br><br>
</div>
@stop
@section('jscript')
{{HTML::script('src/jupload/js/vendor/jquery.ui.widget.js')}}
{{HTML::script('src/jupload/js/jquery.iframe-transport.js')}}
{{HTML::script('src/jupload/js/jquery.fileupload.js')}}
{{HTML::script('src/jupload/js/jquery.fileupload-process.js')}}
{{HTML::script('src/ckeditor/ckeditor.js')}}
{{HTML::script('src/ckeditor/adapters/jquery.js')}}
{{HTML::script('src/jquery.friendurl.js')}}
<script>
    $('#latitle').friendurl({id: 'laurl'});
    app.controller('adminevent', ['$scope', '$rootScope', '$http', function (
        $scope, $rootScope, $http) {
        $scope.title = "Sự kiện";
        $scope.eventlist = [];
        $scope.piclist = [];
        $scope.event = {
            id: 0,
            latitle: '',
            laurl: '',
            laactive: 0,
            lainfo: '',
            lanews: '',
            laproduct: ''
        }
        $scope.edit = function (event) {
            angular.copy(event, $scope.event);
            if ($scope.event.laactive == 0) {
                $scope.event.laactive = false;
            }
            else {
                $scope.event.laactive = true;
            }
            $scope.loadpic($scope.event.id);
        }
        $scope.create = function () {
            $scope.event = {
                id: 0,
                latitle: '',
                laurl: '',
                laactive: 0,
                lainfo: '',
                lanews: '',
                laproduct: ''
            };
            $scope.piclist = [];
        }

        $scope.save = function () {
            $scope.event.laurl = $("#laurl").val();
            if ($scope.event.latitle != '' && $scope.event.laurl != '') {
                $http.post('saveevent', {
                    _token: "{{Session::token()}}",
                    event: $scope.event,
                    pic: $scope.piclist
                }).success(function (msg) {
                        if(msg>0) alert("Lưu thành công");
                        $scope.load();
                    });
            }
            else {
                alert("Vui lòng nhập tên và đường dẫn sự kiện!");
            }
        }

        $scope.load = function () {
            $http.get('loadevent')
                .success(function (msg) {
                    $scope.eventlist = msg;
                });
        }
        $scope.delpic = function (name) {
            angular.forEach($scope.piclist, function (val, index) {
                if (val.name == name) {
                    $scope.piclist.splice(index, 1);
                }
            });
//            console.log($scope.piclist);
        };
        $scope.loadpic = function(eventid){
            $scope.piclist = [];
            $http.get('loadeventpic/'+eventid)
                .success(function(msg){
                    angular.forEach(msg,function(val,key){
                        $scope.piclist.push({
                           name:val.lapic,
                            thumbnailUrl:"{{URL::to('/uploads/thumbnails/event')}}"+"/"+val.lapic,
                            latitle:val.latitle
                        });
                    });
                })
        }
        $rootScope.$on('fileupload', function (e, call) {
            angular.forEach(call, function (val) {
                $scope.piclist.push(val);
            });
            $scope.$apply();
//            console.log($scope.piclist);
        });
        $scope.load();
        $('#fileupload').fileupload({
            dataType: 'json',
            start: function (e) {
                $('#progress .bar').css(
                    'width',
                    '0%'
                );
            },
            done: function (e, data) {
                var files = data.result.files;
                $rootScope.$broadcast('fileupload', files);
            },
            progressall: function (e, data) {
                var progress = parseInt(data.loaded / data.total * 100, 10);
                $('#progress .bar').css(
                    'width',
                    progress + '%'
                );
            }
        });
    }
    ]);

    </script>
@stop
