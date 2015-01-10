@extends('admin/pageadmin')
@section('admincontent')
<div class="container-fluid">
<h1>Thêm bài viết</h1>
@if(isset($message))
<div class="alert alert-info">{{ $message }}</div>
@endif
<div>
    {{ Form::open() }}
        <div class="row-fluid">
            <div class="col col-xs-12 col-sm-6">
                @if($article)
                <input type="hidden" name="id" value="{{$article->id}}">
                @endif
                <div class="form-group">
                    <label for="title">Tiêu đề</label>
                    <input type="text" class="form-control" name="title" id="title" placeholder="Tiêu đề bài viết"
                    value="{{$article?$article->title:''}}">
                </div>
                <div class="form-group">
                    <label for="url">URL</label>
                    <input type="text" class="form-control" name="url" id="url" placeholder="url"
                    value="{{$article?$article->url:''}}">
                </div>
                <div class="form-group">
                    <label for="categories">Loại dự án</label>
                    <select class="form-control" id="categories" name="fk_categories">
                        @foreach(Config::get('site.projectCategory') as $k=>$cat)
                        <option value="{{$k}}" {{(isset($article)&& $cat == $article->fk_categories)?'selected':''}}>{{$cat}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="categories">Loại porfolio</label>
                    <select class="form-control" id="type" name="type">
                        <option value="architect" {{isset($article)&& $article->type=='architect'?'selected':''}}>Architect</option>
                        <option value="furniture" {{isset($article)&& $article->type=='furniture'?'selected':''}}>Furniture</option>
                        <option value="construction" {{isset($article)&& $article->type=='construction'?'selected':''}}>Construction</option>
                        <option value="service" {{isset($article)&& $article->type=='service'?'selected':''}}>Order Service</option>
                    </select>
                </div>
                <div class="form-group ">
                    <label for="size">Size</label>
                    <input type="text" class="form-control" id="size" placeholder="Kích thước" name="size"
                    value="{{$article?$article->size:''}}">
                </div>
                <div class="form-group">
                    <label for="address">Địa chỉ</label>
                    <input type="text" class="form-control" id="address" placeholder="Địa chỉ" name="address"
                    value="{{$article?$article->address:''}}">
                </div>
                <div class="form-group ">
                    <label for="contract">Loại Hợp đồng</label>
                    <select class="form-control" id="contract" multiple name="contract[]">
                        @foreach(Config::get('site.contract') as $k=>$contract)
                        <option value="{{$k}}" {{in_array($k,$contracts)?'selected':''}}>{{$contract}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group ">
                    <label for="desc">Thông tin</label>
                    <textarea class="form-control" id="desc" name="desc">{{$article?$article->desc:''}}</textarea>
                </div>
                <div class="">
                    <button type="submit" class="btn btn-success" name="save" value="save"><i class="glyphicon glyphicon-floppy-disk"></i> Lưu bài viết</button>
                </div>
                 <br>
                 <br>
            </div>
            <div class="col col-xs-12 col-sm-6">
                <input id="fileupload" type="file" name="files[]" data-url="{{URL::to('/upload/calljupload/article')}}" multiple >
                <div id="progress" style="width:50%">
                    <div class="bar" style="width: 0%;"></div>
                </div>
                <br>
                <ul id="uploadlinks" class="row-fluid list-unstyled">
                @if(count($images)>0)
                    @foreach($images as $image)
                        <li class="col col-xs-3 col-sm-4" id="{{ substr($image,0,(strlen($image)-4))  }}">
                            <img src="{{URL::to('uploads/thumbnails/article/'.$image)}}">
                            <a href="javascript:delpic('{{$image}}')" class="delimage"><i class="glyphicon glyphicon-remove-sign"></i></a>
                        </li>
                    @endforeach
                    @endif
                </ul>
            </div>

    <textarea name="images" style="display: none">@foreach($images as $image) {{$image."\n"}} @endforeach</textarea>
    {{ Form::close() }}
</div>
</div>
@stop
@section('script')
@parent
<script>
function delpic(filename){
    $.ajax({
        url:"{{URL::to('/upload/delpic/article')}}/"+filename,
        success:function(msg){
//            if(msg==1){
                $('#uploadlinks #'+fileNameNotExt(filename)).remove();
                $('textarea[name=images]').val($('textarea[name=images]').val().replace(filename,""));
//            }
        }
    });
}

function fileNameNotExt(filename){
    return filename.substring(0,(filename.length - 4))
}
$('#fileupload').fileupload({
    dataType: 'json',
    start:function(e){
        $('#progress .bar').css(
            'width',
            '0%'
        );
    },
    done: function (e, data) {
        $.each(data.result.files, function (index, file) {
            $("textarea[name=images]").append(file.name+"\n");
            $("#uploadlinks").append('' +
             '<li class="col col-xs-3 col-sm-4" id="'+fileNameNotExt(file.name)+'">' +
                '<img src="'+file.thumbnailUrl+'">' +
                '<a href="javascript:delpic(\''+file.name+'\')" class="delimage"><i class="glyphicon glyphicon-remove-sign"></i></a>' +
                '</li>');
            $('#progress .bar').css(
                'width',
                '0%'
            );
        });
    },
    progressall: function (e, data) {
        var progress = parseInt(data.loaded / data.total * 100, 10);
        $('#progress .bar').css(
            'width',
            progress + '%'
        );
    }
});
</script>
@stop