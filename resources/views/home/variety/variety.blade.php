@extends('home.public.base')
@section('title', '首页')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
@endsection
@section('my-js')
<script type="text/javascript" src="{{url('/js/home/index.js')}}"></script>
<script type="text/javascript" src="{{url('/js/home/common.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
@endsection

@section('content')
	<!-- variety -->
	<div class="variety_main">
		 <div class="variety_content">
			<ul>
			<!--原油-->
				<li>
					<div class="variety_oil" style ='height:31px' data-scroll-reveal="enter bottom over 1s after 0.5s">
						<a name="001" id="001 main_top" class="target-fix" name=""  href="javascript:void(0)">原油</a>
					</div>
					<div class="var_base" data-scroll-reveal="enter left over 1s after 0.5s">
						<iframe id="Exhibition" name="Exhibition" src="http://hq.dyhjw.com/nhq/fenshi.php?code=CONC" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" width="95%" height="400px" style="border: 8px solid #f1f1f1; padding-top: 30px;" ></iframe>
					</div>
				</li>
			<!--布伦特原油-->
				<li>
					<div class="variety_oil" style ='height:31px' data-scroll-reveal="enter bottom over 1s after 0.5s"><a name="002" id="002"  href="javascript:void(0)">布伦特原油</a></div>
					<div class="var_base" data-scroll-reveal="enter left over 1s after 0.5s">
						<iframe id="Exhibition" name="Exhibition" src="http://hq.dyhjw.com/nhq/fenshi.php?code=OILM" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" width="95%" height="400px" style="border: 8px solid #f1f1f1; padding-top: 30px;" ></iframe>
					</div>
				</li>
			<!--黄金T+D-->
				<li>
					<div class="variety_oil" style ='height:31px' data-scroll-reveal="enter bottom over 1s after 0.5s"><a href="javascript:void(0)" name="003" id="003" >黄金T+D</a></div>
					<div class="var_base" data-scroll-reveal="enter left over 1s after 0.5s">
						<iframe id="Exhibition" name="Exhibition" src="http://hq.dyhjw.com/nhq/fenshi.php?code=AUTD" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" width="95%" height="400px" style="border: 8px solid #f1f1f1; padding-top: 30px;" ></iframe>
					</div>
				</li>
			<!--白银T+D-->
				<li>
					<div class="variety_oil" style ='height:31px' data-scroll-reveal="enter bottom over 1s after 0.5s"><a href="javascript:void(0)" name="004" id="004" >白银T+D</a></div>
					<div class="var_base" data-scroll-reveal="enter left over 1s after 0.5s">
						<iframe id="Exhibition" name="Exhibition" src="http://hq.dyhjw.com/nhq/fenshi.php?code=AGTD" marginheight="0" marginwidth="0" frameborder="0" scrolling="no" width="95%" height="400px" style="border: 8px solid #f1f1f1; padding-top: 30px;" ></iframe>
					</div>
				</li>
			</ul>
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
