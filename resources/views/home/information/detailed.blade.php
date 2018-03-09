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


	<!-- 内容 -->
	<div class="main">
		<div class="title">
			中心公告
			<p style='font-size: 16px; color:#66bbdd;'>心系</p>
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
	
	