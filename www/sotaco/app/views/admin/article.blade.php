@extends('admin/pageadmin')
@section('admincontent')
<div class="container-fluid">
<h1>{{ Config::get('admin.adminnav.'.$actCat.'.title') }}

<a class="btn btn-primary pull-right" href="{{URL::to('admin/editarticle')}}"><i class="glyphicon glyphicon-plus"></i> Thêm mới</a>
</h1>

<div class="table-responsive">
    <table class="table table-bordered">
        <thead>
            <th class="col col-xs-1">ID</th>
            <th class="col col-xs-1"></th>
            <th>Title</th>
            <th>Type</th>
            <th>URL</th>
            <th class="col-xs-1"></th>
        </thead>
        <tbody>
            @foreach($articles as $article)
            <tr>
                <td>{{$article->id}}</td>
                <td>
                    <img src="{{URL::to('uploads/thumbnails/article/'.$article->image)}}" style="width: 80px">
                </td>
                <td><a href="{{URL::to('admin/editarticle/'.$article->id)}}">{{$article->title}}</a></td>
                <td>{{$article->type}}</td>
                <td>{{$article->url}}</td>
                <td><a title="Xóa sản phẩm này" href="{{URL::to('admin/deletearticle/'.$article->id)}}"><i class="glyphicon glyphicon-remove"></i></a></td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{ $articles->links() }}
</div>
</div>
@stop