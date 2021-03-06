@extends('home.public.base')
@section('title', '首页')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('css/home/index.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('css/home/share.css')}}">
@endsection
@section('my-js')
<script type="text/javascript" src="{{url('/js/home/index.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
@endsection
@section('content')
<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="{{url('css/home/index.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('css/home/share.css')}}">
    <script src="{{url('/js/home/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{url('/js/home/index.js')}}"></script>
    <script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
</head>
<body>
    <div class="header" style="height: 128px;">
        <div class="warp">
            <div class="logo"><a href="index.html"><img src="/images/home/logo.png" alt=""></a></div>
            <div class="logo-btn">
                <a href="javascript:void(0)"><div class="gold">开户领赠金</div></a>
                <a href="javascript:void(0)"><div class="normal">模拟开户</div></a>
            </div> 
        </div> -->
       <!--  <div class="nav">
            <ul>
                <li class="pmenu navColor">
                    <a class="ov" href="index.html">首页</a>
                </li>
                <li class="pmenu">
                    <a class="gv" href="aboutUs.html">关于我们</a>
                    <div class="submenu_cnt">
                        <ul class="one">
                            <li>
                                <a href="aboutUs.html" target="_self">
                                    <div class="menu_icon">
                                        <img src="/images/home/1470132689039080480.png" alt="" class="name">
                                        <img src="/images/home/1470132690290083868.png" alt="" class="five">
                                    </div>
                                <p class="menu_label">中心简介</p>
                                </a>
                            </li>
                            <li>
                                <a href="organizationalStructure.html" target="_self">
                                    <div class="menu_icon">
                                        <img src="/images/home/1470132724809028526.png" alt="" class="name">
                                        <img src="/images/home/1470132725887050169.png" alt="" class="five">
                                    </div>
                                <p class="menu_label">组织架构</p>
                                </a>
                            </li>
                            <li>
                                <a href="developmentHistory.html" target="_self">
                                    <div class="menu_icon">
                                        <img src="/images/home/1470132742705094983.png" alt="" class="name">
                                        <img src="/images/home/1470132743659099956.png" alt="" class="five">
                                    </div>
                                <p class="menu_label">发展历程</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="pmenu">
                    <a class="gv" href="centralBulletin.html">信息中心</a>
                    <div class="submenu_cnt">
                        <ul class="two">
                            <li>
                                <a href="centralBulletin.html" target="_self">
                                    <div class="menu_icon">
                                        <img src="/images/home/1470980324577050576.png" alt="" class="name">
                                        <img src="/images/home/1470980321094068281.png" alt="" class="five">
                                    </div>
                                <p class="menu_label">中心公告</p>
                                </a>
                            </li>
                            <li>
                                <a href="centerDynamics.html" target="_self">
                                    <div class="menu_icon">
                                        <img src="/images/home/1470980349314080752.png" alt="" class="name">
                                        <img src="/images/home/1470980344993043989.png" alt="" class="five">
                                    </div>
                                <p class="menu_label">中心动态</p>
                                </a>
                            </li>
                            <li>
                                <a href="newsInformation.html" target="_self">
                                    <div class="menu_icon">
                                        <img src="/images/home/1470132846892068195.png" alt="" class="name">
                                        <img src="/images/home/1470132847938083162.png" alt="" class="five">
                                    </div>
                                <p class="menu_label">资讯要闻</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="pmenu">
                    <a class="gv" href="variety.html" target="_self">上市品种</a>
                </li>
                <li class="pmenu">
                    <a class="gv" href="download.html">下载中心</a>
                </li>
                <li class="pmenu">
                    <a class="gv" href="serviceCenter.html">开户流程</a>
                </li>
                <li class="pmenu">
                    <a class="gv" href="metals.html">持仓数据</a>
                </li>
                <li class="pmenu">
                    <a class="gv" href="investorEdu.html">投资者教育</a>
                    <ul class="six">
                        <li>
                            <a href="investorEdu.html" target="_self">
                                <div class="menu_icon">
                                    <img src="/images/home/1470133109939053904.png" alt="" class="name">
                                    <img src="/images/home/1470133110699044033.png" alt="" class="five">
                                </div>
                            <p class="menu_label">法律法规</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" target="_self">
                                <div class="menu_icon">
                                    <img src="/images/home/1470979900633086127.png" alt="" class="name">
                                    <img src="/images/home/1470979904060073827.png" alt="" class="five">
                                </div>
                            <p class="menu_label">业务规则</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" target="_self">
                                <div class="menu_icon">
                                    <img src="/images/home/1470980303779080316.png" alt="" class="name">
                                    <img src="/images/home/1470980298085010119.png" alt="" class="five">
                                </div>
                            <p class="menu_label">风险管理与防范</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" target="_self">
                                <div class="menu_icon">
                                    <img src="/images/home/1470980270485079433.png" alt="" class="name">
                                    <img src="/images/home/1470980262389051972.png" alt="" class="five">
                                </div>
                            <p class="menu_label">投资者权益保护</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" target="_self">
                                <div class="menu_icon">
                                    <img src="/images/home/1470980127432067424.png" alt="" class="name">
                                    <img src="/images/home/1470980124969001196.png" alt="" class="five">
                                </div>
                            <p class="menu_label">产品知识</p>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" target="_self">
                                <div class="menu_icon">
                                    <img src="/images/home/1470133156637090590.png" alt="" class="name">
                                    <img src="/images/home/1470133157455051879.png" alt="" class="five">
                                </div>
                            <p class="menu_label">常见问题</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="pmenu">
                    <a class="gv" href="contactUs.html">联系我们</a>
                </li>
                <li class="pmenu"><a class="gv" href="social.html">社会责任</a></li>
            </ul>
        </div>
     </div> -->


    <!-- 轮播图 -->
    <div class="content">
        <div class="sliderPic">
            <ul>
                <li class="b-one-1">
                    <a href="javascript:void(0)"">
                        <div class="bannerCenter">
                            <img class="img1" data-scroll-reveal="enter bottom over 1s after 0.5s" src="/images/home/1471315753949076235.png" style="left: 460px; top: 155px;" alt="">
                        </div>
                    </a>
                </li>
                <li class="b-one-2">
                    <a href="javascript:void(0)"">
                        <div class="bannerCenter">
                            <img class="img1" src="/images/home/1481792174758009801.png" style="left: 167px; top: 149px;" alt="">
                            <img class="img2" src="/images/home/1481792300452077905.png" style="left: 970px; top: 115px;" alt="">
                            <img class="img3" src="/images/home/1472618094209016226.png" style="left: 600px; top: 345px;" alt="">
                        </div>
                    </a>
                </li>
                <li class="b-one-3">
                    <a href="javascript:void(0)"">
                        <div class="bannerCenter">
                            <img class="img4" src="/images/home/1481792039157018570.png" style="left: 97px; top: 113px;" alt="">
                            <img class="img5" src="/images/home/1472609041247082789.png" style="left: 585px; top: 294px;" alt="">
                        </div>
                    </a>
                </li>
                <li class="b-one-4">
                    <a href="javascript:void(0)"">
                        <div class="bannerCenter">
                            <img class="img6" src="/images/home/1472618555354034236.png" style="left: 180px; top: 0;" alt="">
                            <img class="img7" src="/images/home/1472618607718066151.png" style="left: 474px; top: 445px;" alt="">
                        </div>
                    </a>
                </li>
                <li class="b-one-5">
                    <a href="javascript:void(0)"">
                        <div class="bannerCenter">
                            <img class="img8" src="/images/home/1471316651128040942.png" style="left: 150px; top: 100px;" alt="">
                            <img class="img9" src="/images/home/1471316757104097159.png" style="left: 150px; top: 200px;" alt="">
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="sliderSquare">
            <ul>
                <li class="active"></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>

    <!-- 内容 -->
    <div class="main">
        <div class="view">
            <div class="v_Title">—<strong class="otherColor">上市</strong>品种—</div>
            <div class="wrapper">
                <div class="menu">
                    <ul>
                        <a href="http://hq.dyhjw.com/nhq/fenshi.php?code=CONC" target="Exhibition"><li id="t1">原油</li></a>
                        <a href="http://hq.dyhjw.com/nhq/fenshi.php?code=OILM" target="Exhibition"><li id="t2">布伦特原油</li></a>
                        <a href="http://hq.dyhjw.com/nhq/fenshi.php?code=AUTD" target="Exhibition"><li id="t3">黄金T+D</li></a>    
                        <a href="http://hq.dyhjw.com/nhq/fenshi.php?code=AGTD" target="Exhibition"><li id="t4">白银T+D</li></a>
                     
                    </ul>
                </div>
            </div>
            <iframe id="Exhibition" name="Exhibition" src="http://hq.dyhjw.com/nhq/fenshi.php?code=CONC" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" width=97.18% height="400px" style="border: 8px solid #cea5a6; padding-top: 30px;" ></iframe>
        </div>



        <div class="news">
            <div class="newsCenter">
                <div class="n_Title">—新闻<strong class="otherColor">公告</strong>—</div>
                <div class="news-left" data-scroll-reveal="enter bottom over 1s after 0.5s">
                    <div class="line"><div class="border">公司公告</div></div>
                    <div class="list_bottom">
                     <ul>
                        <li class="wTitle"><a href="javascript:void(0)"><nobr>关于部分交易商出金问题的通知</nobr></a> <span>2017-07-11</span></li>
                            <li class="wTitle"><a href="javascript:void(0)"><nobr>关于办理银行出金解约的重要提示</nobr></a> <span>2017-05-22</span></li>
                            <li class="wTitle"><a href="javascript:void(0)"><nobr>关于交易平台升级及业务调整的重要公告</nobr></a> <span>2017-05-12</span></li>
                            <li class="wTitle"><a href="javascript:void(0)"><nobr>关于交易时间调整的公告</nobr></a> <span>2017-04-25</span></li>
                            <li class="wTitle"><a href="javascript:void(0)"><nobr>长江油[燃料油]2017年4月交割公告</nobr></a> <span>2017-04-07</span></li>
                            <li class="wTitle"><a href="javascript:void(0)"><nobr>关于商品交易时间调整的公告</nobr></a> <span>2017-04-07</span></li>
                            </ul>
                    </div>
                </div>
                <div class="news-right" data-scroll-reveal="enter top over 1s after 0.5s">
                <div class="line"><div class="border">公司动态</div></div>
                    <div class="list_bottom">
                      <ul id="n-list">
                        <li class="other">
                            <div class="cnt-right">
                                    <div class="w-img"><img src="/images/home/1488175948054072197.jpg"></div>
                                    <span class="ml5">
                                        <a href="javascript:void(0)"><b>上海长江联合金属交易中心联合主办2017新春慈善义捐活动</b></a>
                                        <h1>​“富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善...</h1>
                                    </span>
                                </div>
                            </li>
                            <li class="wTitle"><a href="javascript:void(0)"><nobr>心怀感恩，反哺社会：长江联合开展感恩节慰老活动</nobr></a><span>2016-11-24</span></li>
                                <li class="wTitle"><a href="javascript:void(0)"><nobr>爱心助学，传递正能量：长江联合第二期山区助学活动顺利进行</nobr></a><span>2016-11-04</span></li>
                                </ul>
                    </div>
                </div>
                <div class="newsfooter">
                       <a href="javascript:void(0)">-查看更多-</a>
                </div>
            </div>
        </div>
        <div class="company">
            <div class="comCenter">
                <div class="cTitle"  data-scroll-reveal="enter top over 1s after 0.5s">—<strong class="otherColor">合作</strong>伙伴—</div>
            <div class="font">
                <div class="cText1" data-scroll-reveal="enter top over 1s after 0.75s">天时不如地利，地利不如人和</div>
                <div class="cText2" data-scroll-reveal="enter top over 1s after 1s">我们一直以真诚、认真负责的态度对待每一位合作者共同发展</div>
            </div>
             <div class="banner" data-scroll-reveal="enter bottom over 1s after 0.5s">
                 <div class="bannerCon">
                     <ul class="imgList clearfix">
                         <li>
                            <div class="l-img">
                                <img src="/images/home/timg.jpg" alt="" >
                            </div>
                            <a href="http://www.boc.cn/" class="desc"><p class="l-font">中国银行</p></a>
                         </li>
                          <li>
                            <div class="l-img">
                                <img src="/images/home/gongshang.jpg" alt="" >
                            </div>
                            <a href="http://www.icbc.com.cn/icbc/" class="desc"><p class="l-font">中国工商银行</p></a>
                         </li>
                          <li>
                            <div class="l-img">
                                <img src="/images/home/pufa.jpg" alt="" >
                            </div>
                            <a href="http://www.spdb.com.cn/" class="desc"><p class="l-font">浦发银行</p></a>
                         </li>
                          <li>
                            <div class="l-img">
                                <img src="/images/home/guangda.jpg" alt="" >
                            </div>
                            <a href="http://www.cebbank.com/" class="desc"><p class="l-font">光大银行</p></a>
                         </li>
                          <li>
                            <div class="l-img">
                                <img src="/images/home/zhaoshang.jpg" alt="" >
                            </div>
                            <a href="https://www.cmbchina.com/" class="desc"><p class="l-font">招商银行</p></a>
                         </li>
                         <li>
                            <div class="l-img">
                                <img src="/images/home/jiaogong.jpg" alt="" >
                            </div>
                            <a href="http://www.bankcomm.com" class="desc"><p class="l-font">交通银行</p></a>
                         </li>
                     </ul>
                 </div>
             </div>
                <a class="pre-nex prev"></a>
                <a class="pre-nex next"></a>
            </div>
        </div>
        <div class="risk">
            <div class="riskCenter">
                <div class="rTitle"  data-scroll-reveal="enter top over 1s after 0.5s">—风险<strong class="otherColor">保障</strong>—</div>
                <div class="riskLeft">
                    <div class="rltop">
                        <a href="javascript:void(0)"">
                            <h1>资金安全</h1>
                            <span>操盘过程中，严格设定风控标准，当产品达到做大风险时，自动冻结账户资金并对账户进行清算。</span>
                        </a>
                    </div>
                    <div class="rldown">
                        <a href="javascript:void(0)"">
                            <h1>双层风控</h1>
                            <span>操盘人所操作交易账户均来自合法合规的交易机构平台，出入金渠道均受平台及第三方监管机构监管。</span>
                        </a>
                    </div>
                </div>
                <div class="riskRight">
                    <a href="javascript:void(0)"">
                        <h1>本息安全</h1>
                        <span>对于保本类产品，发起人及操盘人根据产品募捐金额及期限承担相应风险比例，并依照改比例缴纳风险保证金，保障合伙人权益。</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
@endsection


    <!-- 尾部 -->
<!--     <div class="footer">
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
    </div>

<script type="text/javascript">
      (function($) {
        'use strict';
        window.scrollReveal = new scrollReveal({ reset: true, move: '50px' });
      })();
</script>
</body>
</html> -->
