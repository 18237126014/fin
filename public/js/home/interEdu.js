// function loadFlowDiv(index){ 
//   var strVar = "";
//  if(index==1){strVar=" 客户点击开户链接跳转<br/><img src='./images/图片1.png' alt=''>"}
//  if(index==2){strVar="<img src='./images/1471922722455040817' alt=''>"}
//  // if(index==3){strVar="<img src='./images/图片3.png' alt=''>"}
//  // if(index==4){strVar="<img src='./images/图片4.png' alt=''>"}
//  // if(index==5){strVar="<img src='./images/图片5.png' alt=''>"}
//  // if(index==6){strVar="<img src='./images/图片6.png' alt=''>"}
//  // if(index==7){strVar="<img src='./images/图片7.png' alt=''>"}
//  // if(index==8){strVar="<img src='./images/图片8.png' alt=''>"}
//  // if(index==9){strVar="<img src='./images/图片9.png' alt=''>"}
//  // if(index==10){strVar="<img src='./images/图片10.png' alt=''>"}
//  // if(index==11){strVar="<img src='./images/图片11.png' alt=''>"}
//  // if(index==12){strVar="<img src='./images/图片12.png' alt=''>"}
//  // if(index==13){strVar="<img src='./images/图片13.png' alt=''>"}
//  // if(index==14){strVar="<img src='./images/图片14.png' alt=''>"}
//  // if(index==15){strVar="<img src='./images/图片15.png' alt=''>"}
//  // if(index==16){strVar="<img src='./images/图片16.png' alt=''>"}
//  // if(index==17){strVar="<img src='./images/图片17.png' alt=''>"}
//  // if(index==18){strVar="<img src='./images/图片18.png' alt=''>"}
//  // if(index==19){strVar="<img src='./images/图片19.png' alt=''>"}
//  // if(index==20){strVar="<img src='./images/图片20.png' alt=''>"}
//  $("#iList").html(strVar);

// }
// $(".focus2").html("<p></p>");
window.onload=function(){
    var oto1=document.getElementById('foucs');
    var oto2=oto1.getElementsByTagName(' li');
    var oto3=document.getElementById('iList');
    for(var i=0;i<oto2.length;i++){
            oto2[i].index=i;
            oto2[i].onclick=function(){
                    oto3.innerHTML=oto2[this.index].innerHTML;
                    }
    }
}