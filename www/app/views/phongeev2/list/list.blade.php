@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div class="mycontainer wrap lists" itemscope itemtype="http://schema.org/ItemList">

    @if($actCat!='search' && $actCat->isnews==1)
    @include(Config::get('shop.theme').'/list/listnews')
    @else
    <ul class="row-fluid">
        @foreach($lists as $list)
            @include(Config::get('shop.theme').'/list/listitem')
        @endforeach
    </ul>
    <div class="clearfix"></div>
    <div class="pull-right">{{ $lists->links() }}</div>
    <div class="clearfix"></div>
    @endif
</div>
@include(Config::get('shop.theme').'/start/topfooter')
@stop
@section('jscript')
<script>
    function changeOrder(select) {
        $("input[name=listorder]").val(select);
            $("#listorderform").submit();
    }
    function opendropdown(){
        $('#ordermenu').addClass("open");
    }
    $('.dropdown-toggle').dropdown();
    function showmenu(){
        $("#listsubmenu").toggle();
    }
    $('body').click(function() {
        $('#listsubmenu').hide();
    });
    function hidedropmenu(){
        //$('#ordermenu').removeClass("open");
        alert("dd");
    }
</script>
@stop