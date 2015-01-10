<!doctype html>
<html ng-app="shopApp">
<head>
    <title>{{Config::get('site.title')}}</title>
    <meta charset="utf-8">
    <meta name="description"
              content="{{((isset($description))?$description:Config::get('site.description'))}}">
        <meta name="keywords"
              content="{{((isset($keywords))?$keywords:'')}},{{Config::get('site.keywords')}}">
        <meta name="robots" content="index,follow">
    {{HTML::style('src/bootstrap/css/bootstrap.min.css')}}
    {{HTML::style('src/bootstrap/css/bootstrap-responsive.min.css')}}
    {{HTML::style('src/bootstrap/css/bootstrap-theme.min.css')}}
    {{HTML::style('src/style.css')}}
    {{HTML::style('src/rs-plugin/css/settings.css')}}
</head>
@yield('body')
</html>
{{HTML::script('src/js/jquery.js')}}
{{HTML::script('src/bootstrap/js/bootstrap.min.js')}}
{{HTML::script('src/js/angular.min.js')}}
<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
{{HTML::script('src/rs-plugin/js/jquery.themepunch.plugins.min.js')}}
{{HTML::script('src/rs-plugin/js/jquery.themepunch.revolution.min.js')}}
<script>
    app = angular.module('shopApp', []);
</script>
@yield('script')


