{{--*/ $factors = Factory::all() /*--}}
<div class="start_newsbottom col-xs-12">
    <div class="widget-header">
        <h3>Thương hiệu</h3>
    </div>
    <ul class="factorslist">
    @foreach($factors as $factor)
        <li><a href="{{URL::to($factor->laurl)}}">{{HTML::image('/uploads/factor/'.$factor->id.'/'.$factor->laimage)}}</a></li>
    @endforeach
    </ul>
</div>
<div class="clearfix"></div>