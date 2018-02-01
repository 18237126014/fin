@extends('home.public.base')
@section('title', '开户流程')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
<link rel="stylesheet" href="{{url('/css/home/jPages.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/web/servicecenter.css')}}">
@endsection
@section('my-js')
<script type="text/javascript" src="{{url('js/home/index.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
<script src="{{url('/js/home/web/servicecenter.js')}}"></script>
@endsection

@section('content')

 	<div class="vmain">
			   
		<div id=center>
		    <div id=dhtmlbook>
		        <span class=page onMouseDown="return false;" ondblclick=tpl(); onclick=tpl();><img class=img></span>
		        <span class="page right" onmousedown="return false;" ondblclick=tpr(); onclick=tpr();><img class=img style="left: -100%"></span>
		        <span class="page turn" onMouseDown="return false;" ondblclick=tpl(); onclick=tpl();><img class=img style="filter: alpha(); opacity: 1"></span>
		        <span class="page turn right" onmousedown="return false;" ondblclick=tpr(); onclick=tpr();><img class=img style="filter: alpha(); left: -100%; opacity: 1"></span>
		        <div id=TXTBOX></div>
		    </div>
		</div>
		<div style="text-align: center;"><h2>开户入金流程</h2></div>
		<div id=imgsrc style="visibility:hidden; height: 500px; overflow: hidden;">
			    	<li style="background: url(/images/home/vbg.png) center no-repeat; min-height: 700px;">
			        	<p style="color: #fff; padding-top: 304px;">开户入金流程</p>
			        </li>
			        <li>
				        <p>客户点击开户链接跳转</p>
				        <img src="/images/home/图片1.png" alt=""></li>
			        <li>
			        	<p>输入手机号、短信验证码登录</p>
			        	<img src="/images/home/图片2.png" alt="">
			        </li>
			        <li>
			        	<img src="/images/home/图片3.png" alt="">
			        </li>
			        <li>
			        	<p>上传身份证界面</p>
			        	<img src="/images/home/图片4.png" alt="">
			        </li>
			        <li>
				        <p>身份证自动识别、邮箱验证注意修改错误信息、邮箱保证经常查看</p>
				        <img src="/images/home/图片5.png" alt="">
			        </li>
			        <li>
				        <p>邮箱验证过程</p>
				        <img src="/images/home/图片6.png" alt="">
			        </li>
			        <li>
				        <p>提交个人资料</p>
				        <img src="/images/home/图片7.png" alt="">
			        </li>
			        <li>
				        <p>开户注资环节填写注资额度后点击“前往支付”</p>
				        <img src="/images/home/图片8.png" alt="">
			        </li>
			        <li>
				        <p>再次点击“前往支付”</p>
				        <img src="/images/home/图片9.png" alt=""></li>
			        <li>
				        <p>第三方支付通道信息</p>
				        <img src="/images/home/图片11.png" alt="">
			        </li>
			        <li>
				        <p>可入金银行列表</p>
				        <p>17家全国性银行</p>
				        <img src="/images/home/图片12.png" alt="">
			        </li>
			        <li>
				        <p>工行e支付入金实例</p>
				        <img src="/images/home/图片13.png" alt="">
			        </li>
			        <li>
			        	<p>工行e支付入金实例</p>
			        	<img src="/images/home/图片14.png" alt="">
			        </li>
			        <li>
			        	<p>工行e支付入金实例</p>
				        <img src="/images/home/图片15.png" alt="">
			        </li>
			        <li>
				        <p>入金成功进入交易账户申请流程点击立即“申请开户”</p>
				        <img src="/images/home/图片16.png" alt="">
			        </li>
			        <li>
			        	<img src="/images/home/图片17.png" alt="">
			        </li>
			        <li>
			        	<p>等待风控电话</p>
			        	<img src="/images/home/图片18.png" alt="">
			        </li>
			        <li>
			        	<p>短信通知</p>
			        	<img src="/images/home/图片19.png" alt="">
			        </li>
			        <li>
				        <p>再次登录后台会要求设置密码</p>
				        <p>manager.fxbtg-bank.com</p>
				        <img src="/images/home/图片20.png" alt="">
			        </li>
			        <li>
			        	<p>点击更改密码</p>
			        	<img src="/images/home/图片21.png" alt="">
			        </li>
			        <li>
				        <p>输入两次设置的密码后点击确认修改</p>
				        <img src="/images/home/图片22.png" alt="">
			        </li>
			        <li>
			            <p>输入手机验证码后再次点确认修改</p>
			            <img src="/images/home/图片23.png" alt="">
			            </li>
			        <li>
			            <p>修改成功</p>
			            <img src="/images/home/图片24.png" alt="">
			          </li>
			        <li>
			            <p>用新密码登录后台</p>
			            <img src="/images/home/图片25.png" alt="">
			        </li>
			        <li>
			            <p>修改MT4交易密码（必须）</p>
			            <img src="/images/home/图片26.png" alt="">
			        </li>
			        <li>
			            <p>手机准备接受验证码</p>
			            <img src="/images/home/图片27.png" alt="">
			        </li>
			        <li>             
			            <p>输入两次MT4交易密码和验证码（建议和后台密码一致</p>
			            <img src="/images/home/图片28.png" alt="">
			        </li>
			        <li>
			            <p>MT4密码修改后可登陆做单</p>
			            <img src="/images/home/图片29.png" alt="">
			        </li>
			        <li>
			            <p>MT4服务器选择FXBTG-Main</p>
			            <img src="/images/home/图片30.png" alt="">
			        </li>
			        <li>
			            <p>自主开立VIP账户</p>
			            <img src="/images/home/图片31.png" alt="">
			        </li>
			        <li>
			            <p>自己开立VIP账户</p>
			            <img src="/images/home/图片32.png" alt="">
			        </li>
			        <li>
			            <img src="/images/home/图片33.png" alt="">
			        </li>
			        <li>
			            <img src="/images/home/图片34.png" alt="">
			        </li>
			        <li>
			            <p>功能项1</p>
			            <img src="/images/home/图片35.png" alt="">
			        </li>
			        <li>
			            <p>功能项2</p>
			            <img src="/images/home/图片36.png" alt="">
			        </li>
			        <li>
			            <p>功能项3</p>
			            <img src="/images/home/图片37.png" alt="">
			        </li>
			        <li>
			            <p>再次入金300美金起</p>
			            <img src="/images/home/图片38.png" alt="">
			        </li>
			        <li>
			            <p>出金需先绑定银行卡账户如有持仓，不能全出</p>
			            <img src="/images/home/图片39.png" alt="">
			        </li>
			        <li>
			            <p>绑定银行卡所需项</p>
			            <img src="/images/home/图片40.png" alt="">
			        </li>
			        <li>
			            <p>可绑定银行卡</p>
			            <img src="/images/home/图片41.png" alt="">
			        </li>
			    </ul> 
		</div>
  	</div>
 @endsection
		<!-- 尾部 -->
	
    
