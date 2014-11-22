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
    <meta property="fb:app_id" content="1544722292410133"/>
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
    {{HTML::style('src/'.Config::get('shop.theme').'/cloud-zoom.css')}}
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
        <p class="bg-danger text-center" style="padding: 10px;">{{Session::get('message')}}</p>
        @endif
        @yield('body')
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
{{HTML::script('src/'.Config::get('shop.theme').'/cloud-zoom.1.0.3.js')}}
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
   app.filter('mycurrency',
       [ '$filter', '$locale',
         function(filter, locale) {
             var currencyFilter = filter('currency');
             var formats = locale.NUMBER_FORMATS;
             return function(amount, currencySymbol) {
                 var value = currencyFilter(amount, currencySymbol);

                 var sep = value.indexOf(formats.DECIMAL_SEP);
                 if(amount >= 0) {
                     return value.substring(0, sep);
                 }
                 return value.substring(0, sep) + ')';
             };
         } ]);
   app.controller('mainController',['$scope',function($scope){

   }]);
</script>
<script>
$( window ).scroll(function() {
    if($(window).scrollTop() > 30){
        $("#top-header").addClass("fixed");
    }
    else   $("#top-header").removeClass("fixed");
});
</script>
@if (isset($typeEnd) && $typeEnd!='admin')
<script src="https://apis.google.com/js/platform.js" async defer></script>
<div id="fb-root"></div>
<script>
  window.fbAsyncInit = function() {
      FB.init({
          appId      : '1544722292410133',
          xfbml      : true,
          version    : 'v2.1'
      });
  };

  (function(d, s, id){
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) {return;}
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js";
      fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-50706272-1', 'auto');
  ga('send', 'pageview');

</script>
<!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute('charset','utf-8');
$.src='//v2.zopim.com/?2agbYPCLvXEEzKVhf5UQEb5K9RSWpptg';z.t=+new Date;$.
type='text/javascript';e.parentNode.insertBefore($,e)})(document,'script');
</script>
<!--End of Zopim Live Chat Script-->
@endif
@yield('jscript')


