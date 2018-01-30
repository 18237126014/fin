@extends('home.public.base')
@section('title', '关于我们-发展历程')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('/css/home/index.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/plugin/developmentHistory/animation.css')}}" media="all" />
<link rel="stylesheet" type="text/css" href="{{url('/plugin/developmentHistory/flickerplate.css')}}" >
@endsection
@section('my-js')
<script type="text/javascript" src="{{url('/js/home/jquery.min.js')}}" ></script>
<script type="text/javascript" src="{{url('/js/home/development.js')}}" ></script>
<script type="text/javascript" src="{{url('/plugin/developmentHistory/modernizr-custom-v2.7.1.min.js')}}"></script>
<script type="text/javascript" src="{{url('/plugin/developmentHistory/jquery-finger-v0.1.0.min.js')}}"></script>
<script type="text/javascript" src="{{url('/js/home/common.js')}}"></script>
<script type="text/javascript" src="{{url('/js/home/index.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
@endsection

        <!--nav-bottom-->
        <!--nav-bottom-->
            <div class="nav-bottom">
                <ul>
                    <li><a href="aboutUs.html">中心简介</a></li>
                    <li><a href="organizationalStructure.html">组织架构</a></li>
                    <li><a class="active" href="developmentHistory.html">发展历程</a></li>
                </ul>
            </div>
    
@section('content')
<div class="main">
    <div class="zzjg title">
        发展历程
    </div>
    <div class="main_cnt">
        <div class="main_cnt_center">
            <div class="flickbar">
                <div class="flickbarbg">
                    <div class="flicknavbar">
                        <div class='circle circle_selected'><h1>2016</h1></div>
                            <div class='circle '><h1>2015</h1></div>
                            <div class='circle '><h1>2014</h1></div>
                            </div>
                </div>  
            </div>
            
            <div class="flickerMain">   
                <ul>
                    <li><section class="cd-timeline cd-container">
                                <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <div class="timeline-img-cnt">
                                                        <img class="timeline-pic" src="/images/home/1479460272672090850.jpg"/>
                                                        <img class="timeline-hover-img" src="/images/home/1479460278636062543.jpg"/>
                                                    </div>
                                                <p class="time">2016-09-27</p>  
                                                <span class="time_cnt">中华人民共和国外交部原部长李肇星、中共中央宣传部原秘书长官景辉一行莅临长江联合指导工作</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <p class="time">2016-09-01</p>  
                                                <span class="time_cnt">长江联合官网全新升级上线</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <p class="time">2016-08-04</p>  
                                                <span class="time_cnt">上海长江联合金属交易中心正式推出现货挂牌交易系统（试运营）</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <div class="timeline-img-cnt">
                                                        <img class="timeline-pic" src="/images/home/1471412781579037016.png"/>
                                                        <img class="timeline-hover-img" src="/images/home/1471412783580041896.png"/>
                                                    </div>
                                                <p class="time">2016-05-26</p>  
                                                <span class="time_cnt">社会公益项目正式开启</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <div class="timeline-img-cnt">
                                                        <img class="timeline-pic" src="/images/home/1479458482674065740.jpg"/>
                                                        <img class="timeline-hover-img" src="/images/home/1479458724883032858.jpg"/>
                                                    </div>
                                                <p class="time">2016-05-20</p>  
                                                <span class="time_cnt">委内瑞拉奥兰多·奥乔亚教授及人民日报社领导一行莅临长江联合指导工作</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <div class="timeline-img-cnt">
                                                        <img class="timeline-pic" src="/images/home/1471412954516084723.png"/>
                                                        <img class="timeline-hover-img" src="/images/home/1471412957217002598.png"/>
                                                    </div>
                                                <p class="time">2016-03-05</p>  
                                                <span class="time_cnt">上海长江联合金属交易中心合规发展研讨会成功举办</span>
                                            </div>
                                        </div>
                                    </section></li>
                        <li><section class="cd-timeline cd-container">
                                <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <p class="time">2015-12-11</p>  
                                                <span class="time_cnt">发布新版手机行情交易系统“长江交易宝”</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <div class="timeline-img-cnt">
                                                        <img class="timeline-pic" src="/images/home/1471412817018087182.png"/>
                                                        <img class="timeline-hover-img" src="/images/home/1471412819279095706.png"/>
                                                    </div>
                                                <p class="time">2015-07-22</p>  
                                                <span class="time_cnt">中国贵金属指数正式发布</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <div class="timeline-img-cnt">
                                                        <img class="timeline-pic" src="/images/home/1471412653534083953.png"/>
                                                        <img class="timeline-hover-img" src="/images/home/1471412657994066586.png"/>
                                                    </div>
                                                <p class="time">2015-06-16</p>  
                                                <span class="time_cnt">上海长江联合金属交易中心与东营新华福岛能源交易管理有限公司开展战略合作</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <p class="time">2015-06-10</p>  
                                                <span class="time_cnt">长江铜产品上线试运营</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <p class="time">2015-05-08</p>  
                                                <span class="time_cnt">苹果IOS版手机交易端上线</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <p class="time">2015-04-29</p>  
                                                <span class="time_cnt">推出网上开户功能</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <p class="time">2015-04-21</p>  
                                                <span class="time_cnt">交大长江联合指数研究所正式成立</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <p class="time">2015-04-08</p>  
                                                <span class="time_cnt">安卓版手机交易端上线</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <p class="time">2015-03-18</p>  
                                                <span class="time_cnt">交易系统上线试运营 长江银产品上线试运营</span>
                                            </div>
                                        </div>
                                    <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <div class="timeline-img-cnt">
                                                        <img class="timeline-pic" src="/images/home/1471412399646053556.png"/>
                                                        <img class="timeline-hover-img" src="/images/home/1471412403431075025.png"/>
                                                    </div>
                                                <p class="time">2015-02-08</p>  
                                                <span class="time_cnt">上海长江联合金属交易中心行业交流会成功举办</span>
                                            </div>
                                        </div>
                                    </section></li>
                        <li><section class="cd-timeline cd-container">
                                <div class="cd-timeline-block">
                                            <div class="cd-timeline-img cd-picture"></div>
                                            <div class="cd-timeline-line"></div>
                                            <div class="cd-timeline-content">
                                                <div class="timeline-img-cnt">
                                                        <img class="timeline-pic" src="/images/home/1471412316474092082.png"/>
                                                        <img class="timeline-hover-img" src="/images/home/1471412320377076942.png"/>
                                                    </div>
                                                <p class="time">2014-12-28</p>  
                                                <span class="time_cnt">上海长江联合金属交易中心盛大揭牌</span>
                                            </div>
                                        </div>
                                    </section></li>
                        </ul>
            </div>
    
        </div>
   </div>
   @endsection

    <!-- 尾部 -->
   <!-- <div class="footer">
        <div class="top"></div>
        <div class="footerCenter">
            <div class="left">
                <ul>
                    <li><a href="aboutUs.html">关于我们</a></li>
                    <li><a href="download.html">下载中心</a></li>
                    <li><a href="contactUs.html">联系我们</a></li>
                    <li><a href="serviceCenter.html">开户流程</a></li>
                </ul>
                <h1 class="copyright">All Rights Reserved:Copyright 2010 YANGTZE River United 上海知持动力有限公司</h1>
                <h1 class="copyright"> <a href="javascript:void(0)">隐私保护申明</a> |<a href="javascript:void(0)"> 服务协议</a> | 沪ICP备15007368号 </h1>
                <h1 class="copyright"><img src="/images/home/waba.png">沪公网安备 31010502001448号</h1>
            </div>
        </div>
    </div> -->

<!-- <script type="text/javascript">
    //for fzlc
    $(document).ready(function(){
        //calc circle and line position
        $(".cd-timeline-block").each(function(index){
            var hasImage = $(this).find(".cd-timeline-content img");
            if(hasImage.length>0){
                $(this).find(".cd-timeline-img").css("top","175px");
                $(this).find(".cd-timeline-line").css("top","182px");
            }else{
                $(this).find(".cd-timeline-img").css("top","25px");
                $(this).find(".cd-timeline-line").css("top","32px");
            }

        });
        
        function flickMovie($root){

            var i=0;
            var tt=setInterval(function(){
            //get first root node;
            if(i<$root.find(".cd-timeline-block").length){
                $root.find(".cd-timeline-block .cd-timeline-line").eq(i).css({opacity:1});
                $root.find(".cd-timeline-block .cd-timeline-content").eq(i).css({opacity:1});
                var suffAppend = "";
                if(i%2==0){
                    suffAppend="J";
                }else{
                    suffAppend="K";
                }
                $root.find(".cd-timeline-block .cd-timeline-line").eq(i).addClass("a-fadein"+suffAppend);
                $root.find(".cd-timeline-block .cd-timeline-content").eq(i).addClass("a-fadein"+suffAppend);
                i++;
            }else{
                clearInterval(tt);  
            }
        },100); 
        };
        
        //time line movement
        setTimeout(function(){          
            var $root =  $(".cd-timeline").eq(0);
            // console.log($root);
            // return false;
            flickMovie($root);

        },100);
        
        
        ////headImg loading
        $('.flickerMain').flicker({auto_flick:0});
        //year click
        $(".circle").click(function(){
            var index = $(this).index();
            var leftBase = 430;
            var leftStep = 94;
            var leftTotel = leftBase-leftStep*index;
            $(this).parent().animate({ left: leftTotel }, 500);
            $(".circle").removeClass("circle_selected");
            $(this).addClass("circle_selected");
            //nav action
            $(".dot-navigation li").eq(index).click();
            //clean move action for all
            $(".cd-timeline-block .cd-timeline-line").css({opacity:0});
            $(".cd-timeline-block .cd-timeline-content").css({opacity:0});
            $(".cd-timeline-block .cd-timeline-line").removeClass("a-fadeinJ");
            $(".cd-timeline-block .cd-timeline-line").removeClass("a-fadeinK");
            $(".cd-timeline-block .cd-timeline-content").removeClass("a-fadeinJ");
            $(".cd-timeline-block .cd-timeline-content").removeClass("a-fadeinK");
            //add movie and reset height;
            $(".cd-timeline").each(function(idx){
                if(index == idx){
                    var $root = $(this);
                    $root.removeClass("cd-timeline-hidden");
                    setTimeout(function(){          
                    flickMovie($root);
                    },100);
                }else{
                    $(this).addClass("cd-timeline-hidden");
                }
            });
            
        });
        
        // 默认模拟点击第一个导航栏
        $(".circle_selected").click();
    });

</script> -->
</div>

</body>
</html>