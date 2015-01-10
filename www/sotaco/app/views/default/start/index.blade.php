@extends(Config::get('site.theme').'/layout/page')
@section('pagecontent')
<div id="slider">
    <div class="tp-banner-container">
        <div class="tp-banner" >
            <ul>
                <!-- SLIDE  -->
                <li data-transition="scaledownfromleft" data-slotamount="5" data-masterspeed="700" >
                    <!-- MAIN IMAGE -->
                    <img src="src/img/slider/baner2.png"  alt="slidebg1"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                    <!-- LAYERS -->
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption customin"
                         data-x="700"
                         data-y="300"
                         data-customin="x:1000;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:75% 25%;"
                         data-start="1000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="lines"
                         data-elementdelay="0.1"
                         style="font-size: 40px;font-weight: 700"
                            >Construction
                    </div>
                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption customin"
                         data-x="700"
                         data-y="340"
                         data-customin="x:-100;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-start="1000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="lines"
                         data-elementdelay="0.1"
                         style="font-size: 60px;font-weight: 900"
                            >ARCHITECT PLAN
                    </div>
                </li>
                <li data-transition="scaledownfromright" data-slotamount="5" data-masterspeed="700" >
                    <!-- MAIN IMAGE -->
                    <img src="src/img/slider/baner3.png"  alt="slidebg2"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                    <!-- LAYERS -->
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption customin"
                         data-x="50"
                         data-y="300"
                         data-customin="x:0;y:-200;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:75% 25%;"
                         data-start="1000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="lines"
                         data-elementdelay="0.1"
                         style="font-size: 40px;font-weight: 700"
                            >Construction
                    </div>
                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption customin"
                         data-x="50"
                         data-y="340"
                         data-customin="x:1000;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-start="1000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="lines"
                         data-elementdelay="0.1"
                         style="font-size: 60px;font-weight: 900"
                            >ARCHITECT PLAN
                    </div>
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption customin"
                         data-x="50"
                         data-y="420"
                         data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-start="2000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="none"
                         data-elementdelay="0.1"
                         style="font-size: 32px;font-weight: 400;background: #333;color:#fff;border-radius: 4px;height: 36px;padding: 2px;line-height: 32px;"
                            >ON WORKING
                    </div>
                </li>
                <li data-transition="incube-horizontal" data-slotamount="5" data-masterspeed="700" >
                    <!-- MAIN IMAGE -->
                    <img src="src/img/slider/baner4.png"  alt="slidebg3"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                    <!-- LAYERS -->
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption customin"
                         data-x="600"
                         data-y="100"
                         data-customin="x:1000;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:75% 25%;"
                         data-start="1000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="lines"
                         data-elementdelay="0.1"
                         style="font-size: 40px;font-weight: 700"
                            >Construction
                    </div>
                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption customin"
                         data-x="600"
                         data-y="140"
                         data-customin="x:-100;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-start="1000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="lines"
                         data-elementdelay="0.1"
                         style="font-size: 60px;font-weight: 900"
                            >ARCHITECT PLAN
                    </div>
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption customin"
                         data-x="600"
                         data-y="220"
                         data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-start="1500"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="none"
                         data-elementdelay="0.1"
                         style="font-size: 32px;font-weight: 300;"
                            >ON WORKING
                    </div>
                </li>
                <li data-transition="cubic" data-slotamount="5" data-masterspeed="700" >
                    <!-- MAIN IMAGE -->
                    <img src="src/img/slider/baner5.png"  alt="slidebg4"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
                    <!-- LAYERS -->
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption customin"
                         data-x="center"
                         data-y="100"
                         data-customin="x:1000;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:75% 25%;"
                         data-start="1000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="lines"
                         data-elementdelay="0.1"
                         style="font-size: 40px;font-weight: 700"
                            >Construction
                    </div>
                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption customin"
                         data-x="center"
                         data-y="140"
                         data-customin="x:-100;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-start="1000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="lines"
                         data-elementdelay="0.1"
                         style="font-size: 60px;font-weight: 700;letter-spacing: 10px;"
                            >ARCHITECT PLAN
                    </div>

                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption customin"
                         data-x="center"
                         data-y="220"
                         data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-start="1500"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="none"
                         data-elementdelay="0.1"
                         style="font-size: 32px;font-weight: 300;"
                            >ON WORKING
                    </div>
                </li>
                <li data-transition="flyin" data-slotamount="5" data-masterspeed="700" >
                    <!-- MAIN IMAGE -->
                    <img src="src/img/slider/baner6.png"  alt="slidebg5"  data-bgfit="cover" data-bgposition="right top" data-bgrepeat="no-repeat">
                    <!-- LAYERS -->
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption customin"
                         data-x="300"
                         data-y="200"
                         data-customin="x:1000;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:75% 25%;"
                         data-start="1000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="lines"
                         data-elementdelay="0.1"
                         style="font-size: 40px;font-weight: 700"
                            >Construction
                    </div>
                    <!-- LAYER NR. 2 -->
                    <div class="tp-caption customin"
                         data-x="80"
                         data-y="240"
                         data-customin="x:-100;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-start="1000"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="lines"
                         data-elementdelay="0.1"
                         style="font-size: 60px;font-weight: 900"
                            >ARCHITECT PLAN
                    </div>
                    <!-- LAYER NR. 3 -->
                    <div class="tp-caption customin"
                         data-x="300"
                         data-y="320"
                         data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
                         data-start="1500"
                         data-speed="600"
                         data-easing="Circ.easeIn"

                         data-splitin="none"
                         data-elementdelay="0.1"
                         style="font-size: 32px;font-weight: 300;"
                            >ON WORKING
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div class="row-fluid wrap">
    <div id="section" class="">
        <ul style="padding: 0">
            <li class="col-xs-6 col-md-3">
                <div>
                    <div class="section-header">ARCHITECTURE</div>
                    <div class="section-text">
                        Sterling can handle all architectural needs in your current and or future office
                    </div>
                    <div class="section-image section1"></div>
                </div>
            </li>
            <li class="col-xs-6 col-md-3">
                <div>
                    <div class="section-header">CONSTRUCTION</div>
                    <div class="section-text">
                        Sterling responsibly manages the intricate and time-consuming details of construction
                    </div>
                    <div class="section-image section2"></div>
                </div>
            </li>

            <li class="col-xs-6 col-md-3">
                <div>
                    <div class="section-header">FURNITURE</div>
                    <div class="section-text">
                        Invest wisely in your company's physical surroundings by creating a more productive
                        workplace
                    </div>
                    <div class="section-image section3"></div>
                </div>
            </li>
            <li class="col-xs-6 col-md-3">
                <div>
                    <div class="section-header">OTHER SERVICES</div>
                    <div class="section-text">
                        Sterling offers a wide range of other services
                    </div>
                    <div class="section-image section4"></div>
                </div>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
</div>
@stop