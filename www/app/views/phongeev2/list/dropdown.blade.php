<div class="pull-right" style="position: relative;margin-top:10px;">
    <form name="listorderform" id="listorderform">
        <input type="hidden" name="listorder">

        <div class="dropdown" id="ordermenu">
            <a data-toggle="dropdown" href="#" class="dropdown-toggle" onmouseover="opendropdown()">Sắp xếp <span class="caret"></span></a>
            <ul  class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                <li>
                    <a href="javascript:changeOrder('giatang')">Giá tăng</a>
                </li>
                <li>
                    <a href="javascript:changeOrder('giagiam')">Giá Giảm</a>
                </li>
                <li>
                    <a href="javascript:changeOrder('tentang')">Tên tăng</a>
                </li>
                <li>
                    <a href="javascript:changeOrder('tengiam')">Tên giảm</a>
                </li>
            </ul>
        </div>
    </form>
    <br><br>
</div>