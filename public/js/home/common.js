//固定导航栏
$(function(){
  var a = $('.nav-bottom'),
    b =a.offset();
  $(document).on('scroll',function(){
    var c = $(document).scrollTop();
    if(b.top<=c){
      a.css({'position':'fixed','top':'60px'})
      }else{
        a.css({'position':'absolute','top':'161px'})
        }
    })
  })

$(function(){
	var a = $('.nav'),
		b =a.offset();
	$(document).on('scroll',function(){
		var	c = $(document).scrollTop();
		if(b.top<=c){
			a.css({'position':'fixed','top':'0px'})
			}else{
				a.css({'position':'absolute','top':'100px'})
				}
		})
	})
// 遮罩层(内容的切换)

$(function () {
    //遍历循环
    $(".menu li").each(function(index) {
        
        $(this).click(function() {
            $(this).addClass("menu focus").siblings().removeClass("focus");
                    $(".content li:eq("+index+")").show().siblings().hide();
                     
        })
         $(this).click(function() {
            $(this).addClass("menu focus").siblings().removeClass("focus");
                    $(".l_title li:eq("+index+")").show().siblings().hide();
                     
        })
    })
})

function show(){
    $(".pdfc").css({"height":window.screen.availHeight});
    $(".pdfc").slideToggle("2000");;
    var st=$(document).scrollTop(); //页面滑动高度
    var ch=$(window).height();//屏幕的高度  
    $(".rules_cnt").css("top",100);

     
    // var sl=$(document).scrollLeft(); //页面滑动左移宽度
    // var objW=$(".rules_cnt").width();//浮动对象的宽度
    // var cw=$(window).width();//屏幕的宽度  
    // var objL=Number(sl)+(Number(cw)-Number(objW))/2; //思路  左移浮动宽度+（（屏幕宽度-对象宽度））/2
    // $(".rules_cnt").css("left",objL);
    // $(".rules_cnt").slideDown("2000");//这里显示方式多种效果
}
$(document).ready(function(){
  $(".close").click(function(){
      $(".pdfc").slideToggle("slow");
    });
});
