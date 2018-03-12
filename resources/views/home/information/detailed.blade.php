@extends('home.public.base')
@section('title', '关于我们-中心简介')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('css/home/CSS.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('css/home/share.css')}}">
<style>
	.text {
    width: 1903px;
    /*height: 80%px;*/
    margin: 0 auto;
}
.text p {
	width: 800px;
    line-height: 24px;
    font-size: 13px;
    color: #717171;
    font-weight: 300;
    margin: 0 auto;
    text-align: left;
    font-family: "微软雅黑";
    margin-bottom: 3%;
    font-weight: inherit;
}
.text h3 {
    color: #B58E4D;
    font-weight: 600;
    font-size: 14px;
    line-height: 28px;
    margin: 0 auto;
    width: 800px;
}

.fr-fic{
    width:700px;
}
</style>
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
			{{$column}}

			<h3 style='font-size: 18px; color:red; font-weight:800'>{{$title}}</h3>
		</div>
		<div class="text">
			{!! $info->newstext !!}
		</div>
	</div>

@endsection
	



	