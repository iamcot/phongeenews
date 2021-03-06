@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div id="details" class="mycontainer wrap">

<div id="maininfo" itemscope itemtype="http://schema.org/Product">
{{--*/ $morepic = Image::where("laproduct_id",'=',$oProduct->id)
->where('lapic','!=',$oProduct->laimage)
->orderBy('id')
->take(3)
->get() /*--}}


<div class="col xs-12 col-sm-6 col-md-6" itemprop="image">
    <!-- Nav tabs -->
    <ul id="detailsinfotab" class="nav nav-tabs" role="tablist">
        <li>&nbsp;</li>
        <li class="active"><a href="#picbox" role="tab" data-toggle="tab">Chi tiết</a></li>
        <li><a href="#video" role="tab" data-toggle="tab">Videos</a></li>
        <li><a href="#news" role="tab" data-toggle="tab">Bài viết</a></li>
        <li><a href="#comment" role="tab" data-toggle="tab">Ý kiến người dùng</a></li>
    </ul>
    <div class="tab-content">
        <div id="comment" class="tab-pane">
            <div class="fb-comments" data-href="{{Request::url()}}" data-numposts="5" data-colorscheme="light" data-width="100%"></div>
        </div>
        <div id="video" class="tab-pane ">
            {{--*/ $video = Vproduct::where('laproduct_id','like','%'.$oProduct->id.'%')->where('youtubeid','!=','')->get(); /*--}}
            @if($video)
                @foreach($video as $v)
            <iframe width="100%" height="315" src="//www.youtube.com/embed/{{$v->youtubeid}}" frameborder="0" allowfullscreen></iframe>

            @endforeach
            @endif
        </div>
        <div id="news" class="tab-pane">
            {{--*/ $anews = Vproduct::where('laproduct_id','like','%'.$oProduct->id.'%')->where('youtubeid','=','')->get(); /*--}}
            @if($anews)
            @foreach($anews as $news)
            <article class="" role="article">

                <div class="entry-main">

                    <div class="entry-header">
                        <h3 class="entry-title">
                            <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">{{$news->latitle}}</a>
                        </h3>
                        <span>Ngày đăng: {{date('d/m/Y H:i',strtotime($news->created_at))}}</span>
                    </div>
                    @if($news->laimage!='')
                    <div class="entry-media">
                        <div class="imgHolder">
                            <a href="{{URL::to($news->cat1url.'/'.$news->laurl.'.html')}}">
                                <img src="{{URL::to('/uploads/product/'.$news->laimage)}}" alt="">                                                    </a>
                        </div>
                    </div>
                    @endif
                    <div class="entry-content">
                        {{$news->lainfo}}
                    </div>
                </div><!-- end entry-main -->
            </article>
            @endforeach
            @endif
        </div>

        <div id="picbox" class="tab-pane active">
        @if($oProduct->laimage != '')
            <div id="picbox-mainimg" >
                <a href="{{URL::to('/uploads/product/'.$oProduct->laimage)}}" class="cloud-zoom" rel="adjustX: 50, adjustY:-4" id="zoom1">
                    <img  rel="image_src" id="mainpicimg" src="{{URL::to('/uploads/product/'.$oProduct->laimage)}}" >
                </a>

            </div>
            <div class="" id="picbox-morepic">
                <a href="{{URL::to('/uploads/product/'.$oProduct->laimage)}}"  class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '{{URL::to('/uploads/product/'.$oProduct->laimage)}}' ">
                    <img src="{{URL::to('/uploads/thumbnails/product/'.$oProduct->laimage)}}">
                </a>
                @foreach($morepic as $pic)
                <a href="{{URL::to('/uploads/product/'.$pic->lapic)}}" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '{{URL::to('/uploads/product/'.$pic->lapic)}}' ">
                    <img src="{{URL::to('/uploads/thumbnails/product/'.$pic->lapic)}}">
                </a>
                @endforeach

            </div>
            @endif
            <div class="clearfix"></div>
            <br>

            <div style="height: 20px;">
                <a href="" class=" addtowishlist">
                    Yêu thích:
                </a>
                <div class="col-xs-12 col-sm-8 pull-right">
                    @if($oProduct->sumvariant > 0)
                    {{--*/ $variants = Product::getVariants($oProduct->id) /*--}}
                    <dl>
                        <dd>
                            <ul id="variant" class="list-inline">
                                <li style="font-size:9pt">Chọn mẫu:</li>
                                <li><a class="variantthumb" title="Reset" href="javascript:changevariant(0,{{$oProduct->id}})"><i class="glyphicon glyphicon-refresh"></i></a></li>
                                @foreach($variants as $vari)
                                <li>
                                    <a href="javascript:changevariant({{$vari->id}},{{$oProduct->id}})"
                                       class="bbcloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '{{URL::to('/uploads/product/'.$vari->laimage)}}' " >
                                        <img src="{{URL::to('/uploads/thumbnails/product/'.$vari->laimage)}}"
                                             title="{{$vari->lashortinfo}}" class="variantthumb">
                                    </a>
                                </li>
                                @endforeach
                            </ul>
                        </dd>
                        <!--                        <dt>Mẫu đã chọn:</dt>-->
                        <!--                        <dd id="variantselectname">-->
                        <!---->
                        <!--                        </dd>-->
                    </dl>
                    @endif
                </div>
            </div>
            <div class="clear"></div>
            <hr>
            <div style="padding-top: 10px;">
                <div class="col-xs-6 no-padding">
                    <div style="float:left;" class="fb-like" data-href="{{Request::url()}}" data-layout="button_count"
                         data-action="like" data-show-faces="false" data-share="false"></div>
                    <div style="float:left;display: block;width: 5px; height: 1px;"></div>
                    <div class="g-plusone" style="float:left;"></div>
                </div
                <div class="col-xs-6">
                    <ul class="lisocial pull-right">
                        <li>Chia sẻ:</li>
                        <li class="detailssocical face"></li>
                        <li class="detailssocical gplus"></li>
                        <li class="detailssocical zing"></li>
                        <li class="detailssocical twitter"></li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
            <hr>
        </div>
    </div>
</div>


<div id="productinfo" class="col-xs-12 col-sm-6 col-md-6">
    <!--            <h3  itemprop="name">{{$oProduct->latitle}}</h3>-->
    <p id="detailsTitle">
        {{$oProduct->latitle}}
    </p>
    <hr>
    <div class="priceblock" style="position: relative">
        <p class="detailsPrice col-xs-12 col-sm-8" style="padding-left: 0">
            <b>{{number_format($oProduct->laprice,0,',','.')}} VNĐ</b> <span class="text-10">(Cửa hàng)</span>

        </p>

        <p class="detailsPrice col-xs-12 col-sm-8 txt-color-red" style="padding-left: 0">
            <b>{{number_format($oProduct->laprice,0,',','.')}} VNĐ</b> <span class="text-10">(Online)</span>
        </p>

        <div class="ratingblock" class="col-xs-12 col-sm-4 ">
            <p id="rating" style="padding-right: 0"></p>
            <span class="text-10 pull-right">(Đánh giá bởi PhonGee)</span>
        </div>

        <div class="clear"></div>
    </div>
    <hr>
    <div>
        <ul class="infotextsmall">
            <li style="width: 45%;float:left">
                <div><strong>Tình trạng:</strong>
                    @if($oProduct->laamount > 0) Đang có hàng
                    @elseif($oProduct->laamount == 0) Hết hàng
                    @elseif($oProduct->laamount == -1)
                        {{date('d/m',$oProduct->ladatenew)}} có hàng
                    @endif
                </div>
                <div><strong>Bảo hành:</strong> 12 tháng</div>
            </li>
            <li style="float:right">
                <div><strong>Giao hàng:</strong> trong vòng 48 giờ</div>
                <div><strong>Lượt xem:</strong> {{$oProduct->laview}}</div>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
    <hr>
    <div>
        <!--
        {{ Form::open(array(
            'url' => '/cart/add',
            'class'=>'form-inline',
        )) }}
            {{Form::hidden('laproduct_id',$oProduct->id)}}
            {{Form::hidden('variantname','',array('id'=>'variantselectnameinput'))}}
            {{Form::hidden('caturl',$oProduct->cat1url)}}
            {{Form::hidden('producturl',$oProduct->laurl)}}
        <div class="form-group">
            {{Form::text('amount',1,array('class'=>'form-control','id'=>'cartamount') ) }}
        <button id="addtocart" class="btn btn-default btn-success" {{(($oProduct->sumvariant > 0)?'disabled="disabled"':'')}} ><span class="glyphicon glyphicon-shopping-cart"></span> Mua</button>
        </div>
        {{ Form::close() }}
      -->
    </div>
    @if(trim($oProduct->lainfo) != '')
    <div id="productinfocontent">
        {{$oProduct->lainfo}}
    </div>
    @endif

    {{ Form::open(array(
    'url' => '/cart/add',
    'class'=>'form-inline',
    )) }}
    {{Form::hidden('laproduct_id',$oProduct->id)}}
    {{Form::hidden('variantname','',array('id'=>'variantselectnameinput'))}}
    {{Form::hidden('caturl',$oProduct->cat1url)}}
    {{Form::hidden('producturl',$oProduct->laurl)}}
    <div class="btn-group col-xs-12 col-sm-5 no-padding">
        <div id="soluong" class="pull-left">Số lượng&nbsp;</div>
        <button type="button" class="btn btn-white">-</button>
        <input type="text" id="cartamount" name="amount" style="" value="1">
        <button type="button" class="btn btn-white">+</button>
    </div>
    <div class="col-xs-12 col-sm-7 no-padding text-right">
        <button id="addtocart" class="  details-cart-button addcart"
        {{(($oProduct->sumvariant > 0)?'disabled="disabled"':'')}}>
            <div style="text-align: center;line-height: 10px;vertical-align: baseline;position: relative">
                        <span class="carticon"></span>

                        <div style="display: inline-block;vertical-align: top;line-height: 20px">Mua hàng</div>
                    </div>
        </button>
    </div>
    {{ Form::close() }}

    <div class="clear"></div>
    <br>
    <hr>
    <div class="clear"></div>
    <div class="col-xs-6 mhtq">

    </div>
    <div class="col-xs-1 delim">

    </div>
    <div class="col-xs-5 ghtn">

    </div>
    <div class="clear"></div>

    <hr class="dotted">
    <div class="detailsthanhtoan">
        <h2 class="txt-color-red">Chấp nhận thanh toán</h2>
        <ul>
            <li class="tticon icon-cash"></li>
            <li class="tticon icon-visa"></li>
            <li class="tticon icon-mcard"></li>
            <li class="tticon icon-atm"></li>
            <li class="tticon icon-ck"></li>
            <li class="tticon icon-ib"></li>
        </ul>
        <div class="clear"></div>

    </div>
    <hr>
    <div class="col-xs-6 no-padding infotextsmall"><b>Category: </b>{{$oProduct->cat1name}}</div>
    <div class="col-xs-6 no-padding infotextsmall"><b>Tags: </b>{{$oProduct->lakeyword}}</div>
    <div class="clear"></div>
</div>

</div>

<div class="clear"></div>
<br><br>

<div class="mycontainer wrap widgetblock" style="padding-left: 15px;padding-right: 15px;">
    <div class="row" style="padding-left: 15px;">
        <h2>
            Sản phẩm liên quan
        </h2>
    </div>


    <div class="row  no-padding widgetcontent detailsrelate">


        {{--*/ $lists = Vproduct::where('isnews','0')
        ->orderby('laview','desc')
        ->orderby('id','desc')
        ->take(4)
        ->get();
        /*--}}

        <ul class="grid  no-padding">
            @foreach($lists as $list)
            @include(Config::get('shop.theme').'/list/listitem')
            @endforeach
        </ul>
    </div>

</div>
<br><br>
</div>

@include(Config::get('shop.theme').'/start/topfooter')

@stop
@section('jscript')
@parent
<script>
    $("#rating").raty({score: 3, starType: 'i'  });
    $(".variantthumb").tooltip();
    $('#myTab a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
    })
    function changepic(file) {
        $("#mainpicimg").attr('src', "{{URL::to('/uploads/product/')}}/" + file);
        $('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();

    }
    function changevariant(id,orgid) {
        $("#variantselectname").html("");
        $("#variantselectname").removeClass("label label-warning");
        $("#variantselectname").addClass("ajaxload");
        $.ajax({
            url: "{{URL::to('/ajax/getvariant')}}/" + id+"/"+orgid,
            success: function (msg) {
                var response = eval(msg);
                $("#mainpicimg").attr('src', "{{URL::to('/uploads/product/')}}/" + response.lapic[0].lapic);
                var morepic = '';
                for(var i=0;i<response.lapic.length;i++){
                    morepic += '<a href="{{URL::to("/uploads/product/")}}/'+response.lapic[i].lapic+'"  ' +
                     'class="cloud-zoom-gallery" rel="useZoom: \'zoom1\', smallImage: \'{{URL::to('/uploads/product/')}}/'+response.lapic[i].lapic+'\' ">' +
                      '<img src="{{URL::to('/uploads/thumbnails/product/')}}/'+response.lapic[i].lapic+'"' +
                       '></a>';
                }

                $("#picbox-morepic").html(morepic);
                $('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();
                if (id!=0){
                    $("input[name=laproduct_id]").val(msg.id);
                    $("#variantselectnameinput").val(msg.lashortinfo);
                    $("#addtocart").removeAttr("disabled");
                }
                else {
                    $("input[name=laproduct_id]").val('');
                    $("#variantselectnameinput").val('');
                    $("#addtocart").addAttr("disabled");
                }
                $(".variantthumb").tooltip();

            }
        });
    }
    $('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();
</script>
@stop