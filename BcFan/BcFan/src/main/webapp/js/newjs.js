window.onload = function() {
	var odiv = document.getElementById('head_hidden_pic');
	var oul = odiv.getElementsByTagName('ul')[0]; //要到后面加[0]表示在这个div下的第几个标签;也可以在这里不加[0]，但是在后面要用的时候要写oul[0]
	var ali = oul.getElementsByTagName('li');
	var speed = 2;
	oul.innerHTML = oul.innerHTML + oul.innerHTML; //这个oul.innerHTML中的innerHTML代表ul中的li
	function move() {
		if (oul.offsetLeft > 0) {
			oul.style.left = -oul.offsetWidth / 2 + 'px';
		}
		if (oul.offsetLeft < -oul.offsetWidth / 2) {
			oul.style.left = '0';
		}
		oul.style.left = oul.offsetLeft - speed + 'px';
	}
	var timer = setInterval(move, 30); //向右滚动
}

var stime;
$(function() {
	$("#head_pic").mouseenter(function() {
		$("#head_hidden").fadeIn();
		$("#head_hidden").css("display", "block");
	})
	$("#head_pic").mouseleave(function() {
		stime=setTimeout(function() {
			$("#head_hidden").fadeOut();
		}, 100);
		
	$("#head_hidden").mouseenter(function() {
			clearTimeout(stime);
			$("#head_hidden").css("display", "block");
		})
		$("#head_hidden").mouseleave(function() {
				$("#head_hidden").fadeOut();
		})
		
	})
})

//登录后
		var aftertime;
		$("#Login_head_pic").mouseenter(function(){
			$("#Login_head_pic").animate({marginTop:'20px',height:"60px",width:"60px"},"fast");
			$("#Login_head_img").animate({height:"60px",width:"60px"},"fast");
			$("#Login_head_hidden").fadeIn();
			$("#Login_head_hidden").css("display","block");
		})
		$("#Login_head_pic").mouseleave(function(){
			aftertime=setTimeout(function() {
			$("#Login_head_pic").animate({marginTop:'0px',height:"40px",width:"40px"},"fast");
			$("#Login_head_img").animate({height:"40px",width:"40px"},"fast");
			$("#Login_head_hidden").fadeOut();
		}, 200);
		$("#Login_head_hidden").mouseenter(function() {
			clearTimeout(aftertime);
			$("#Login_head_hidden").css("display", "block");
		})
		$("#Login_head_hidden").mouseleave(function() {
			$("#Login_head_hidden").fadeOut();			
			$("#Login_head_pic").animate({marginTop:'0px',height:"40px",width:"40px"},"fast");
			$("#Login_head_img").animate({height:"40px",width:"40px"},"fast");
		})			
		})