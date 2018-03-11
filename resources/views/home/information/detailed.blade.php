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
			<p style='font-size: 16px; color:#66bbdd;'>{{$title}}</p>
		</div>

		<div class="ab-text">
			{!! $info->newstext !!}
		</div>	
	</div>
	@endsection
	
	