<div class="clearfix"></div>
{{--*/ $news = Vproduct::getNewsNoibat() /*--}}
<ul class="start_newsnoibat">
@foreach($news as $newitem)
<li class="col-xs-3">
    <h3>{{$newitem->latitle}}</h3>
    <p>{{nl2br($newitem->lashortinfo)}}</p>
    <button class="btn">Xem thêm</button>
</li>
@endforeach
</ul>