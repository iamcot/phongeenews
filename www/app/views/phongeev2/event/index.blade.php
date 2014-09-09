@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
    <div id="event" class="mycontainer wrap">
    @if($event==null)
        <p class="well">Hiện tại không có sự kiện nào.</p>
    @else
    <h1>{{$event->latitle}}</h1>
    @endif
@stop