function Scroll(obj,speed,interval){ //父级容器，轮播速度，切换间隔
   $("."+obj).each(function(){
       var $box = $(this),
       $imgUl = $box.children(".list"),
       $imgLi = $imgUl.children("li"),
       $btnUl = $box.children(".btnList"),
       $btnLi = $btnUl.children("li"),
       $btnPreNex = $(".pre-nex"),
       $btnPre = $(".prev"),
       $btnNex = $(".next"),
       n = $imgLi.length,
       width = $imgLi.width(),
       left = parseFloat($imgUl.css("left")),
       k = 0,
       Player;
       $imgUl.css("width",n*width);
 function scroll(){ //轮播事件
   $imgUl.stop().animate({left:-width},speed,function(){
      k += 1;
      $imgUl.css("left",0);
      $imgUl.children("li:first").appendTo($(this));
      $btnLi.removeClass('cur');
      if(k >= n){
          k = 0;
      }
      $btnUl.children("li").eq(k).addClass('cur'); 
   });
 }
 $box.hover(  //鼠标移入、移出事件
   function(){
      clearInterval(Player);
      $btnPreNex.addClass('show');
   },
   function(){
    Player = setInterval(function(){scroll()},interval);
    $btnPreNex.removeClass('show');
   }
 );
 Player = setInterval(function(){scroll()},interval);
 });
 } 
 $(function () {  //读取轮播事件
 Scroll("social_banner",600,2000);
 });
//点击事件
 $(document).ready(function(){  
    //text toggole
    $(".social_tool").each(function(){
      var pHeight=40;
      var $curTool = $(this);
      if($curTool.parent().find("p").text().length<150){
        $curTool.addClass("main_one");
      }
      
      $curTool.click(function(){
        var $parent = $curTool.parent();
        var $p = $parent.children("p");
        if($parent.hasClass("overflowH")){
          $parent.removeClass("overflowH");
          var addHeight = $p.outerHeight()-pHeight;
          var upHeight = $curTool.parents(".social_title").outerHeight()+addHeight;
          $curTool.parents(".social_title").animate({height:upHeight},300,function(){
            $curTool.find("img").attr("src","images/cnt_up.png");
          });
          
        }else{
          $curTool.css("display","none");
          $curTool.parents(".social_title").animate({height:0},300,function(){
            $parent.addClass("overflowH");
            $curTool.find("img").attr("src","images/cnt_down.png");
            $curTool.css("display","block");
          });
          
        }
      });
    });

    var screenWidth = window.screen.width;
    if(screenWidth<=800){
      $(".social_banner>ul>li").removeClass("hidden");
      $(".social_banner>ul>li").addClass("main_one");
    }
    
});

$(document).scroll(function() {
  var scrollTop=$(document).scrollTop();
  var count =   ((scrollTop)/480);
  var liSize = $(".social_banner>ul>li").size();
  if(count>liSize){
    count=liSize;
  }
  for(var i=0;i<count;i++){
    $(".social_banner>ul>li").eq(i).removeClass("hidden");
    $(".social_banner>ul>li").eq(i).addClass("a-fadeinL");
  }
});


//图片得放大
$(document).ready(
    function() {
      var fromL,fromT;
      var isOpen = 0;
      //全局变量，判断是否已经打开弹出框
      $(".actLink").click(
          function() {  
            $(".box-mask").fadeIn(500);
            center($(".boxshipin"));
            //载入弹出窗口上的按钮事件
            checkEvent($(this).parent(), $(".btnSure"),
                $(".demo img"));
            var src = $(this).find("img").attr("src");
            $(".demo img").attr("src",src);
            fromL=$(this).find("img").offset().left;
            fromT=$(this).find("img").offset().top;
            $(".demo img").offset(function(n,c){
              newPos=new Object();
                  newPos.left=fromL;
                  newPos.top=fromT;
                  return newPos;
            });
            $(".demo img").css({
              width:'520px',
              height:'350px'
            });
          });
      function center(obj) {
        //obj这个参数是弹出框的整个对象
        var screenWidth = $(window).width(), screenHeigth = $(
            window).height();
        //获取屏幕宽高
        var scollTop = $(document).scrollTop();
        //当前窗口距离页面顶部的距离
        var objLeft = (screenWidth - obj.width()) / 2;
        ///弹出框距离左侧距离
        var objTop = (screenHeigth - obj.height()) / 2 + scollTop;
        ///弹出框距离顶部的距离
        obj.css({
          left : objLeft + "px",
          top : objTop + "px"
        });
        obj.fadeIn(500);
        //obj.css({"display":"block"});
        //弹出框淡入
        isOpen = 1;
        //弹出框打开后这个变量置1 说明弹出框是打开装填
        //当窗口大小发生改变时
        $(window).resize(
            function() {
              //只有isOpen状态下才执行
              if (isOpen == 1) {
                //重新获取数据
                screenWidth = $(window).width();
                screenHeigth = $(window).height();
                var scollTop = $(document).scrollTop();
                objLeft = (screenWidth - obj.width()) / 2;
                var objTop = (screenHeigth - obj.height())
                    / 2 + scollTop;
                obj.css({
                  left : objLeft + "px",
                  top : objTop + "px"
                });
                obj.fadeIn(500);
              }
            });
        //当滚动条发生改变的时候
        $(window).scroll(
            function() {
              if (isOpen == 1) {
                //重新获取数据
                screenWidth = $(window).width();
                screenHeigth = $(window).height();
                var scollTop = $(document).scrollTop();
                objLeft = (screenWidth - obj.width()) / 2;
                var objTop = (screenHeigth - obj.height())
                    / 2 + scollTop;
                obj.css({
                  left : objLeft + "px",
                  top : objTop + "px"
                });
                obj.fadeIn(500);
              }
            });
      }
      //导入两个按钮事件 obj整个页面的内容对象，obj1为确认按钮，obj2为取消按钮
      function checkEvent(obj, obj1, obj2) {
        //取消按钮事件
        obj2.click(function() {
          //调用closed关闭弹出框
          closed($(".box-mask"), $(".boxshipin"));
        });
      }
      //关闭弹出窗口事件
      function closed(obj1, obj2) {
        $(".demo img").css({
          width:'260px',
          height:'175px'
        });
        
        obj1.fadeOut(500);
        obj2.fadeOut(500),1000;
        isOpen = 0;
      }
    });
