<div class="navbar navbarphongee hidden-print" role="navigation">
    <div class="">
        <div class="navbar-inner">
            {{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
            {{--*/ $cattree = Vcategory::shopCatTree(((isset($actCat->id))?$actCat->id:0),$categories); /*--}}
            {{$cattree}}
        </div>
    </div>
</div>