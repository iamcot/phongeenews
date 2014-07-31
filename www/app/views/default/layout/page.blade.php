@extends('layout')
@section('body')

<div class="mycontainer">
    <div id="content" class="">
        @if($typeEnd == 'list' || $typeEnd=='details')
        @if(!isset($actCat) || $actCat!='search')
        <div style="position: relative">
        <div id="carousel-example-genericnews" class="carouselnews " data-ride="carousel" style="position: relative">
            <!-- Wrapper for slides -->
            {{--*/ $catListSameParent = Vcategory::where('ladeleted', '!=', '1')->where('laparent_id',(($actCat->laparent_id==0)?$actCat->id:$actCat->laparent_id))->get() /*--}}
            {{--*/ $i = 0;$countnews = count($catListSameParent); /*--}}
            <div class="carousel-inner ">
                @foreach($catListSameParent as $catitem)
                @if($i%6==0)
                <div class="item @if($i==0) active @endif">
                    <ul class="topcatlist">
                        @endif
                        <li class="col-xs-2">
                            <a href="{{URL::to($catitem->laurl)}}">
                                <img src="{{URL::to('/uploads/cat/'.$catitem->id.'/'.$catitem->laimage)}}">
                                <p>{{$catitem->latitle}}</p>
                            </a>
                        </li>
                        {{--*/ $i +=1 /*--}}
                        @if($i%6==0 && $i< $countnews)
                    </ul>
                </div>
                @endif
                @endforeach
                </ul>
                </div>
            </div>

        </div>
        <div class="topcatlistcontrol">
            <a class="left carousel-control" href="#carousel-example-genericnews" data-slide="prev">
            </a>
            <a class="right carousel-control" href="#carousel-example-genericnews" data-slide="next">
            </a>
        </div>
        </div>

            <div class="clear"></div>
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
                @if( $typeEnd=='details')
                @include(Config::get('shop.theme').'/layout/barcum')
                @elseif($typeEnd == 'list' && $actCat!='search' && $actCat->isnews==0 && !isset($issearch))
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
