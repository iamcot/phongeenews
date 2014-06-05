@section('footer')

<div id="footer" class="hidden-print">
    <div class="mycontainer wrap">
        <div class="subfooter">
        <div class="col-xs-12 col-md-6 hidden-xs hidden-sm">
            <div class="fb-like-box" data-href="https://www.facebook.com/phongee.vn" data-width="445" data-colorscheme="dark" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false"></div>
        </div>
        <div class="col-xs-6 col-md-3">
            <dl>
                <dt>Thông tin</dt>
                <dd><a href="{{URL::to('/tin-tuc/gioi-thieu.html')}}"><span class="glyphicon glyphicon-chevron-right"></span> Giới thiệu</a></dd>
                <dd><a href="{{URL::to('/tin-tuc/ship-hang.html')}}"><span class="glyphicon glyphicon-chevron-right"></span> Mức phí và cách ship hàng</a></dd>
                <dd><a href="{{URL::to('/tin-tuc/doi-hang.html')}}"><span class="glyphicon glyphicon-chevron-right"></span> Quy định đổi - trả</a></dd>
                <dd><a href="{{URL::to('/tin-tuc/thanh-toan.html')}}"><span class="glyphicon glyphicon-chevron-right"></span> Thanh toán</a></dd>
            </dl>
            <dl itemscope itemtype="http://schema.org/Organization">
                <dt itemprop="legalName"><span class="glyphicon glyphicon-heart"></span> <strong>PhonGee</strong></dt>
                <dl>
                    <address>
                        <div  itemprop="address"><span class="glyphicon glyphicon-map-marker"></span> TP Hồ Chí Minh</div>
                        <div  itemprop="telephone"><span class="glyphicon glyphicon-phone-alt"></span> xxx.xxx.xxxx</div>
                        <div  itemprop="telephone"><span class="glyphicon glyphicon-phone-alt"></span> xxx.xxx.xxxx</div>
                    </address>

                </dl>
            </dl>
        </div>
        <div class="col-xs-6 col-md-3">

        </div>
    </div>
    </div>
    <div class="clearfix"></div>
    <div id="copyright" class="">
        <small> Copyright &copy; {{date("Y")}} by phongee.vn - một sản phẩm của <a class="label label-success" href="https://www.facebook.com/phongee.vn">PhonGee Color</a>
        </small>
        <ul class="socials">
            <li><a class="facebook" href="#" target="_blank"></a></li>
            <li><a class="twitter" href="#" target="_blank"></a></li>
            <li><a class="gplus" href="#" target="_blank"></a></li>
            <li><a class="dribble" href="#" target="_blank"></a></li>
            <li><a class="youtube" href="#" target="_blank"></a></li>
            <li><a class="vimeo" href="#" target="_blank"></a></li>
            <li><a class="delicious" href="#" target="_blank"></a></li>
            <li><a class="rss" href="#" target="_blank"></a></li>
        </ul><!-- end socials -->
    </div>
</div>
@show