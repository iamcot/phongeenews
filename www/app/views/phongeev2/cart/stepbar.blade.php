<div id="stepbar">
    <hr>
    <div class="col-xs-4 step " id="step1">
        <a href="{{URL::to('cart')}}" class="stepcircle @if($orderstep > 1) bg-color-red @endif">@if($orderstep > 1) <i class="fa fa-check"></i>
            @else 1 @endif
        </a>
        <div class="steptext @if($orderstep > 1) txt-color-red @endif">Giỏ hàng</div>
    </div>
    <div class="col-xs-4 step" id="step2">
        <a href="{{URL::to('cart/step/2')}}" class="stepcircle @if($orderstep > 2) bg-color-red @elseif($orderstep==2) current @endif">@if($orderstep > 2) <i class="fa fa-check"></i>
            @else 2 @endif
        </a>
        <div class="steptext @if($orderstep > 2) txt-color-red  @elseif($orderstep==2) current @endif">Địa chỉ giao hàng</div>
    </div>
    <div class="col-xs-4 step" id="step3">
        <a href="{{URL::to('cart/step/3')}}" class="stepcircle @if($orderstep > 3) bg-color-red @elseif($orderstep==3) current @endif">@if($orderstep > 3) <i class="fa fa-check"></i>
            @else 3 @endif
        </a>
        <div class="steptext @if($orderstep > 3) txt-color-red  @elseif($orderstep==3) current @endif">Thanh toán</div>
    </div>
    <div class="clear"></div>
</div>
<br><br>