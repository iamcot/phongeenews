<!DOCTYPE html>
<html ng-app="shopApp">
<head >
    <title>{{isset($pretitle)?$pretitle:Config::get('shop.pretitle')}}
           {{isset($title)?$title:Config::get('shop.title')}}
           {{isset($suftitle)?$suftitle:Config::get('shop.suftitle')}}
    </title>
    <meta name="description"
          content="{{((isset($description))?$description:Config::get('shop.description'))}}">
    <meta name="keywords"
          content="{{((isset($keywords))?$keywords:'')}},{{Config::get('shop.keywords')}}">
    <meta name="robots" content="index,follow">
    <meta property="fb:app_id" content="753308934688020"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,100,900,700&subset=vietnamese'
          rel='stylesheet' type='text/css'>
    <!-- Bootstrap -->
    {{HTML::style('src/bootstrap/css/bootstrap.min.css')}}
    {{HTML::style('src/bootstrap/css/bootstrap-responsive.min.css')}}
    {{HTML::style('src/bootstrap/css/bootstrap-theme.min.css')}}
    {{HTML::style('src/bootstrap/css/datepicker.css')}}
    {{HTML::style('src/'.Config::get('shop.theme').'/jquery.raty.css')}}
    {{HTML::style('src/'.Config::get('shop.theme').'/angular-motion.min.css')}}
    @if (isset($typeEnd) && $typeEnd=='admin')
    {{HTML::style('src/style.css')}}
    @else
    {{HTML::style('src/'.Config::get('shop.theme').'/shop.css')}}
    {{HTML::style('src/'.Config::get('shop.theme').'/font-awesome.min.css')}}
    @endif
    @yield('morestyle')
</head>
<body class="bgphongee" ng-controller="mainController">
<div class="supercontainer">
    @yield('errorpage')
    @if (isset($haveHeader) && $haveHeader == 1)
    @include(Config::get('shop.theme').'/layout/header')
    @endif


    @if (isset($typeEnd) && $typeEnd=='admin')
    @include('admin/topnav')

    @endif
    <div class="clearfix"></div>
    <div class=" body">
        @if(Session::has('message'))
        <div class="bg-danger text-center">{{Session::get('message')}}</div>
        @endif
        @yield('body')
        <div class="clearfix"></div>
        <div class="subfooter-bar"></div>
    </div>
    <div class="clearfix"></div>
    @if (isset($typeEnd) && $typeEnd!='admin')
    @include(Config::get('shop.theme').'/layout/footer')
    @endif
</div>
</body>
</html>
{{HTML::script('src/jquery.js')}}
{{HTML::script('src/bootstrap/js/bootstrap.min.js')}}
{{HTML::script('src/'.Config::get('shop.theme').'/jquery.raty.js')}}
{{HTML::script('src/'.Config::get('shop.theme').'/angular.min.js')}}
{{HTML::script('src/'.Config::get('shop.theme').'/angular-animate.min.js')}}
{{HTML::script('src/bootstrap/js/bootstrap-datepicker.js')}}
<script>
   app = angular.module('shopApp', []);
   app.filter('paging', function() {
       return function(input, total) {
           total = parseInt(total);
           for (var i=1; i<=total; i++)
               input.push(i);
           return input;
       };
   });
   app.controller('mainController',['$scope',function($scope){

   }]);
</script>
@if (isset($typeEnd) && $typeEnd!='admin')
<div id="fb-root"></div>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script>
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = "https://connect.facebook.net/en_GB/all.js#xfbml=1&appId=753308934688020";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
            </script>
@endif
@yield('jscript')


