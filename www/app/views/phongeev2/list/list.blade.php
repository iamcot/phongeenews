@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div class="mycontainer wrap lists" itemscope itemtype="http://schema.org/ItemList">

    @if($actCat!='search' && $actCat->isnews==1)
    @include(Config::get('shop.theme').'/list/listnews')
    @else


    @if(isset($catchildren) && $catchildren != null)
    {{--*/ $ranproduct = DB::table('v_products')
    ->where('ladeleted', '!=', '1')
    ->where(function ($query) use ($actCat) {
    $query->where('cat1id', '=', $actCat->id)
    ->orwhere('cat2id', '=', $actCat->id)
    ->orwhere('cat3id', '=', $actCat->id);
    })
    ->orderBy('id','DESC')
    ->paginate(12);
     /*--}}
    <ul class="row-fluid">
        @foreach($ranproduct as $list)
        @include(Config::get('shop.theme').'/list/listitem')
        @endforeach
    </ul>
    <div class="clearfix"></div>
<!--    <div class="pull-right">{{ $ranproduct->links() }}</div>-->
    @endif

    @if(!$rootcat && isset($lists) && $lists != null && count($lists)>0 )
    <ul class="row-fluid ">
        @foreach($lists as $list)
        @include(Config::get('shop.theme').'/list/listitem')
        @endforeach
    </ul>
    <div class="text-center clearfix">
        @if(!$rootcat)
        {{$lists->links()}}
        @endif
    </div>
    @elseif(!$rootcat)
    <div class="noproduct text-center"></div>
    @endif
    @endif
</div>
@include(Config::get('shop.theme').'/start/topfooter')
@stop
@section('jscript')
<script>
    function changeOrder(select) {
        $("input[name=listorder]").val(select);
            $("#listorderform").submit();
    }
    function opendropdown(){
        $('#ordermenu').addClass("open");
    }
    $('.dropdown-toggle').dropdown();
    function showmenu(){
        $("#listsubmenu").toggle();
    }
    $('body').click(function() {
        $('#listsubmenu').hide();
    });
    function hidedropmenu(){
        //$('#ordermenu').removeClass("open");
        alert("dd");
    }
</script>
@stop