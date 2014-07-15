@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div class="mycontainer wrap lists" itemscope itemtype="http://schema.org/ItemList">

    @if($actCat!='search' && $actCat->isnews==1)
        @include(Config::get('shop.theme').'/list/listnews')
    @else

        @if($actCat!='search' && !$rootcat && $actCat->isnews==0 && !isset($issearch))

        <div class="text-right container-fluid">
            <form name="listorderform" id="listorderform">
<!--            <button name="giatang" class="btn btn-success btn-xs"><span-->
<!--                    class="glyphicon glyphicon-sort-by-attributes"></span> Giá-->
<!--            </button>-->
<!--            <button name="giagiam" class="btn btn-danger btn-xs"><span-->
<!--                    class="glyphicon glyphicon-sort-by-attributes-alt"></span> Giá-->
<!--            </button>-->
<!--            <button name="tentang" class="btn btn-success btn-xs"><span-->
<!--                    class="glyphicon glyphicon-sort-by-alphabet"></span> Tên-->
<!--            </button>-->
<!--            <button name="tengiam" class="btn btn-danger btn-xs"><span-->
<!--                    class="glyphicon glyphicon-sort-by-alphabet-alt"></span> Tên-->
<!--            </button>-->
<!--            <p></p>-->
            <select name="listorder" class="right" onchange="changeOrder(this)">
                <option value="0">Sắp xếp</option>
                <option value="giatang">Giá tăng</option>
                <option value="giagiam">Giá Giảm</option>
                <option value="tentang">Tên tăng</option>
                <option value="tengiam">Tên giảm</option>
            </select>
            </form>
            <br><br>
        </div>

        @endif

        @if(isset($catchildren) && $catchildren != null)
        {{--*/ $ranproduct = DB::table('v_products')
        ->where('ladeleted', '!=', '1')
        ->where(function ($query) use ($actCat) {
        $query->where('cat1id', '=', $actCat->id)
        ->orwhere('cat2id', '=', $actCat->id)
        ->orwhere('cat3id', '=', $actCat->id);
        })
        ->orderBy(DB::raw('RAND()'))
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
function changeOrder(select){
    if($(select).val()!="0")
        $("#listorderform").submit();
}
</script>
@stop