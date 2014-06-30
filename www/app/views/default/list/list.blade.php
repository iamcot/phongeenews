@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div class="mycontainer wrap lists" itemscope itemtype="http://schema.org/ItemList">

    @if($actCat!='search' && $actCat->isnews==1)
        @include(Config::get('shop.theme').'/list/listnews')
    @else

        @if($actCat!='search' && !$rootcat && $actCat->isnews==0 && !isset($issearch))

        <div class="text-right container-fluid">
            {{ Form::open() }}
            <button name="giatang" class="btn btn-success btn-xs"><span
                    class="glyphicon glyphicon-sort-by-attributes"></span> Giá
            </button>
            <button name="giagiam" class="btn btn-danger btn-xs"><span
                    class="glyphicon glyphicon-sort-by-attributes-alt"></span> Giá
            </button>
            <button name="tentang" class="btn btn-success btn-xs"><span
                    class="glyphicon glyphicon-sort-by-alphabet"></span> Tên
            </button>
            <button name="tengiam" class="btn btn-danger btn-xs"><span
                    class="glyphicon glyphicon-sort-by-alphabet-alt"></span> Tên
            </button>
            <p></p>
            {{ Form::close() }}
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