<div id="footer" class="hidden-print">
    <div class="mycontainer">
        <div class="subfooter ">
        <div class="col-xs-12 col-md-3 hidden-xs hidden-sm" style="overflow: hidden">
            <div class="fb-like-box" data-href="https://www.facebook.com/phongee.vn" data-width="100%" data-colorscheme="dark" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false"></div>
        </div>
        <div class="col-xs-12 col-md-9">
            <div class="footbox">
                <h2 class="txt-color-red">Tài khoản của bạn</h2>
                <p><a>Trạng thái đơn hàng</a></p>
                <p><a>Lịch sử đơn hàng</a></p>
                <p><a>Danh sách yêu thích</a></p>
                <p><a>Thông tin tài khoản</a></p>
                <p><a>Quên mật khẩu</a></p>
            </div>
            <div class="footbox">
                <h2  class="txt-color-red">Hỗ trợ khách hàng</h2>
                <p>Câu hỏi thường gặp</p>
                <p>Chính sách thành viên</p>
                <p>Chính sách bảo hành</p>
                <p>Chính sách đổi trả</p>
                <p>Hướng dẫn đặt/mua hàng</p>
            </div>
            <div class="footbox">
                <h2 class="txt-color-red">Về Phongee Color</h2>
                <p>Giới thiệu & Hình ảnh</p>
                <p>Hợp tác & Liên kết</p>
                <p>Chính sách bảo mật</p>
                <p>Điều khoản sử dụng</p>
                <p>Tuyển dụng</p>
            </div>
            <div class="footbox">
                <h2 class="txt-color-red">Hệ thống chi nhánh</h2>
                {{--*/ $stores = Myconfig::where('lavar', '=', 'store')->first(); /*--}}
                @foreach(explode("\n",$stores->lavalue) as $store)
                <p><b>></b> {{$store}}</p>
                @endforeach

            </div>
            <div class="col-xs-12">
                <h2 class="txt-color-red">Chấp nhận các hình thức thanh toán</h2>
                <ul>
                    <li class="tticon icon-cash"></li>
                    <li class="tticon icon-visa"></li>
                    <li class="tticon icon-mcard"></li>
                    <li class="tticon icon-atm"></li>
                    <li class="tticon icon-ck"></li>
                    <li class="tticon icon-ib"></li>
                </ul>
            </div>
          </div>

    </div>


    </div>
    <div class="clearfix"></div>
    <div id="copyright" class="">
        © 2014 Bản quyền thuộc về Công ty CPTM Dịch vụ Nhất Phong. Giấy chứng ĐKKD số 0309051786 do Sở Kế Hoạch và Đầu Tư TPHCM cấp ngày 22/06/2009

    </div>
</div>