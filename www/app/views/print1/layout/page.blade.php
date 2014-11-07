@extends('layout')
@section('body')

<div class="mycontainer">
    <div id="content" class="">
        @if($typeEnd == 'list' || $typeEnd=='details')
        <header id="page-title" class="mycontainer wrap">
            <div >
                @if(!isset($actCat) || $actCat!='search')
                <h1 class="page-title">{{($typeEnd == 'list')?$actCat->latitle:$oProduct->latitle}}</h1>
                @else
                <h1 class="page-title">Tìm kiếm</h1>
                @endif
                @if($typeEnd == 'list' || $typeEnd=='details')
                @include(Config::get('shop.theme').'/layout/barcum')
                @endif
            </div>
        </header>
             <div class="clearfix"></div>
        @endif
        @yield('pagecontent')
    </div>
</div>
@stop
