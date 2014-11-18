@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
    @include(Config::get('shop.theme').'/start/slider')
<div class="widget">
    @include(Config::get('shop.theme').'/start/newsnoibat')
    @include(Config::get('shop.theme').'/start/news')
    @include(Config::get('shop.theme').'/start/newsbottom')
    @include(Config::get('shop.theme').'/start/manufactor')
</div>
@stop