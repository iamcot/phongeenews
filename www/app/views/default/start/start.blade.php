@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
    @include(Config::get('shop.theme').'/start/slider')
<div class="widget">
    @include(Config::get('shop.theme').'/start/newarrive')
    @include(Config::get('shop.theme').'/start/store')
</div>
@stop