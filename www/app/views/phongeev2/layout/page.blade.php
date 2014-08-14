@extends('layout')
@section('body')

<div class="mycontainer">
    <div id="content" class="">
        @if($typeEnd == 'list' || $typeEnd=='details')
        @if(!isset($actCat) || $actCat!='search')
        <div style="position: relative">
            <div class="pagetitleouter row-fluid">
                <div class="col-xs-12">
                    @if($typeEnd=='details')
                    <h1 class="page-title">
                        Product Details
                    </h1>
                    @else
                    <h1 class="page-title">{{($typeEnd == 'list')?$actCat->latitle:$oProduct->latitle}}</h1>
                    @endif
                    @if( $typeEnd=='details' || $typeEnd == 'list')
                    @include(Config::get('shop.theme').'/layout/barcum')
                    @endif
                </div>
            </div>
            <div class="clear"></div>
        </div>
        @endif
        <header id="page-title" class="mycontainer wrap">
            <div class="padding-top-20">
                @if(!isset($actCat) || $actCat!='search')

                @else
                <h1 class="page-title">Tìm kiếm</h1>
                @endif

                @if($typeEnd == 'list' && $actCat!='search' && $actCat->isnews==0 && !isset($issearch))
                    @include(Config::get('shop.theme').'/list/submenu')
                    @include(Config::get('shop.theme').'/list/dropdown')
                @endif
            </div>
        </header>
        <div class="clearfix"></div>
        @endif
        @yield('pagecontent')
    </div>
</div>
@stop
@section('jscript')
<script>
    $('.carouselnews').carousel({
        animation: 'slow'
    });
</script>
@stop
