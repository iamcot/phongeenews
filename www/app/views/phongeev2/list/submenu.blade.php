<div class="listcartouter">
        <a id="cattoggle"" href="javascript:showmenu()"></a>
        {{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
        {{--*/ $cattree = Vcategory::subcattree(0,$categories) /*--}}
        {{$cattree}}
</div>
