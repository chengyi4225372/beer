$(function(){
	var a=document.body.scrollHeight;
	$("#shop").click(function(){
		$("#left-wrap .div").css({"transform":"translate(0,0)"
		})	
		$("#left-wrap .box").height(a).width("90%");	
		
	})
	$("#left-wrap .box").on("touchmove",function(){
		$("#left-wrap .div").css({"transform":"translate(-100%,0)"})
	})
	$(".fan").click(function(){
		$("#left-wrap .div").css({"transform":"translate(-100%,0)"})
	})	
})

$(function(){
	$(window).scroll(function(){
		var move=$(this).scrollTop();		
　　	var scrollHeight = $(document).height();
　　	var windowHeight = $(this).height();

		$(".men-wrap").css({"position":"fixed","bottom":0});
		
　　	if(move + windowHeight == scrollHeight){
　　　　	$(".men-wrap").css({"position":"fixed","bottom":-50});
　　	}		
		
	});
	
})


$(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';        
    }
    else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})


var _hmt = _hmt || [];
$(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?a267108febeef6c754ac832c0fb2d5d4";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})