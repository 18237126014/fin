@extends('home.public.base')
@section('title', '联系我们')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
@endsection
@section('my-js')
<script type="text/javascript" src="{{url('/js/home/index.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
@endsection

	<!-- news -->
@section('content')
	<div class="main_contactUs">
		<div class="contactUs_content">
			<div class="contactUs_header"><p>联系我们</p></div>
			<div class="contactUs_title"><p>如有意者，请将简历投至HR邮箱：hr@cjmex.cn</p></div>
			<ul>
				<li  data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="contactUs_center">
						<div class="contactUs_post cu_move_d"><p>{{$data['department']}}}<br>现货副经理</p></div>
						<div class="contactUs_responsiblity cu_move_d">
							<div class="cr_title cu_d_font">工作职责：</div>
							<div class="cu_d_font cr_cnt">
								1、进行市场调研，完善现货交易模式；<br>2、根据交易中心整体发展战略协助设计交易品种、制定和修订交易制度；<br>3、及时收集、分析国内外关于大宗商品行业的政策、信息，并提出相关建议，全面跟进行业政策动态，及时汇总分析，基于对政策的理解，为公司争取利益最大化；<br>4、为现货交易的大宗商品,进行物流仓储,贸易结算,现货交收,的工作。<br>5、积极了解上下游客户对现货交易的需求,向公司提出合理化建议,以完善公司现货交易的整个流程。<br>6、维护好现有的交易客户,积极协助公司开拓新的资源,新的客户群。<br>
							</div>
						</div>
						<div class="contactUs_request zp_move_d">
							<div class="cr_title cu_d_font">任职要求：</div>
							<div class="cu_d_font cr_cnt">
								1、本专以上学历，贸易、金融、物流相关专业毕业；<br>2、熟悉大宗商品现货交易模式；<br>3、3年以上的贸易公司工作经验(大宗商品方面的矿产,金属等),对进出口贸易的流程,物流仓储,质量检验,结算等工作要熟悉。<br>4、良好的沟通能力，品行端正、责任心强，细致耐心，有敬业和团队合作精神，能承担较强工作压力。<br><p></p></div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>				
		</div>
@endsection
	