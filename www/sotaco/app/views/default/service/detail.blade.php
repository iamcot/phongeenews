@extends(Config::get('site.theme').'/layout/page')
@section('pagecontent')
<div class="row-fluid wrap detail">
<h1>
{{$article->title}}
<hr>
</h1>
<div class="row-fluid">
    <div class="col col-xs-12 col-sm-4" style="padding-left: 0!important;">
    <h4 class="list-group-item-heading">Loại dự án</h4>
    <p class="list-group-item-text">{{Config::get('site.projectCategory.'.$article->fk_project_categories)}}</p>
    <h4 class="list-group-item-heading">Diện tích</h4>
    <p class="list-group-item-text">{{$article->size}}</p>
    <h4 class="list-group-item-heading">Địa chỉ</h4>
    <p class="list-group-item-text">{{$article->address}}</p>
    <h4 class="list-group-item-heading">Loại hợp đồng</h4>
    <p class="list-group-item-text">
    @foreach($contracts as $contract)
    <label class="label label-default">{{Config::get('site.contract.'.$contract->fk_contract_type)}}</label>
    @endforeach
    </p>
    <h4 class="list-group-item-heading">Thông tin</h4>
    <p class="list-group-item-text">{{nl2br($article->desc)}}</p>
    <p></p>
    <ul class="list-unstyled listimage" style="margin-left: -7px">
        @foreach($images as $image)
            <li class="col col-xs-4">
                <img src="{{URL::to('uploads/thumbnails/article/'.$image->url)}}">
            </li>
        @endforeach
    </ul>
    </div>
    <div class="col-xs-12 col-sm-8">
        <img src="{{URL::to('uploads/article/'.$article->image)}}">
        <p></p>
        <a href="{{URL::to('dich-vu.html')}}"><i class="glyphicon glyphicon-fast-backward"></i> Quay lại danh sách dịch vụ</a>
    </div>
</div>
<hr>
</div>
@stop