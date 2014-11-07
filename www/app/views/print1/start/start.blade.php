@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
@include(Config::get('shop.theme').'/start/welcome')
<div class="clearfix"></div>
@include(Config::get('shop.theme').'/start/newarrive')
<div class="clearfix"></div>
@include(Config::get('shop.theme').'/start/manufactor')
@stop