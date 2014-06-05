<div class="clearfix"></div>
{{--*/ $news = Vproduct::getNewsNoibat() /*--}}
<ul class="start_newsnoibat">
@foreach($news as $newitem)
<li class="col-xs-4 img-left">
    <span class="{{$newitem->lakeyword}}"></span>
    <h4 class="col-title">{{$newitem->latitle}}</h4>
    <p>{{nl2br($newitem->lashortinfo)}}</p>
    <p><a href="#">Xem thêm</a></p>
</li>
@endforeach
</ul>
