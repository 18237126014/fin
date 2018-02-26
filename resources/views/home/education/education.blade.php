@extends('home.public.base')
@section('title', '投资者教育')
@section('my-css')
<link rel="stylesheet" href="{{url('/css/home/jquery.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
@endsection
@section('my-js')
<script src="{{url('/js/home/common.js')}}"></script>
<script src="{{url('/js/home/index.js')}}"></script>
<script src="{{url('/js/home/interEdu.js')}}"></script>
<script type="text/javascript" src="{{url('plugin/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js')}}"></script>
<script type="text/javascript" src="{{url('plugin/mCustomScrollbar/mCustomScrollbar.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
@endsection

@section('content')
    <div class="main_investorEdu"  data-scroll-reveal="enter left over 0.5s after 0.5s">
        <div class="investorEdu_content">
        
            <div class="investorEdu_header"><p>{{$info->column_name}}</p></div>
            <div class="investorEdu_center">
                <div class="rules">
                    <ul class="menu">
                        @foreach($res as $v)
                        <li class="foucs" id="foucs">
                            <a href="javascript:void(0)" onclick="show()">{{$v->title}}</a>
                        </li>
                        @endforeach
                        <!-- <li>
                            <a href="javascript:void(0)" onclick="show()">中华人民共和国合同法司法解释(二)</a>
                        </li>
                        <li>    
                            <a href="javascript:void(0)" onclick="show()">中华人民共和国合同法司法解释(一)</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" onclick="show()">中华人民共和国合同法(2012)</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" onclick="show()">国务院关于取消第二批行政审批项目和改变一批行政审批项目管理方式的决定（国发【2003】5号</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" onclick="show()">电子签名法</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" onclick="show()">中国人民银行取消26项行政审批项目</a>
                        </li> -->
                    </ul>
                </div>
            </div>              
        </div>
    </div>

    <div class="pdfc">
        <div class="rules_cnt">
            <div class="rules_cnt_l">
                <ul class="l_title">
                    <li><h1 class="title">消费者权益保护法</h1></li>
                    <li><h1 class="title">中华人民共和国合同法司法解释(二)</h1></li>
                    <li><h1 class="title">中华人民共和国合同法司法解释(一)</h1></li>
                    <li><h1 class="title">中华人民共和国合同法(2012)</h1></li>
                    <li><h1 class="title">国务院关于取消第二批行政审批项目和改变一批行政审批项目管理方式的决定（国发【2003】5号）</h1></li>
                    <li><h1 class="title">电子签名法</h1></li>
                    <li><h1 class="title">中国人民银行取消26项行政审批项目</h1></li>
                </ul>
                <div class="index_topic mCustomScrollbar _mCS_1" id="rules_scroll">
                    <div id="mCSB_1" class="mCustomScrollBox mCS-rounded-dots mCSB_vertical mCSB_inside" tabindex="0">
                        <div id="mCSB_1_container" class="mCSB_container"  dir="ltr"> <br>
                            <ul class="content" id="flowDiv">
                                <li class="focus2" id="iList">
                                    <img src="/images/home/1471922722245008721.jpg" alt="">
                                    <img src="/images/home/1471922722455040817.jpg" alt="">
                                    <img src="/images/home/1471922722676027225.jpg" alt="">
                                    <img src="/images/home/1471922722852052974.jpg" alt="">
                                    <img src="/images/home/1471922723038011431.jpg" alt="">
                                    <img src="/images/home/1471922723211098318.jpg" alt="">
                                    <img src="/images/home/1471922723398031700.jpg" alt="">
                                    <img src="/images/home/1471922723576004281.jpg" alt="">
                                    <img src="/images/home/1471922723821016498.jpg" alt="">
                                    <img src="/images/home/1471922723975082423.jpg" alt="">
                                    <img src="/images/home/1471922724002000662.jpg" alt="">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="rules_cnt_r">
                <a class="close" href="javascript:void(0)"></a>
                <div class="pre prev_start"><a href="javascript:void(0)"></a></div>
                <div class="nex next_start"><a href="javascript:void(0)"></a></div>
            </div>
        </div>
    </div>
@endsection
<!-- 尾部 -->
   