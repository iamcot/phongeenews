@extends('layout')
@section('body')

<div class="mycontainer">
    <div id="content" class="">
        @if($typeEnd == 'list' || $typeEnd=='details')
        @if(!isset($actCat) || $actCat!='search')
        <div style="position: relative">
            <div class="khuyenmaislide row-fluid">
                <div class="col-xs-12">
                    @if($typeEnd=='details')
                    <h1 class="page-title">
                        Product Details
                    </h1>
                    @else
                    <h1 class="page-title">{{($typeEnd == 'list')?$actCat->latitle:$oProduct->latitle}}</h1>
                    @endif
                </div>
            </div>
        </div>
            <div class="clear"></div>
        @endif
        <header id="page-title" class="mycontainer wrap">
            <div class="padding-top-20">
                @if(!isset($actCat) || $actCat!='search')

                @else
                <h1 class="page-title">Tìm kiếm</h1>
                @endif
                @if( $typeEnd=='details')
                @include(Config::get('shop.theme').'/layout/barcum')
                @elseif($typeEnd == 'list' && $actCat!='search' && $actCat->isnews==0 && !isset($issearch))
                        @yield('shorcut')
                        @yield('dropdown')
                @endif
            </div>
        </header>
             <div class="clearfix"></div>
        @endif
        @yield('pagecontent')
    </div>
</div>
@stop
@section('script')
<script>
    $('.carouselnews').carousel({
        animation: 'slow'
    });
</script>
@stop
