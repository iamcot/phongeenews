@extends('layout')
@section('body')
{{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
<div class="container-fluid wrap">
    <div id="content" class="">
        @if($typeEnd == 'list' || $typeEnd=='details')
        @include(Config::get('shop.theme').'/layout/barcum')
        @endif
        @yield('pagecontent')
    </div>
<!--    @include(Config::get('shop.theme').'/layout/sidebar')-->
</div>
@stop
