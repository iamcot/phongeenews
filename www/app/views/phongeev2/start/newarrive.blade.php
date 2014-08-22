<div  class="mycontainer wrap widgetblock">
    <h1 class="text-center">
        Sản phẩm mới nhất
    </h1>
    <p class="text-center title-sub" >Những sản phẩm vừa được Phongee Color cập nhật.</p>
    <div class="row-fluid widgetcontent">
        <ul class="grid row sample-show-hide"
            ng-show="lists.current_page == new.current_page"
            ng-repeat="lists in new.page"
            ng-include="'{{URL::to('ajax/listitemjs')}}'">
        </ul>
        <div class="navigation  pull-right">
            <ul class="list-inline">
                <li ng-if="new.current_page > 1"><a href="" ng-click="loadwideget('new',1,new.per_page)"><i class="fa fa-angle-left"></i></a></li>
                <li ng-repeat="page in [] | paging:new.last_page">
                    <a href="" ng-click="loadwideget('new',page,new.per_page)" class="@{{page==new.current_page && 'active'}}">@{{page}}</a>
                </li>
                <li ng-if="new.current_page < new.last_page"><a ng-click="loadwideget('new',bestsell.last_page,new.per_page)"><i class="fa fa-angle-right"></i></a></li>
            </ul>
        </div>
    </div>
</div>