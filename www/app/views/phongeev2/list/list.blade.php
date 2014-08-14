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
    ->take(12)
    ->get(); /*--}}
    <ul class="row-fluid">
        @foreach($ranproduct as $list)
        @include(Config::get('shop.theme').'/list/listitem')
        @endforeach
    </ul>
    <div class="clearfix"></div>
    <br>
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
@stop
@section('jscript')
@parent
<script>
    function changeOrder(select) {
        $("input[name=listorder]").val(select);
            $("#listorderform").submit();
    }
    function opendropdown(){
        $('#ordermenu').addClass("open");
    }
    $('.dropdown-toggle').dropdown();

</script>
@stop
@section('dropdown')

@stop
