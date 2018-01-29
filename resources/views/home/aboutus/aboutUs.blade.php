@extends('home.public.base')
@section('title', '关于我们-中心简介')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('css/home/CSS.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('css/home/share.css')}}">
@endsection
@section('my-js')
<script type="text/javascript" src="{{url('js/home/common.js')}}"></script>
<script type="text/javascript" src="{{url('js/home/index.js')}}"></script>
<script src="{{url('plugin/scrollReveal/scrollReveal.min.js')}}"></script>
@endsection
@section('content')
<!-- <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>关于我们-中心简介</title>
	<link rel="stylesheet" type="text/css" href="{{url('css/home/CSS.css')}}">
	<link rel="stylesheet" type="text/css" href="{{url('css/home/share.css')}}">
	<script src="{{url('js/home/jquery.min.js')}}"></script>
	<script type="text/javascript" src="{{url('js/home/common.js')}}"></script>
	<script type="text/javascript" src="{{url('js/home/index.js')}}"></script>
	<script src="{{url('plugin/scrollReveal/scrollReveal.min.js')}}"></script>
</head>
<body>
	<div class="header" style="height: 128px;">
		<div class="warp">
			<div class="logo"><a href="index.html"><img src="images/home/logo.png" alt=""></a></div>
			<div class="logo-btn">
				<a href="javascript:void(0)"><div class="gold">开户领赠金</div></a>
				<a href="javascript:void(0)"><div class="normal">模拟开户</div></a>
			</div>
		</div>
		<div class="nav">
			<ul>
				<li class="pmenu">
					<a class="gv" href="index.html">首页</a>
				</li>
				<li class="pmenu">
					<a class="ov" href="aboutUs.html">关于我们</a>
					<div class="submenu_cnt">
						<ul class="one">
							<li>
								<a href="aboutUs.html" target="_self">
									<div class="menu_icon">
										<img src="images/home/1470132689039080480.png" alt="" class="name">
										<img src="images/home/1470132690290083868.png" alt="" class="five">
									</div>
								<p class="menu_label">中心简介</p>
								</a>
							</li>
							<li>
								<a href="organizationalStructure.html" target="_self">
									<div class="menu_icon">
										<img src="images/home/1470132724809028526.png" alt="" class="name">
										<img src="images/home/1470132725887050169.png" alt="" class="five">
									</div>
								<p class="menu_label">组织架构</p>
								</a>
							</li>
							<li>
								<a href="developmentHistory.html" target="_self">
									<div class="menu_icon">
										<img src="images/home/1470132742705094983.png" alt="" class="name">
										<img src="images/home/1470132743659099956.png" alt="" class="five">
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
										<img src="images/home/1470980324577050576.png" alt="" class="name">
										<img src="images/home/1470980321094068281.png" alt="" class="five">
									</div>
								<p class="menu_label">中心公告</p>
								</a>
							</li>
							<li>
								<a href="centerDynamics.html" target="_self">
									<div class="menu_icon">
										<img src="images/home/1470980349314080752.png" alt="" class="name">
										<img src="images/home/1470980344993043989.png" alt="" class="five">
									</div>
								<p class="menu_label">中心动态</p>
								</a>
							</li>
							<li>
								<a href="newsInformation.html" target="_self">
									<div class="menu_icon">
										<img src="images/home/1470132846892068195.png" alt="" class="name">
										<img src="images/home/1470132847938083162.png" alt="" class="five">
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
									<img src="images/home/1470133109939053904.png" alt="" class="name">
									<img src="images/home/1470133110699044033.png" alt="" class="five">
								</div>
							<p class="menu_label">法律法规</p>
							</a>
						</li>
						<li>
							<a href="javascript:void(0)" target="_self">
								<div class="menu_icon">
									<img src="images/home/1470979900633086127.png" alt="" class="name">
									<img src="images/home/1470979904060073827.png" alt="" class="five">
								</div>
							<p class="menu_label">业务规则</p>
							</a>
						</li>
						<li>
							<a href="javascript:void(0)" target="_self">
								<div class="menu_icon">
									<img src="images/home/1470980303779080316.png" alt="" class="name">
									<img src="images/home/1470980298085010119.png" alt="" class="five">
								</div>
							<p class="menu_label">风险管理与防范</p>
							</a>
						</li>
						<li>
							<a href="javascript:void(0)" target="_self">
								<div class="menu_icon">
									<img src="images/home/1470980270485079433.png" alt="" class="name">
									<img src="images/home/1470980262389051972.png" alt="" class="five">
								</div>
							<p class="menu_label">投资者权益保护</p>
							</a>
						</li>
						<li>
							<a href="javascript:void(0)" target="_self">
								<div class="menu_icon">
									<img src="images/home/1470980127432067424.png" alt="" class="name">
									<img src="images/home/1470980124969001196.png" alt="" class="five">
								</div>
							<p class="menu_label">产品知识</p>
							</a>
						</li>
						<li>
							<a href="javascript:void(0)" target="_self">
								<div class="menu_icon">
									<img src="images/home/1470133156637090590.png" alt="" class="name">
									<img src="images/home/1470133157455051879.png" alt="" class="five">
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
		</div> -->
		<!--nav-bottom-->
		<!-- <div class="nav-bottom">
			<ul>
		        <li><a class="active" href="aboutUs.html">中心简介</a></li>
		        <li><a href="organizationalStructure.html">组织架构</a></li>
		        <li><a href="developmentHistory.html">发展历程</a></li>
		    </ul>
		</div>
	 </div> -->
	<!--nav-bottom over-->
	<!-- 内容 -->
	<div class="main">
		<div class="title">
			中心简介
		</div>
		<div class="ab-text">
			<p>
				上海长江联合金属交易中心有限公司(以下简称“长江联合”)是经上海市商务委批准的，由长发集团长江投资实业股份有限公司，联合南京长江发展股份有限公司等共同发起设立的股份制公司。
			</p>
			<h3>混合模式 先行先试</h3>
			<p>
				“长江联合”是上海地区首家混合经济模式交易中心，他的成立是在“长江经济带”国家战略格局下的新尝试，是上海市现货贸易流通与互联网金融建设发展的尝试，目的是在真正意义上降低实体经济的交易成本、物流成本和融资成本，并推动实体经济的集约化、市场化和规模化发展。
			</p>
			<h3>战略合作 助力发展</h3>
			<p>
				“长江联合”将充分依托长发集团长江投资实业股份有限公司现有的物流、仓储、矿业资源优势，联合号百信息服务有限公司、上海陆上货运交易中心等战略合作方，为金属市场提供交易、信息、仓储、运输、结算等第三方服务，为金属的生产、贸易、消费和投资等环节提供公开、公信的市场交易平台。
			</p>
			<h3>展望未来 争创领先</h3>
			<p>
				在未来，“长江联合”将凭借卓越的管理团队，丰富的经验，在“规范运作、稳健发展”的运营理念指导下，以助力中国多层次商品市场建设为己任，依托“长江经济带”国家战略，通过互联网进行金融与产业融合，把国内乃至国际的各大金属产业集团的各类金属及金属材料资源进行高效整合，形成合力，努力将上海长江联合金属交易中心打造成为国内领先并具有国际影响力的世界级金属交易平台。
			</p>
		</div>
		<div class="ab-cnt_introduce_top">
			<div class="video">
				<div class="cnt_introduce_video">
					<a href="javascript:void(0)" class="shipinbtn">
					<img src="/images/home/video1.png" width="800" height="370" alt="" />
					</a>
				</div>
			</div>
		</div>
		<div class="ab-border">
			<ul>
				<li>
					<div>
						<div class="b-h">位置</div>
						<div class="b-t">
							地处国际金融中心——上海，是上海地区首家混合经济模式交易中心
						</div>
					</div>
				</li>
				<li>
					<div>
						<div class="b-h">硬件</div>
						<div class="b-t">
							机房进驻上海五星级南汇数据中心，为上海电信建设等级最高、规模最大的唯一五星级数据中心
						</div>
					</div>
				</li>
				<li>
					<div>
						<div class="b-h">技术</div>
						<div class="b-t">
							基于PC端的行情分析系统、IOS及安卓环境下的手机移动端以及微信平台下的微盘
						</div>
					</div>
				</li>
				<li>
					<div>
						<div class="b-h">指数</div>
						<div class="b-t">
							与交大教育集团国际金融研究院共同研发中国第一个贵金属指数：中国贵金属指数
						</div>
					</div>
				</li>
				<li>
					<div>
						<div class="b-h">交易</div>
						<div class="b-t">
							与工行、建行、农行、交行、中信、招行、浦发七家权威银行达成战略合作，资金交易安全高效
						</div>
					</div>
				</li>
				<li>
					<div>
						<div class="b-h">品种</div>
						<div class="b-t">
							现已上线运营的挂牌商品有白银、阴极铜等
						</div>
					</div>
				</li>
			</ul>
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
		       	<h1 class="copyright"><img src="images/home/waba.png">沪公网安备 31010502001448号</h1>
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