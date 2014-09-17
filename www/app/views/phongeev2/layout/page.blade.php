@extends('layout')
@section('body')

<div class="mycontainer">
    <div id="content" class="">
        @if($typeEnd == 'list' || $typeEnd=='details' || $typeEnd=='cart')
        @if(!isset($actCat) || $actCat!='search')
        <div >
            <div class="pagetitleouter row-fluid">
                <div class="col-xs-12">
                    @if($typeEnd=='cart')
                    <h1 class="page-title ">
                        Đơn hàng của bạn
                    </h1>
                    @elseif($typeEnd=='details')
                    <h1 class="page-title ">
                        Thông tin chi tiết
                    </h1>
                    @else
                    <h1 class="page-title">{{($typeEnd == 'list')?$actCat->latitle:$oProduct->latitle}}</h1>
                    @endif
                    @if( $typeEnd=='details' || $typeEnd == 'list'|| $typeEnd == 'cart')
                    @include(Config::get('shop.theme').'/layout/barcum')
                    @endif
                </div>
            </div>
            <div class="clear"></div>
        </div>
        @endif
        <div class="containinner">
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
            <div class="clearfix">
            </div>
        </div>
    </div>
    <div id="headermobilecartouter" style="display: none">
        <a href="javascript:closemenuheader()" style="position: absolute;right:15px; top:15px;">
            <i class="fa fa-minus fa-2x"></i>
        </a>
        {{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
        {{--*/ $cattree = Vcategory::subcattree('headersubmenu',0,$categories) /*--}}
        {{$cattree}}
    </div>
</div>

@stop
@section('jscript')

<script>
    $('.carouselnews').carousel({
        animation: 'slow'
    });
    function showmenuheader(){
        $("#headermobilecartouter").show();
    }

    function closemenuheader(){
        $("#headermobilecartouter").hide();
    }

    $('body').click(function() {
        $('#headermobilecartouter').hide();
    });
    $( window ).scroll(function() {
        if($(window).scrollTop() > 30){
            $("#top-header").addClass("fixed");
        }
        else   $("#top-header").removeClass("fixed");
    });
</script>
@stop
