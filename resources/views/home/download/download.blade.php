@extends('home.public.base')
@section('title', '首页')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
@endsection
@section('my-js')
<script type="text/javascript" src="{{url('/js/home/index.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
@endsection

@section('content')
	<div class="main_dload">
		<div class="dload_header"><p>下载中心</p></div>
		<div class="dload_content">
			<div class="dload_up">
				<div class="dload_center">
					<div class="dl_up_left" data-scroll-reveal="enter left over 1s after 0.5s">
						<img class="a-fadeinL" src="/images/home/download_computer.png">
						<img class="dl_computer_btm a-fadein" src="/images/home/download_computer_yinying.png">
					</div>
					<div class="dl_up_right" data-scroll-reveal="enter bottom  over 1s after 0.5s">
						<div class="download_title">Web端软件下载</div>
						<ul>
                            <li class="a-fadeinB" data-scroll-reveal="enter bottom  over 1s after 0.5s">
                                <a class="download_module" href="javascript:void(0);">
                                    <div class="dl_module_img bg_img1 "></div>
                                    <div class="dl_module_text">长江联合<span class="font_color_BD9655"></span>现货挂牌交易系统
                                    </div>
                                </a>
                            </li>

                            <li class="a-fadeinB" data-scroll-reveal="enter bottom  over 1s after 0.5s">
                                <div class="download_module" href="javascript:void(0);">
                                    <div class="dl_module_img bg_img2 "></div>
                                    <div class="dl_module_text">长江联合行情交易系统<p class="font_color_BD9655">(经典版)</p></div>
                                </div>
                            </li>

                            <li class="a-fadeinB" data-scroll-reveal="enter bottom  over 1s after 1s">
                                <a class="download_module" href="javascript:void(0);">
                                    <div class="dl_module_img bg_img3 "></div>
                                    <div class="dl_module_text">长江联合行情交易系统<p class="font_color_BD9655">(极速版)</p></div>
                                </a>
                            </li>

                            <li class="a-fadeinB" data-scroll-reveal="enter bottom  over 1s after 1s">
                                <div class="download_module" href="javascript:void(0);">
                                    <div class="dl_module_img bg_img4"></div>
                                    <div class="dl_module_text">长江联合行情交易系统<p class="font_color_BD9655">(Plus版)</p></div>
                                </div>
                            </li>
                           <li class="a-fadeinB" data-scroll-reveal="enter bottom  over 1s after 1.5s">
                                <a class="download_module" href="javascript:void(0);">
                                    <div class="dl_module_img bg_img5"></div>
                                    <div class="dl_module_text">微软.Net Framework 2.0</div>
                                </a>
                            </li>
                        </ul>
					</div>
				</div>
			</div>
			<div class="dload_down">
				<div class="dload_center">
					<div class="dl_btm_content">
	                    <div class="download_title font_color_BD9655 floatLeft a-fadeinB">手机端App下载</div>
						<ul>
							<li>
								<div class="a-fadeinB">
			                        <img class="dl_btm_picture" src="/images/home/download_Android.png" data-scroll-reveal="enter bottom  over 1s after 0.5s">
			                        <div class="dl_module_text a-fadeinB">
			                        	<p data-scroll-reveal="enter bottom  over 1s after 1s">用QQ扫描二维码</p>
			                            <p data-scroll-reveal="enter bottom  over 1s after 1.5s">下载安卓版手机交易端</p>
			                        </div>
			                    </div>
	                    	</li>
							<li>
								<div class="a-fadeinB">
			                        <img class="dl_btm_picture" src="/images/home/download_Android.png" data-scroll-reveal="enter bottom  over 1s after 0.5s">
			                        <div class="dl_module_text a-fadeinB">
			                            <p class="ml10" data-scroll-reveal="enter bottom  over 1s after 1s">扫描二维码</p>
			                            <p class="ml10" data-scroll-reveal="enter bottom  over 1s after 1.5s">下载苹果IOS版手机 交易端</p>
			                        </div>
			                    </div>
	                    	</li>
						</ul>
	                </div>
	                <div class="dl_phone">
                    <img class="phone floatLeft  ml45 a-fadeinB" src="/images/home/download_phone.png.png">
                    <img class="dl_phone_btm floatLeft a-fadein" src="/images/home/download_phone_yinying.png">
                </div>
				</div>
			</div>
		</div>
	</div>
@endsection
	<!-- 尾部 -->
	

	<!-- <script type="text/javascript">
      (function($) {
        'use strict';
        window.scrollReveal = new scrollReveal({ reset: true, move: '50px' });
      })();
</script>
	 -->