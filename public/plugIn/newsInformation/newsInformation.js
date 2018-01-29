$(function(){

	$(".right>div:eq(0)").children("span:eq(0)").css("background-color","#f00");
	$(".right>div:eq(1)").children("span:eq(0)").css("background-color","#ff4949");
	$(".right>div:eq(2)").children("span:eq(0)").css("background-color","#ff7d7d");

	$(".right>div:lt(3)").children("p").css("color","#a21010");
	
	$(".right>div").hover(function(){

		$(this).css("height","62px");

		$(this).children(".img").css("display","inline-block");

		$(this).children("span:eq(0)").css({

			"line-height":"60px",
			"height":"60px",
			"margin-top":"0px"
		});

		$(this).children("p").css({

			"margin-left":"45%",
		    "margin-top":"-20%",
		    "height":"50px",
		    "line-height":"23px"
		})

		$(this).children("span:eq(1)").css({

			"left":"44.5%",
		    "top": "-12px",
		    "display":"inline-block",

		})

	},function(){

		$(this).css("height","36px");

		$(".img").css("display","none");

		$(this).children("span:eq(0)").css({

    		"line-height":"35px",
			"height":"34px",
			"margin-top":"0"

		});

		$(this).children("p").css({

			"margin-left":"11%",
		    "margin-top":"0",
		    "height":"33px",
		    "line-height":"35px"
		})

		$(this).children("span:eq(1)").css({

		    "display":"none",

		})

	})

	//---------------------------------------two
	
	$(".right2>div:eq(0)").children("span:eq(0)").css("background-color","#f00");
	$(".right2>div:eq(1)").children("span:eq(0)").css("background-color","#ff4949");
	$(".right2>div:eq(2)").children("span:eq(0)").css("background-color","#ff7d7d");

	$(".right2>div:lt(3)").children("p").css("color","#a21010");
	
	$(".right2>div").hover(function(){

		$(this).css("height","62px");

		$(this).children(".img").css("display","inline-block");

		$(this).children("span:eq(0)").css({

			"line-height":"60px",
			"height":"60px",
			"margin-top":"0px"
		});

		$(this).children("p").css({

			"margin-left":"45%",
		    "margin-top":"-20%",
		    "height":"50px",
		    "line-height":"23px"
		})

		$(this).children("span:eq(1)").css({

			"left":"44.5%",
		    "top": "-12px",
		    "display":"inline-block",

		})

	},function(){

		$(this).css("height","36px");

		$(".img").css("display","none");

		$(this).children("span:eq(0)").css({

    		"line-height":"35px",
			"height":"34px",
			"margin-top":"0"

		});

		$(this).children("p").css({

			"margin-left":"11%",
		    "margin-top":"0",
		    "height":"33px",
		    "line-height":"35px"
		})

		$(this).children("span:eq(1)").css({

		    "display":"none",

		})

	})

})