@extends('home.public.base')
@section('title', '资讯要闻')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('/css/home/bootstrap.min.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/CSS.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/plugin/pagination/pagination.css')}}">
<style>

.ni-content .c-p img{
	width:250px;
	height:150px;
}
.footer .copyright{
	line-height: 10px;
}
</style>
@endsection
@section('my-js')
<script src="{{url('/plugin/pagination/jquery.pagination.js')}}"></script>
<script src="{{url('/js/home/bootstrap.min.js')}}"></script>
<script src="{{url('/plugin/newsInformation/newsInformation.js')}}"></script>
<script type="text/javascript" src="{{url('/js/home/common.js')}}"></script>
<script type="text/javascript" src="{{url('/js/home/index.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>

<script src="{{url('/js/home/web/impnews.js')}}"></script>
@endsection
	
	<!--nav-bottom over-->
	@section('content')

	<div class="title">
		{{$info_column->column_name}}
	</div>
	<div class="ni-content">
	<div class="left">
		@foreach($info as $v)
		<div class="c-p">
			<a href="{{'/information/announcement/detailed'}}/{{$v->news_id}}">
			<img src="{{$v->titlepic}}" alt="">
			<div>{{$v->title}}</div>
			<div>{{date('Y-m-d H:i:s',$v->lastdotime)}}</div>
			<div>{{$v->smalltext}}</div>
			</a>
		</div>
		@endforeach
		<!-- <div class="c-p">
			<img src="/images/home/fmt2.jpg" alt="">
			<div>关于部分交易商出金问题的通知</div>
			<div>2017-07-11</div>
			<div>
		        “富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
			</div>
		</div>
		<div class="c-p">
			<img src="/images/home/fmt2.jpg" alt="">
			<div>关于部分交易商出金问题的通知</div>
			<div>2017-07-11</div>
			<div>
		        “富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
			</div>
		</div>
		<div class="c-p">
			<img src="/images/home/fmt2.jpg" alt="">
			<div>关于部分交易商出金问题的通知</div>
			<div>2017-07-11</div>
			<div>
		        ​“富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
			</div>
		</div>
		<div class="c-p">
			<img src="/images/home/fmt2.jpg" alt="">
			<div>关于部分交易商出金问题的通知</div>
			<div>2017-07-11</div>
			<div>
		        “富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
			</div>
		</div>
		<div class="c-p">
			<img src="/images/home/fmt2.jpg" alt="">
			<div>关于部分交易商出金问题的通知</div>
			<div>2017-07-11</div>
			<div>
		        “富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
			</div>
		</div>
		<div class="c-p">
			<img src="/images/home/fmt2.jpg" alt="">
			<div>关于部分交易商出金问题的通知</div>
			<div>2017-07-11</div>
			<div>
		        “富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
			</div>
		</div>
		<div class="c-p">
			<img src="/images/home/fmt2.jpg" alt="">
			<div>关于部分交易商出金问题的通知</div>
			<div>2017-07-11</div>
			<div>
		       	“富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
			</div>
		</div>
		<div class="c-p">
			<img src="/images/home/fmt2.jpg" alt="">
			<div>关于部分交易商出金问题的通知</div>
			<div>2017-07-11</div>
			<div>
		        “富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
			</div>
		</div>
		<div class="c-p">
			<img src="/images/home/fmt2.jpg" alt="">
			<div>关于部分交易商出金问题的通知</div>
			<div>2017-07-11</div>
			<div>
		        “富贵者赠人以物，有德者赠人以言”。近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办、上海长江联合金属的萨芬士大夫俄方微风士大夫士大夫为亲人委屈热污染地方大师傅似的热情我惹我微软工会还素的长啊军嫂苏丹首都障碍撒谎
			</div>
		</div> -->
	</div>
		<div class="right">
			<h2>资讯排行榜</h2>
			<div>
				<span>1</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为由四川省政府教育厅为由四川省政府教育厅为由四川省政府教育厅为由四川省政府教育厅为由四川省政府教育厅为指导单位、
					</p>
					<span>2017/12/28</span>
			</div>
			<!-- <div>
				<span>2</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>3</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>4</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>5</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>6</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>7</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>8</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>9</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>10</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div> -->
		</div>
		<!-- <div class="right2">
			<h2>最新资讯</h2>
			<div>
				<span>1</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为由四川省政府教育厅为由四川省政府教育厅为由四川省政府教育厅为由四川省政府教育厅为由四川省政府教育厅为指导单位、
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>2</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>3</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>4</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>5</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>6</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>7</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>8</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>9</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
			<div>
				<span>10</span>
				<div class="img">
					<img src="/images/home/fmt3.jpg" alt="">
				</div>
					<p>
						近日，由四川省政府教育厅为指导单位、上海善赢会展服务有限公司主办
					</p>
					<span>2017/12/28</span>
			</div>
		</div> -->
	</div>
	{{$info->links()}}
	<!-- <ul class="pagination pagination-s">
	    <li><a href="#">&laquo;</a></li>
	    <li><a href="#">1</a></li>
	    <li><a href="#">2</a></li>
	    <li><a href="#">3</a></li>
	    <li><a href="#">4</a></li>
	    <li><a href="#">5</a></li>
	    <li><a href="#">&raquo;</a></li>
	</ul><br> -->

<!-- 尾部 -->
	
	
	
@endsection
		<!-- <script>
		      (function($) {
		        'use strict';
		        window.scrollReveal = new scrollReveal({ reset: true, move: '50px' });
		      })();
		</script>
 -->