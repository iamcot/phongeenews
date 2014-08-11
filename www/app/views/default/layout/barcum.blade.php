<ol class="breadcrumb col">
    @if(isset($typeEnd) && $typeEnd == 'shop')
    @elseif(isset($typeEnd) && $typeEnd == 'list')
    {{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
        {{--*/ $breadcrumcat = Vcategory::makeBreadcrumCat($categories,$caturl) /*--}}
        <li>You were here: </li>
        {{--*/ $breadcrumlv = count($breadcrumcat) /*--}}
        @for($i=0;$i< $breadcrumlv;$i++)
        {{--*/ $cat = $breadcrumcat[$i] /*--}}
            <li>
                @if($i< $breadcrumlv - 1)
                <a href="{{URL::to('/'.$cat['laurl'])}}">
                    {{$cat['latitle']}}
                </a>
                    @else
                    {{$cat['latitle']}}
                @endif

            </li>
        @endfor
        @if(isset($issearch))
            <li>{{trans('common.'.$caturl)}}</li>
        @endif
    @elseif(isset($typeEnd) && $typeEnd == 'details')
        @if($oProduct !=null)
        <li>You were here: </li>
            @if($oProduct->cat3id>0 && $oProduct->cat3url!='')
                <li><a href="{{URL::to('/'.$oProduct->cat3url)}}">{{$oProduct->cat3name}}</a></li>
            @endif
            @if($oProduct->cat2id>0 && $oProduct->cat2url!='')
                <li><a href="{{URL::to('/'.$oProduct->cat2url)}}">{{$oProduct->cat2name}}</a></li>
            @endif
            @if($oProduct->cat1id>0 && $oProduct->cat1url!='')
                <li><a href="{{URL::to('/'.$oProduct->cat1url)}}">{{$oProduct->cat1name}}</a></li>
            @endif
            <li>{{$oProduct->latitle}}</li>
        @endif
    @endif
</ol>