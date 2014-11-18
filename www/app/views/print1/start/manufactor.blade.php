{{--*/ $factors = Factory::all() /*--}}
<div class="mycontainer wrap start-manufactor">
    <div class="widget-header">
        <h3>Đối tác</h3>
    </div>
    <ul class="factorslist">
    @foreach($factors as $factor)
        <li><a href="{{URL::to('/hastag/'.$factor->laurl)}}">{{HTML::image('/uploads/factor/'.$factor->id.'/'.$factor->laimage)}}</a></li>
    @endforeach
    </ul>
    <div class="clearfix"></div>
</div>
