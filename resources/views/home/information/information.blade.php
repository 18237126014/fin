@extends('home.public.base')
@section('title', '信息中心-中心公告')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('/css/home/style.css')}}"/>
<link rel="stylesheet" type="text/css" href="{{url('/css/home/bootstrap.min.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/CSS.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
@endsection
@section('my-js')
<script type="text/javascript" src="{{url('/js/home/common.js')}}"></script>
<script type="text/javascript" src="{{url('/js/home/index.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
@endsection

	<!--nav-bottom over-->
@section('content')
<div class="main">
	<div class="title">
		中心公告
	</div>
	<div class="cb-content">
		@foreach($info as $v)
		<div class="c-b-p">
			<a href="{{'/information/announcement/detailed'}}/{{$v->news_id}}">
				<!-- <img src="/images/home/fmt.jpg" alt=""> -->
				<!-- <img src="{{$v['titlepic']}}" alt=""> -->
				<img src="/upload/images/2018/0309/1520561075783294.jpg" alt="">
				<div>{{$v->title}}</div>
				<div>{{date('Y-m-d H:i:s',$v->lastdotime)}}</div>
				<div>{{$v->smalltext}}</div>
			</a>
			<!-- <img class="r-i" src="/images/home/hot.png" alt=""> -->
		</div>
		@endforeach
		
		
		<!-- <div class="c-b-p">
			<img src="/images/home/fmt.jpg" alt="">
			<div>关于部分交易商出金问题的通知</div>
			<div>2017-07-11</div>
			<div>
		       	“富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
			</div>
		</div> -->
	</div>

		{{$info->links()}}
	
	<!-- <ul class="pagination pagination-s">
	    <li><a href="#">&laquo;</a></li>
	    <li><a href="#">1</a></li>
	    <li><a href="#">2</a></li>
	    <li><a href="#">&raquo;</a></li>
	</ul><br> -->
	@endsection
	