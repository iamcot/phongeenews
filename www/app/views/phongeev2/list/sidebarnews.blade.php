<div class="archivelist">
    <h3>LƯU TRỮ</h3>
    <hr>
    {{--*/ $archive = Vproduct::getNewsArchive(); /*--}}
    {{--*/ $year = 0; $i=0; /*--}}
    <ul class="listyear">
    @foreach($archive as $row)
        @if($row->layear != $year)
            @if($i > 0)
                </ul>
            </li>
            @endif
            <li>
            <a href="{{URL::to('/tin-tuc/'.$row->layear)}}"><span>></span>&nbsp;&nbsp;<b>{{$row->layear}}</b> <span>({{$row->countyear}})</span></a>
            <ul class="listmonth">
            {{--*/ $year = $row->layear; $i++;/*--}}
        @endif
                <li>
                    <a href="{{URL::to('/tin-tuc/'.$row->layear.'/'.$row->lamonth)}}"><span>></span>&nbsp;&nbsp;<b>{{$row->layear}}/{{$row->lamonth}}</b> <span>({{$row->countmonth}})<span></a>
                </li>
    @endforeach
              </ul>
         </li>
    </ul>
</div>
<div class="sidebar-widget">
    {{--*/ $lists = Vproduct::where('isnews','0')
    ->orderby('laview','desc')
    ->orderby('id','desc')
    ->take(3)
    ->get();
    /*--}}
    <h4>Sản phẩm bán chạy</h4>
    <ul>
        @foreach($lists as $news)
        @include(Config::get('shop.theme').'/list/widgetitem')
        @endforeach
    </ul>
</div>
<div class="sidebar-widget">
    {{--*/ $lists = Vproduct::where('isnews','0')
    ->orderby('laview','desc')
    ->orderby('id','desc')
    ->take(3)
    ->get();
    /*--}}
    <h4>Đang khuyến mãi</h4>
    <ul>
        @foreach($lists as $news)
        @include(Config::get('shop.theme').'/list/widgetitem')
        @endforeach
    </ul>
</div>
<div class="sidebar-widget">
    {{--*/ $lists = Vproduct::where('isnews','0')
    ->orderby('laview','desc')
    ->orderby('id','desc')
    ->take(3)
    ->get();
    /*--}}
    <h4>Sắp có hàng</h4>
    <ul>
        @foreach($lists as $news)
        @include(Config::get('shop.theme').'/list/widgetitem')
        @endforeach
    </ul>
</div>