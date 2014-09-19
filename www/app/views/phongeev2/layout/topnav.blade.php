<div class="navbar navbarphongee hidden-print" role="navigation">
    <div class="">
        <div class="navbar-inner">
            {{--*/ $categories = Vcategory::getCategoriesTree(); /*--}}
            {{--*/ $cattree = Vcategory::shopCatTree(((isset($actCat))?$actCat->id:0),$categories) /*--}}
            {{$cattree}}
<!--            <ul class="nav navbar-nav navbar-right" id="facebookprofile">-->
<!--                @include("user")-->
<!--            </ul>-->
        </div>
    </div>
</div>