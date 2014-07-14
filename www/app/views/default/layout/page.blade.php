@extends('layout')
@section('body')

<div class="mycontainer">
    <div id="content" class="">
        @if($typeEnd == 'list' || $typeEnd=='details')
        @if(!isset($actCat) || $actCat!='search')
        <div>
            {{--*/ $catListSameParent = Vcategory::where('ladeleted', '!=', '1')->where('laparent_id',(($actCat->laparent_id==0)?$actCat->id:$actCat->laparent_id))->get() /*--}}
            <ul class="topcatlist">
                @foreach($catListSameParent as $catitem)
                <li class="col-xs-2">
                    <a href="{{URL::to($catitem->laurl)}}">
                        <img src="{{URL::to('/uploads/cat/'.$catitem->id.'/'.$catitem->laimage)}}">
                        <p>{{$catitem->latitle}}</p>
                    </a>
                </li>
                @endforeach
            </ul>
            <div class="clear"></div>
        </div>
        @endif
        <header id="page-title" class="mycontainer wrap">
            <div >
                @if(!isset($actCat) || $actCat!='search')
                    @if($typeEnd=='details')
                <h1 class="page-title">
                    Product Details
                   </h1>
                    @else
                    <h1 class="page-title">{{($typeEnd == 'list')?$actCat->latitle:$oProduct->latitle}}</h1>
                    @endif
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
