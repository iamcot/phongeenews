<div class="listcartouter">
        <a id="cattoggle"" href="javascript:showmenu()"></a>
        {{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
        {{--*/ $cattree = Vcategory::subcattree(0,$categories) /*--}}
        {{$cattree}}
</div>
@section('jscript')
    @parent
    <script>
        function showmenu(){
            $("#listsubmenu").toggle();
        }
        $('body').click(function() {
            $('#listsubmenu').hide();
        });
    </script>
@stop
