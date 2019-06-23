<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<script src="js/jQuery.js" type="text/javascript" charset="utf-8"></script>
	<style>
		#change_head_img {
			cursor: pointer;
			background: #f1f2f5;
			width: 180px;
			height: 180px;
			position: absolute;
			top: 200px;
			left: 200px;
			border: 1px solid #e5e9ef;
			border-radius: 4px;
		}
		#change_head_img_icon {
			margin: 52px auto 0;
			width: 54px;
			height: 46px;
			display: block;
			background: url(img/icons_m_2.57e5263.png);
			background-position: -101px -1065px;
		}
		#change_head_img_word {
			display: block;
			font-family: MicrosoftYaHei;
			font-size: 16px;
			color: #6d757a;
			line-height: 20px;
			margin-top: 10px;
			margin-left: 60px;
			letter-spacing: 0;
		}
		#change_head_img_borderLine {
			margin-left: 400px;
			margin-top: 200px;
			height: 182px;
			width: 1px;
			background: #e5e9ef;
			float: left;
		}
		#change_head_img_now {
			border: solid 1px #707070;
			width: 98px;
			height: 98px;
			border-radius: 165px;
			-webkit-border-radius: 165px;
			-moz-border-radius: 165px;
			overflow: hidden;
			float: left;
			margin-left: 30px;
			margin-top: 240px;
		}
		#change_head_img_now_word {
			float: left;
			font-size: 12px;
			color: #99a2aa;
			margin-top: 350px;
			margin-left: -70px;
		}
		#change_head_img_tijiao {
			width: 140px;
			height: 50px;
			background: #f4f5f7;
			border-color: #f4f5f7;
			color: #ccd0d7;
			cursor: auto;
			float: left;
			border-radius: 10px;
			margin-left: -200px;
			margin-top: 450px;
		}
	</style>

	<body>
		<form action="UpdatePic" enctype="multipart/form-data" method="post" target="_parent">
			<input type="file" id="change_form_img" name="head_img" style="display: none;" />
			<input type="submit" id="change_form_submit" style="display: none;" />
		</form>
		<div id="change_head">
			<div id="change_head_img">
				<div id="change_head_img_icon"></div>
				<span id="change_head_img_word">选择图片</span>
			</div>
			<div id="change_head_img_borderLine"></div>
		</div>
		<div id="change_head_img_now">
			<!--记得把图片src换成数据库中的头像图片-->
			<img src="img/akari.jpg" style="width: 98px;height: 98px;" />
		</div>
		<p id="change_head_img_now_word">当前头像</p>

		<div id="change_head_img_tijiao">
			<p style="margin-left: 55px;">更新</p>
		</div>
	</body>
	<script>
		$("#change_head_img").mouseenter(function() {
			$("#change_head_img").css("opacity", "0.9")
		})
		 $("#change_head_img").mouseleave(function() {
				$("#change_head_img").css("opacity", "1")
			})
			//选择头像的点击事件
		 $("#change_head_img").click(function() {
			$("#change_form_img").click();
			$("#change_form_img").change(function() {
				var file = document.getElementById("change_form_img").files[0];
				if (!/image\/\w+/.test(file.type)) //判断获取的是否为图片文件
				{
					alert("请确保文件为图像文件");
					return false;
				} else {
					$("#change_head").css("display", "none");
					$("#change_head_img_now").empty();
					$("#change_head_img_now").css("margin-left", "200px");
					$("#change_head_img_now_word").text("预览头像");
					//改变提交的样式
					$("#change_head_img_tijiao").css("background","#0099FF");
					$("#change_head_img_tijiao").css("cursor","pointer");
					$("#change_head_img_tijiao").css("color","white");
					$("#change_head_img_tijiao").click(function(){
						$("#change_form_submit").click();
					})
					var reader = new FileReader();
					reader.readAsDataURL(file);
					reader.onload = function(e) {
						var re = document.getElementById("change_head_img_now");
						re.innerHTML = '<img src="' + this.result + '" style="width:98px;height:98px" alt=""/>';
					}
				}
			})
		})
	</script>

</html>