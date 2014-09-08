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
                    {{Form::textarea("listpic",((count($slide)>0)?$slide->lavalue:''),array('rows'=>'3','style'=>'width:100%','title'=>'Mỗi dòng là 1 hình, cấu trúc mỗi dòng: tên hình|caption|link'))}}
             </fieldset>
            <fieldset>
                <legend>Danh sách chi nhánh</legend>
                {{Form::textarea("liststore",((count($stores)>0)?$stores->lavalue:''),array('rows'=>'3','style'=>'width:100%','title'=>'Mỗi dòng là 1 cửa hàng'))}}
            </fieldset>
            <fieldset>
                <legend>Quảng cáo trên sidebar</legend>
                {{Form::textarea("sidebarads",((count($sidebarads)>0)?$sidebarads->lavalue:''),array('rows'=>'3','style'=>'width:100%','title'=>'Mỗi dòng là 1 hình, cấu trúc mỗi dòng: tên hình|caption|link'))}}
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