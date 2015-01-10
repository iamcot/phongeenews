@extends(Config::get('site.theme').'/layout/page')
@section('pagecontent')
<div id="content"  class="wrap">
            <div id="sidebar" class="col-xs-12 col-sm-3">
                <h1>Liên hệ</h1>
                <ul class="list-unstyled">
                    <li>
                        <a href="#">Tư vấn thiết kế</a>
                    </li>
                    <li>
                        <a href="#">Tư vấn thi công</a>
                    </li>
                    <li>
                        <a href="#">Chăm sóc khách hàng</a>
                    </li>
                </ul>
            </div>
            <div id=""  class="col-xs-12 col-sm-9">
                <article>
                    <h1>CÔNG TY KIẾN TRÚC - XÂY DỰNG SOTACO</h1>
                    <div class="content">
                        <ul class="list-unstyled" style="margin-left: 0">
                            <li>
                                <label>MST:</label> 0312911801
                            </li>
                            <li>
                                <label>Address: </label> 363/5 Bình Lợi, P.13, Q.Bình Thạnh, Tp,HCM
                            </li>
                            <li>
                                <label>Điện thoại: </label> 0866 839 839 <label> - Fax: </label> 0862 947 947
                            </li>
                            <li>
                                <label>Số tài khoản: </label> 0721000558830 - NH Vietcombank - CN Kỳ Đồng
                            </li>
                        </ul>
                        <p><i class="glyphicon glyphicon-map-marker"></i><strong> Bản đồ</strong></p>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15674.873000122381!2d106.70478778857415!3d10.832860329277418!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528605f6433a9%3A0xd435262d970d2cd3!2zMzYzIELDrG5oIEzhu6NpLCAxMywgQsOsbmggVGjhuqFuaCwgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1416731044413" width="800" height="400" frameborder="0" style="border:0"></iframe>
                        <p></p>
                        <p><i class="glyphicon glyphicon-inbox"></i><strong> Quý khách có thể gửi yêu cầu tại đây</strong></p>
                        <form role="form" id="form-contact" class="col-xs-7">
                            <div class="form-group">
                                <label for="name">Họ tên</label>
                                <input type="text" class="form-control" id="name" placeholder="Họ tên quý khách">
                            </div>
                            <div class="form-group">
                                <label for="email">Địa chỉ email</label>
                                <input type="email" class="form-control" id="email" placeholder="Địa chỉ email">
                            </div>
                            <div class="form-group">
                                <label for="phone">Điện thoại</label>
                                <input type="text" class="form-control" id="phone" placeholder="Điện thoại liên lạc">
                            </div>
                            <div class="form-group">
                                <label for="address">Địa chỉ liên hệ</label>
                                <textarea type="text" class="form-control" id="address" placeholder="Địa chỉ liên hệ"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="request">Yêu cầu của quý khách</label>
                                <textarea type="text" class="form-control" id="request" placeholder="Yêu cầu"></textarea>
                            </div>
                            <button type="submit" class="btn btn-default pull-right"><i class="glyphicon glyphicon-send"></i> Gửi</button>
                        </form>
                        <div class="clear"></div>
                        <hr>
                    </div>
                </article>
            </div>
            <div class="clear"></div>
        </div>
@stop