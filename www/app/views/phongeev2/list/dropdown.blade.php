<div class="pull-right" style="position: relative;margin-top:10px;">
    <form name="listorderform" id="listorderform">
        <input type="hidden" name="listorder">

        <ul id="ordermenu">
            <li>
                <a  href="#" class="dropdown-toggle">Sắp xếp
                    <span class="arrow fa fa-long-arrow-down"></span></a>
                <ul  class="mydroomenu" role="menu" aria-labelledby="dLabel">
                    <li>
                        <a href="javascript:changeOrder('banchay')">Bán chạy</a>
                    </li>
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
            </li>
        </ul>
    </form>
    <br><br>
</div>