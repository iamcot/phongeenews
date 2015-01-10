@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div class="mycontainer wrap lists gallerylist" itemscope itemtype="http://schema.org/ItemList">
<div class="gallery-popup">
</div>
<div class="overlay"></div>
    <ul class="row-fluid">
        @foreach($lists as $list)
            <li class="col col-xs-4 col-sm-3  galleryitem">
                <div class="gallerycontent">
                    <div @if($list->lainfo) class="col col-xs-8" style="border-right: 1px dashed #ccc;" @else class="col col-xs-12" @endif>
                        <img src="{{URL::to('/uploads/product/'.$list->laimage)}}">
                    </div>
                    @if($list->lainfo)
                    <div class="col col-xs-4 padding-15" >
                        <h3>{{$list->latitle}}</h3>
                        {{ $list->lainfo }}
                    </div>
                    @endif
                    <a href="javascript:close(this)" class="galleryclose"><i class="fa fa-minus-circle"></i></a>
                </div>
                <div class="widget-product">
                    <div class="imgHolder">
                        <img src="{{URL::to('/uploads/product/'.$list->laimage)}}">
                    </div>
                    <div class="widgetinfo">
                        <p style="text-align: center"><strong>{{$list->latitle}}</strong></p>
                    </div>
                </div>
            </li>
        @endforeach
    </ul>
    {{$lists->links()}}
</div>
@stop
@section('jscript')
    @parent
    <script>
        $('.galleryitem').click(function(e){
            $('.overlay').show();
            $('.gallery-popup').html($(this).find('.gallerycontent').html()).show();
        })
        function close(a){
            $('.overlay').hide();
            $('.gallery-popup').hide();
        }
    </script>
@stop