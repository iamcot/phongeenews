@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div id="cartpage" class="container-fluid">
    <div class="row-fluid wrap">
        @if(Session::has('orderid'))
         <div class="well borderblue text-center" id="thankyoupage" style="font-weight: 300">
            <h3>Cảm ơn bạn đã mua hàng tại <a href="{{URL::to('/')}}">
                    <img src="{{URL::to('/public/logo.png')}}" style="max-width: 180px;">
                </a>
            </h3>
             <p>Mã đơn hàng của bạn là #{{Session::get('orderid')}}</p>
             <p>Thời gian giao hàng dự kiến là <b>48 giờ</b>, không kể thứ 7 & Chủ nhật.</p>
            <br>
             <p><b>Lưu ý:</b> Nhằm xử lí đơn hàng nhanh,<br> có thể chúng tôi sẽ không gọi điện để xác nhận đơn hàng.</p>
         </div>
        <div class="clear"></div>
        @endif
    </div>
</div>
@stop

