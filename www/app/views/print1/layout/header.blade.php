<div id="header-outer">
    <div id="top-header" role="banner">
        <div class="mycontainer fold wrap">

            <div class="col-xs-5 col-md-6">
                <p style="line-height: 30px;">Call US: 092 345 6789</p>
            </div>
            <div class="header-tools col-xs-6 col-md-6">
                <ul class="socials col-xs-4 hidden-phone">
                    <li><a class="facebook" href="#" target="_blank"></a></li>
                    <li><a class="youtube" href="#" target="_blank"></a></li>
                    <li><a class="rss" href="#" target="_blank"></a></li>
                </ul>
                <!-- end socials -->
                <div id="searchform" class="col-xs-6">
                    {{ Form::open(array(
                    'url' => 'search',
                    'method'=>'post',
                    )) }}
                    <input type="text" id="s" placeholder="" name="s">
                    {{Form::close()}}
                </div>
                <!-- end searchform -->
            </div>
            <!-- end header tools -->

        </div>
        <!-- end container -->
    </div>
    <div class="clearfix"></div>
    <div id="logo" class=" col-xs-12 col-md-12">
        <div class=" mycontainer wrap">
            <a href="{{URL::to('/')}}" class="col-md-8">
                <!--            <img src="{{URL::to('/public/logo.png')}}">-->
                THANH TRƯỜNG SƠN<span class="text-light color-light"> PRINT STORE</span>
            </a>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="mycontainer wrap">
        <div class="col-xs-12  col-md-12 hidden-phone nav-outer">
            @include(Config::get('shop.theme').'/layout/topnav')

        </div>
    </div>
    <div class="clearfix"></div>
    @if(isset($typeEnd) && $typeEnd=='shop')
    <div id="headerpromote" class="mycontainer wrap">
        <img src="{{URL::to('public/header_block.jpg')}}">
        <div id="promotetext">
            <h1>SALE</h1>
            <p>OFFERING THE HIGHEST QUALITY PRINTING PRODUCTS.</p>
            <br>
            <a href="#">See now</a>

        </div>
        <div id="promotelist">
            <ul>
                <li class="col-xs-3">Envelopes</li>
                <li class="col-xs-3">DVD Cover</li>
                <li class="col-xs-3">Presentation Folder</li>
                <li class="col-xs-3">Poster</li>
            </ul>
        </div>
    </div>
    @endif
</div>
