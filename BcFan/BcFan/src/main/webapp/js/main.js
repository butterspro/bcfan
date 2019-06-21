//输入框
$(".el-input__inner").focus(function(){
	$(this).css("border-color","#00A1D6");
});
$(".el-input__inner").blur(function(){
	$(this).css("border-color","#dcdfe6");
});
//当点击获取验证码的时候
$(".yzm-btn").click(function(e) {

	//$(".yzm-btn").unbind("mouseenter").unbind("mouseleave");
	$(this).attr("class", "el-btn yzm-btn yzm-change");
	$(this).attr("disabled", "disabled"); //按钮设置为不可点
	//console.log($(this).css("background-color"));
	var second = 59;
	var yzmTimer = setInterval(function() {
		$(".yzm-btn").text(second + '秒后获取');
		second--;
		if (second == -1) {
			clearInterval(yzmTimer);
			$(".yzm-btn").text("点击获取");
			$(".yzm-btn").attr("class", "el-btn yzm-btn");
			$(".yzm-btn").removeAttr("disabled");
		}
	}, 1000);
});


//输入框验证不为空
/*$(".el-input__inner").focus(function(){
	$(this).parent().parent().next().text("");
	if($(this).val()==null||$(this).val()==""){
		$(this).css('border-color','#ddd');
	}
});
$(".el-input__inner").blur(function(){
	if($(this).val()==null||$(this).val()==""){
		$(this).css('border-color','#f66495');
		$(this).parent().parent().next().text("不能为空");
	}
});*/

