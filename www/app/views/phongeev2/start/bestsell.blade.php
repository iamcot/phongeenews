<div class="mycontainer wrap widgetblock">
    <h1 class="text-center">
        Sản phẩm bán chạy
    </h1>

    <p class="text-center title-sub">Cam kết mang đến những sản phẩm mới nhất và tốt nhất.</p>

    <div class="row-fluid widgetcontent" >
        <ul class="grid row sample-show-hide"
            ng-show="lists.current_page == bestsell.current_page"
            ng-repeat="lists in bestsell.page"
            ng-include="'{{URL::to('ajax/listitemjs')}}'">
        </ul>
        <div class="navigation  pull-right">
            <ul class="list-inline">
                <li ng-if="bestsell.current_page > 1"><a href="" ng-click="loadwideget('bestsell',1,bestsell.per_page)"><i class="fa fa-angle-left"></i></a></li>
                <li ng-repeat="page in [] | paging:bestsell.last_page">
                    <a href="" ng-click="loadwideget('bestsell',page,bestsell.per_page)" class="@{{page==bestsell.current_page && 'active'}}">@{{page}}</a>
                </li>
                <li ng-if="bestsell.current_page < bestsell.last_page"><a ng-click="loadwideget('bestsell',bestsell.last_page,bestsell.per_page)"><i class="fa fa-angle-right"></i></a></li>
            </ul>
        </div>
    </div>


</div>