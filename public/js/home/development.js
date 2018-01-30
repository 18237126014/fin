
    //for fzlc
    $(document).ready(function(){
        //calc circle and line position
        $(".cd-timeline-block").each(function(index){
            var hasImage = $(this).find(".cd-timeline-content img");
            if(hasImage.length>0){
                $(this).find(".cd-timeline-img").css("top","175px");
                $(this).find(".cd-timeline-line").css("top","182px");
            }else{
                $(this).find(".cd-timeline-img").css("top","25px");
                $(this).find(".cd-timeline-line").css("top","32px");
            }

        });
        
        function flickMovie($root){

            var i=0;
            var tt=setInterval(function(){
            //get first root node;
            if(i<$root.find(".cd-timeline-block").length){
                $root.find(".cd-timeline-block .cd-timeline-line").eq(i).css({opacity:1});
                $root.find(".cd-timeline-block .cd-timeline-content").eq(i).css({opacity:1});
                var suffAppend = "";
                if(i%2==0){
                    suffAppend="J";
                }else{
                    suffAppend="K";
                }
                $root.find(".cd-timeline-block .cd-timeline-line").eq(i).addClass("a-fadein"+suffAppend);
                $root.find(".cd-timeline-block .cd-timeline-content").eq(i).addClass("a-fadein"+suffAppend);
                i++;
            }else{
                clearInterval(tt);  
            }
        },100); 
        };
        
        //time line movement
        setTimeout(function(){          
            var $root =  $(".cd-timeline").eq(0);
            // console.log($root);
            // return false;
            flickMovie($root);

        },100);
        
        
        ////headImg loading
        $('.flickerMain').flicker({auto_flick:0});
        //year click
        $(".circle").click(function(){
            var index = $(this).index();
            var leftBase = 430;
            var leftStep = 94;
            var leftTotel = leftBase-leftStep*index;
            $(this).parent().animate({ left: leftTotel }, 500);
            $(".circle").removeClass("circle_selected");
            $(this).addClass("circle_selected");
            //nav action
            $(".dot-navigation li").eq(index).click();
            //clean move action for all
            $(".cd-timeline-block .cd-timeline-line").css({opacity:0});
            $(".cd-timeline-block .cd-timeline-content").css({opacity:0});
            $(".cd-timeline-block .cd-timeline-line").removeClass("a-fadeinJ");
            $(".cd-timeline-block .cd-timeline-line").removeClass("a-fadeinK");
            $(".cd-timeline-block .cd-timeline-content").removeClass("a-fadeinJ");
            $(".cd-timeline-block .cd-timeline-content").removeClass("a-fadeinK");
            //add movie and reset height;
            $(".cd-timeline").each(function(idx){
                if(index == idx){
                    var $root = $(this);
                    $root.removeClass("cd-timeline-hidden");
                    setTimeout(function(){          
                    flickMovie($root);
                    },100);
                }else{
                    $(this).addClass("cd-timeline-hidden");
                }
            });
            
        });
        
        // 默认模拟点击第一个导航栏
        $(".circle_selected").click();
    });

