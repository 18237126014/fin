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
			@foreach($data as $v)
				<li  data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="contactUs_center">
						<div class="contactUs_post cu_move_d"><p>{{$v['department']}}<br>{{$v['position']}}</p></div>
						<div class="contactUs_responsiblity cu_move_d">
							<div class="cr_title cu_d_font">工作职责：</div>
							<div class="cu_d_font cr_cnt">
								<?php echo arrval($v,'duty');?>
							</div>
						</div>
						<div class="contactUs_request zp_move_d">
							<div class="cr_title cu_d_font">任职要求：</div>
							<div class="cu_d_font cr_cnt">
								<?php echo $v['demand'];?>
							</div>
						</div>
					</div>
				</li>
			@endforeach
			</ul>
			
		</div>
	</div>				
		</div>
@endsection
	