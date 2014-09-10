@extends('layout')
@section('body')
{{--*/ $adminNav = Config::get('admin.adminnav') /*--}}
{{--*/ $strActCat = $adminNav[$actCat] /*--}}
    <div class=" panel panel-default">
             <div class="panel-heading"> {{trans('common.'.$strActCat['title'])}}</div>
        <div class="panel-body">
            {{Form::open(array(
            'url'=>'admin/config'))}}
             <fieldset>
                 <legend>Slider</legend>
                    <label>ID Bài viết chứa hình ảnh Slider</label> &nbsp;<input style="width: 50px" name="sliderid" value="{{(isset($sliderid))?$sliderid->lavalue:'1'}}"> &nbsp;@if(isset($sliderid))<a target="_blank" href="{{URL::to('admin/editproduct/'.$sliderid->lavalue)}}">Đi đến bài viết</a>@endif
                 <br>
                    <label for="sliderorrder0">Hiện theo sắp xếp</label> &nbsp;<input type="radio" name="sliderorder" value="order" id="sliderorrder0" {{(isset($sliderorder) && $sliderorder->lavalue=='order' )?'checked':''}} >
                 &nbsp;
                 <label for="sliderorrder1">Hiện ngẫu nhiên</label> &nbsp;<input type="radio" name="sliderorder" value="rand" id="sliderorrder1" {{(isset($sliderorder) && $sliderorder->lavalue=='rand' )?'checked':''}} >
             </fieldset>
            <fieldset>
                <legend>Danh sách chi nhánh</legend>
                {{Form::textarea("liststore",((count($stores)>0)?$stores->lavalue:''),array('rows'=>'3','style'=>'width:100%','title'=>'Mỗi dòng là 1 cửa hàng'))}}
            </fieldset>

            {{ Form::submit("Lưu",array('class'=>'btn btn-success')) }}
            {{Form::close()}}
        </div>

    </div>
@stop
@section('jscript')
<script>
    $('textarea').tooltip();
</script>
@stop