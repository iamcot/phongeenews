@section('footer')

<div id="footer" class="hidden-print">
    <div class="mycontainer wrap">
        <div class="subfooter">
        <div class="col-xs-12 col-md-6 hidden-xs hidden-sm">
            <div class="fb-like-box" data-href="https://www.facebook.com/nhaccuphukien" data-width="100%" data-colorscheme="dark" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false"></div>

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
                <dt itemprop="legalName"><span class="glyphicon glyphicon-heart"></span> <strong>GuitarAndGears</strong></dt>
                <dl>
                    <address>
                        <div  itemprop="address"><span class="glyphicon glyphicon-map-marker"></span> TP Hồ Chí Minh</div>
                        <div  itemprop="telephone"><span class="glyphicon glyphicon-phone-alt"></span> 0906 947 847</div>
                    </address>

                </dl>
            </dl>
        </div>
        <div class="col-xs-6 col-md-3">

        </div>
    </div>

    <div class="clearfix"></div>
    <div id="copyright" class="">
        <small> Copyright &copy; {{date("Y")}} GuitarAndGears. All rights reserved.
        </small>
        <ul class="socials">
            <li><a class="facebook" href="https://www.facebook.com/nhaccuphukien" target="_blank"></a></li>
            <li><a class="youtube" href="https://www.youtube.com/user/GuitarAndGears" target="_blank"></a></li>
<!--            <li><a class="twitter" href="#" target="_blank"></a></li>-->
<!--            <li><a class="gplus" href="#" target="_blank"></a></li>-->
<!--            <li><a class="dribble" href="#" target="_blank"></a></li>-->
<!--            <li><a class="vimeo" href="#" target="_blank"></a></li>-->
<!--            <li><a class="delicious" href="#" target="_blank"></a></li>-->
            <li><a class="rss" href="#" target="_blank"></a></li>
        </ul><!-- end socials -->
    </div>
    </div>
</div>
@show