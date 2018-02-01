@extends('home.public.base')
@section('title','社会责任')
@section('my-css')
<link rel="stylesheet" type="text/css" href="{{url('/css/home/social.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
@endsection
@section('my-js')
<script type="text/javascript" src="{{url('/js/home/index.js')}}"></script>
<script type="text/javascript" src="{{url('/js/home/social.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
@endsection

@section('content')
	
    <div class="main">
	 <!-- 导读图 -->
		<div class="main_img">
			<div class="img">
				<img src="/images/home/shzr_head.jpg" alt="">
			</div>
		</div>
	<!-- 内容 -->
		<div class="social_main">
			<ul>
				<li class="main_one" data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="social_content">
						<div class="social_title">
							<span class="title_year">2016年</span>
							<span class="title_date">11月24日</span>
							<span class="title_dable">心怀感恩，反哺社会：长江联合展开感恩节慰老活动</span>
							<span class="title_desc">
								<p>2016年11月24日，适逢感恩节，上海长江联合金属交易中心组织前往浦东新区洋泾金枫敬老院慰问孤寡老人，197号会员单位上海谐昱金属有限公司及195号会员单位上海宁雍金属有限公司积极参与到本次活动中。</p>
							</span>
						</div>
						<div class="social_down">
							<div class="social_banner">
								<ul class="list">
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925792962024354.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925804449087714.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925816343009908.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925825881078076.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925838277011882.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925850107065442.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925858098026270.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925867335073322.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925878554064428.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925888202075041.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925792962024354.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925804449087714.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925816343009908.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925825881078076.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925838277011882.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925850107065442.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925858098026270.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925867335073322.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925878554064428.jpg"></a></li>
									<li><a class="actLink"><img id="img_click" src="/images/home/1480925888202075041.jpg"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="main_one" data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="social_content">
						<div class="social_title">
							<span class="title_year">2016年</span>
							<span class="title_date">11月4日</span>
							<span class="title_dable">爱心助学，传递正能量：长江联合第二期山区助学活动顺利进行</span>
							<span class="title_desc">
								<p>上海长江联合金属交易中心第一期针对偏远学校的爱心帮扶行动为山区小学的孩子们送去了学习用品与社会关怀，此举得到了全体员工和会员单位的大力支持。公益不在于一时一刻，为了将正能量发扬延续，帮助更多条件落后的偏远学校，长江联合顺利开展了第二期山区助学活动。</p>
							</span>
						</div>
						<div class="social_down">
							<div class="social_banner">
								<ul class="list">
									<li><a class="actLink"><img src="/images/home/1480910616791079883.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910626060067352.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910638027022722.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910647356045006.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910656664082380.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910667091076028.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910675805097492.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910686998058330.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910696183093277.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910711301031093.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910744551011628.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910755955030215.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910616791079883.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910626060067352.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910638027022722.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910647356045006.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910656664082380.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910667091076028.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910675805097492.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910686998058330.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910696183093277.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910711301031093.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910744551011628.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480910755955030215.jpg"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="main_one" data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="social_content">
						<div class="social_title">
							<span class="title_year">2016年</span>
							<span class="title_date">10月14日</span>
							<span class="title_dable">阳光支教，孕育希望：长江联合爱心帮扶偏远乡村学校</span>
							<span class="title_desc">
								<p>当城市的孩子们享受着先进良好教育的同时，还有很多教育资源贫乏、教学条件落后的贫困地区，外界的爱心与帮助能给偏远地区学校的孩子们带来更多希望。早在9月开学之时，上海长江联合金属交易中心便开启了对部分偏远乡村学校的爱心帮扶行动。</p>
							</span>
						</div>
						<div class="social_down">
							<div class="social_banner">
								<ul class="list">
									<li><a class="actLink"><img src="/images/home/1480908391754026662.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480908412511005784.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480908424560064081.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480908442469078503.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480908454209060631.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480908465869029559.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480908476118010400.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480908485713004453.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1480908496025085014.jpg"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="main_one" data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="social_content">
						<div class="social_title">
							<span class="title_year">2016年</span>
							<span class="title_date">09月13日</span>
							<span class="title_dable">爱在中秋，情系孤老：长江联合开展中秋慰问孤老活动</span>
							<span class="title_desc">
								<p>2016年9月13-14日，中秋佳节前夕，为了让街道的孤寡老人能过上温馨的节日，上海长江联合金属交易中心有限公司一行赴陆家嘴街道探望孤寡老人，为他们送去慰问礼品与中秋祝福。</p>
							</span>
						</div>
						<div class="social_down">
							<div class="social_banner">
								<ul class="list">
									<li><a class="actLink"><img src="/images/home/1474361832684069065.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361846111028936.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361857330094681.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361868178053108.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361884808076770.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361897066048620.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361908879080339.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361918551046030.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361948067002997.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361965033004857.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361975964027104.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474361988790058240.jpg"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="main_one" data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="social_content">
						<div class="social_title">
							<span class="title_year">2016年</span>
							<span class="title_date">09月05日</span>
							<span class="title_dable">长江联合赴青浦育才民办小学开展爱心助学活动</span>
							<span class="title_desc">
								<p>2016年9月5日，上海长江联合金属交易中心有限公司一行赴上海青浦育才民办小学进行爱心助学及教师节慰问，参与本次活动的还有：167号会员上海万加金属有限公司、229号会员上海誉轶实业有限公司、799号会员北京金桐商品经营有限公司。</p>
							</span>
						</div>
						<div class="social_down">
							<div class="social_banner">
								<ul class="list">
									<li><a class="actLink"><img src="/images/home/1474359632929055386.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474359648998034305.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474359744666072587.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474359769459026504.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474359790767005442.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474359802189001169.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474359814850055502.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474359825950090043.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474359866591013615.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1474360013430028664.jpg"></a></li>

								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="main_one" data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="social_content">
						<div class="social_title">
							<span class="title_year">2016年</span>
							<span class="title_date">07月21日</span>
							<span class="title_dable">关爱环卫工作者 长江联合酷暑送清凉</span>
							<span class="title_desc overflowH">
								<p>入伏以来，气温攀升，2016年7月21日，上海长江联合金属交易中心一行赴上海天佑综合养护有限公司进行慰问，并为高温下作业的环卫工作者们发放降暑“清凉包”，帮助他们清凉度夏、避免中暑。
为了号召更多的人关爱环卫工人、尊重环卫成果，长江联合于7月15日的微信公众号平台发起爱心倡议，得到了广大会员单位和爱心人士的大力支持，大家一致认为环卫工人是名副其实烈日下的劳动者，“爱心清凉”首先要送给他们。
21日，长江联合以及会员单位组成的送清凉爱心队伍，共同搬运物资至天佑养护，并分发到环卫工们的手中， 不断嘱咐环卫朋友们在工作的同事保重身体。当天气温已近40摄氏度，上海长江联合金属交易中心董事长蒋良德先生表示：“环卫工人们不分酷暑严冬，一直奋战在清洁城市、改善环境的第一线，在建设城市文明中担任着重要的角色。工作不分大小贵贱，我们要尊重环卫工人们的劳动成果、学习他们勤勤恳恳的精神。”</p>
							<div class="social_tool"><div><img src="/images/home/cnt_down.png">全文</div></div>
							</span>
						</div>
						<div class="social_down">
							<div class="social_banner">
								<ul class="list">
									<li><a class="actLink"><img src="/images/home/1472460037372066601.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460047111003390.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460059871073711.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460069865082808.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460078568086272.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460093842073273.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460119778056689.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460131851045383.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460142783031945.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460154237042825.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472462474053050451.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472462487854019514.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472462511905014660.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472462534293053098.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472462550828090835.jpg"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="main_one" data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="social_content">
						<div class="social_title">
							<span class="title_year">2016年</span>
							<span class="title_date">06月23日</span>
							<span class="title_dable">长江联合携手支援阜宁灾区</span>
							<span class="title_desc overflowH">
								<p>2016年6月23日15时左右，江苏省盐城市阜宁、射阳等地出现强雷电、短时强降雨、冰雹、雷雨大风等强对流天气，局部地区遭龙卷风袭击，灾情严重。一方有难、八方支援，上海长江联合金属交易中心获悉灾情后，以蒋良德董事长带领的领导班子第一时间发起号召，迅速组建爱心志愿小组，各部门员工纷纷报名加入志愿者队伍，齐心协力购置救援物资并奔赴灾区支援赈灾工作。
在需求为本、理性救灾、有序支援的原则下，24日，由交易中心各部门员工组成支援小组，并就接下来的救灾物资购置、车辆及路线安排、阜宁灾区现场对接、伤员慰问及物资发放等具体工作进行规划安排。</p>
							<div class="social_tool"><div><img src="images/home/cnt_down.png">全文</div></div>
							</span>
						</div>
						<div class="social_down">
							<div class="social_banner">
								<ul class="list">
									<li><a class="actLink"><img src="/images/home/1472460743198016445.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459823330098653.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459845212025098.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459861425070514.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459875449024420.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459946360038808.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459962118015853.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459974870002409.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459984520056835.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460820080063511.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472461849528008266.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472461893657036593.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472461913237037602.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472460627040098477.jpg"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="main_one" data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="social_content">
						<div class="social_title">
							<span class="title_year">2016年</span>
							<span class="title_date">06月08日</span>
							<span class="title_dable">长江联合赴陆家嘴敬老院慰问</span>
							<span class="title_desc overflowH">
								<p>“尊老、爱老，是中华民族的传统美德，也是长江联合企业文化及精神文明建设中所要弘扬的优秀品格”，在上海长江联合金属交易中心董事长蒋良德的倡导与支持下，端午佳节到来之际，长江联合一行赴往浦东新区陆家嘴敬老院进行慰问活动，为老人们送去日常物资与节日的问候，让老人们感受到社会的爱心与温暖。</p>
							</span>
						</div>
						<div class="social_down">
							<div class="social_banner">
								<ul class="list">
									<li><a class="actLink"><img src="/images/home/1472459609166099969.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459622162020282.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459648562089461.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459681115053190.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459693432005832.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459708664026967.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459718260093919.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459738765097586.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459752356017595.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459766584034255.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472462350074034401.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472462773479079135.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472462384039062419.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472462402791099081.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472462416333003393.jpg"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="main_one" data-scroll-reveal="enter left over 1s after 0.1s">
					<div class="social_content">
						<div class="social_title">
							<span class="title_year">2016年</span>
							<span class="title_date">05月26日</span>
							<span class="title_dable">长江联合广慈福利院爱心行顺利进行</span>
							<span class="title_desc">
								<p>在“六 一”儿童节来临之际，上海长江联合金属交易中心携手部分会员单位前往上海广慈残疾儿童福利院，共同探望福利院的孤残儿童，为他们送上日常所需物资和节日的祝福。</p>
							</span>
						</div>
						<div class="social_down">
							<div class="social_banner">
								<ul class="list">
									<li><a class="actLink"><img src="/images/home/1472459287592090170.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459384668017511.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459406667067312.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459429073023096.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459446517018293.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459458037052043.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459477191007757.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459490463029777.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459510191088347.jpg"></a></li>
									<li><a class="actLink"><img src="/images/home/1472459534860070967.jpg"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="box-mask box-mask-act" style="display: none;"></div>
		<div class="boxshipin" style="left: 451.5px; top: 4513.5px; display: none;">
			<div class="demo">
				<img class="zoom0" src="/images/home/1472459458037052043.jpg">
			</div>
		</div>
	</div>
@endsection
	