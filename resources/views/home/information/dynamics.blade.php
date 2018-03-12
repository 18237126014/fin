@extends('home.public.base')
@section('title', '信息中心-中心动态')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('/css/home/style.css')}}" />
<link rel="stylesheet" type="text/css" href="{{url('/css/home/bootstrap.min.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/CSS.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
<style>
.footer .copyright{
	line-height: 10px;
}
</style>
@endsection
@section('my-js')
<script src="{{url('/js/home/jquery.min.js')}}"></script>
<script src="{{url('/js/home/bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{url('/js/home/common.js')}}"></script>
<script type="text/javascript" src="{{url('/js/home/index.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
@endsection
	<!--nav-bottom over-->
@section('content')

	<div class="title">
		{{$info_column->column_name}}
	</div>
	<!-- <div>	 -->
		<div class="cd-content">
					@foreach($info as $v)
					<div class="c-p">
						<a href="{{'/information/announcement/detailed'}}/{{$v->news_id}}">
						<img src="{{$v->titlepic}}" alt="">
						<div>{{$v->title}}</div>
						<div>{{date('Y-m-d H:i:s',$v->lastdotime)}}</div>
						<div>
					       {{$v->smalltext}}
						</div>
						</a>
						<!-- <img class="r-i" src="/images/home/hot.png" alt=""> -->
					</div>
					@endforeach
					<!-- <div class="c-p">
						<img src="/images/home/fmt.jpg" alt="">
						<div>关于部分交易商出金问题的通知</div>
						<div>2017-07-11</div>
						<div>
					        “富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
						</div>
					</div>
					<div class="c-p">
						<img src="/images/home/fmt.jpg" alt="">
						<div>关于部分交易商出金问题的通知</div>
						<div>2017-07-11</div>
						<div>
					        “富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
						</div>
					</div>
					<div class="c-p">
						<img src="/images/home/fmt.jpg" alt="">
						<div>关于部分交易商出金问题的通知</div>
						<div>2017-07-11</div>
						<div>
					        “富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
						</div>
					</div> -->
					
		</div>
				{{$info->links()}}
	</div>
@endsection
	
