@extends(Config::get('shop.theme').'/layout/page')
@section('pagecontent')
<div id="details" class="mycontainer wrap">
    <div id="maininfo"  itemscope itemtype="http://schema.org/Product">
        {{--*/ $morepic = Image::where("laproduct_id",'=',$oProduct->id)
        ->where('lapic','!=',$oProduct->laimage)
        ->orderBy(DB::Raw('RAND()'))
        ->take(3)
        ->get() /*--}}


        <div id="picbox" class="col xs-12 col-sm-6 col-md-6" itemprop="image">
            <div id="picbox-mainimg">
                <img rel="image_src" id="mainpicimg" src="{{URL::to('/uploads/product/'.$oProduct->laimage)}}">

            </div>
            <div  class="" id="picbox-morepic">
                <a href="javascript:changepic('{{$oProduct->laimage}}')" >
                    <img src="{{URL::to('/uploads/thumbnails/product/'.$oProduct->laimage)}}">
                </a>
                @foreach($morepic as $pic)
                <a href="javascript:changepic('{{$pic->lapic}}')" >
                    <img src="{{URL::to('/uploads/thumbnails/product/'.$pic->lapic)}}">
                </a>
                @endforeach

            </div>
            <div class="clearfix"></div>
        </div>



        <div id="productinfo" class="col-xs-12 col-sm-6 col-md-6">
<!--            <h3  itemprop="name">{{$oProduct->latitle}}</h3>-->
            <p id="detailsTitle" >
              {{$oProduct->latitle}}
            </p>
            <hr>
            <p id="detailsPrice">
               {{number_format($oProduct->laprice,0,',','.')}} VNĐ
            </p>
               <hr>

            @if($oProduct->sumvariant > 0)
                  {{--*/ $variants = Product::getVariants($oProduct->id) /*--}}
            <dl>
                <dt>Chọn mẫu</dt>
                <dd>
                    <ul id="variant" class="list-inline">
                        @foreach($variants as $vari)
                        <li>
                            <a href="javascript:changevariant({{$vari->id}})">
                                <img src="{{URL::to('/uploads/thumbnails/product/'.$vari->laimage)}}" title="{{$vari->lashortinfo}}" class="variantthumb">
                            </a>
                        </li>
                        @endforeach
                    </ul>
                </dd>
                    <dt>Mẫu đã chọn:</dt>
                    <dd id="variantselectname">

                    </dd>
            </dl>
            @endif
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
                <div class="clearfix"></div>
            <p>
                {{$oProduct->lainfo}}
            </p>
<!--            <hr>-->
<!--             <dl class="dl-horizontal">-->
<!--                 @if($oProduct->factorname != '')-->
<!--                <dt>Xuất xứ</dt>-->
<!--                <dd  itemprop="manufacturer"><a class="label label-success" href="{{URL::to('hastag/'.$oProduct->factorurl)}}">{{$oProduct->factorname}}</a></dd>-->
<!--                 @endif-->
<!--                @if($oProduct->lachucnang != '')-->
<!--                <dt>Chức năng</dt>-->
<!--                <dd><a class="label label-warning" href="{{URL::to('hastag/'.$oProduct->lachucnang)}}">{{$oProduct->lachucnang}}</a></dd>-->
<!--                @endif-->
<!--                @if($oProduct->lakeyword !='')-->
<!--                {{--*/ $aKeys = explode(',',$oProduct->lakeyword) /*--}}-->
<!--                    @if(count($aKeys)>0)-->
<!--                     <dt>Từ khóa</dt>-->
<!--                     <dd>-->
<!--                         @foreach($aKeys as $key)-->
<!--                         <a class="label label-primary" href="{{URL::to('hastag/'.$key)}}">{{$key}}</a>-->
<!--                         @endforeach-->
<!--                     </dd>-->
<!--                    @endif-->
<!--                @endif-->
<!--                @if($oProduct->lakhoiluong != '')-->
<!--                <dt>Khối lượng</dt>-->
<!--                <dd>{{$oProduct->lakhoiluong}} (gram)</dd>-->
<!--                @endif-->
<!--                @if($oProduct->ladungtich != '')-->
<!--                <dt>Kích thước</dt>-->
<!--                <dd>{{$oProduct->ladungtich}}</dd>-->
<!--                @endif-->
<!--                @if(trim($oProduct->lashortinfo) != '')-->
<!--                <dt>Mô tả</dt>-->
<!--                <dd>{{$oProduct->lashortinfo}}</dd>-->
<!--                @endif-->
<!---->
<!--            </dl>-->
            @if($oProduct->laprice < $oProduct->laoldprice)
            @endif
            <br>
            <p><b>Category: </b>{{$oProduct->cat1name}}</p>
            <p><b>Tags: </b>{{$oProduct->lakeyword}}</p>
                <div class="fb-like" data-href="{{Request::url()}}" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
        </div>
    </div>

    <div class="clearfix"></div>
     <br><br>

</div>
@stop
@section('jscript')
    @parent
 <script>
     $(".variantthumb").tooltip();
     $('#myTab a').click(function (e) {
         e.preventDefault()
         $(this).tab('show')
     })
     function changepic(file){
         $("#mainpicimg").attr('src',"{{URL::to('/uploads/product/')}}/"+file);
     }
     function changevariant(id){
         $("#variantselectname").html("");
         $("#variantselectname").removeClass("label label-warning");
         $("#variantselectname").addClass("ajaxload");
         $.ajax({
             url: "{{URL::to('/ajax/getvariant')}}/"+id,
             success:function(msg){
                var response = eval(msg);
                 $("#mainpicimg").attr('src',"{{URL::to('/uploads/product/')}}/"+msg.lapic);
                 $("#variantselect").val(msg.id);
                 $("#variantselectname").html(msg.lashortinfo);
                 $("#variantselectname").removeClass("ajaxload");
                 $("#variantselectname").addClass("label label-warning");
                 $("input[name=laproduct_id]").val(msg.id);
                 $("#variantselectnameinput").val(msg.lashortinfo);
                 $("#addtocart").removeAttr("disabled");
             }
         });
     }
 </script>
@stop