<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/newcss.css" />
</head>
<body>
	<!--头部开始-->
	<div id="header">
		<div class="nav-menu">
			<div class="nav-wrapper">
				<!--导航开始-->
				<div class="fl">
					<ul>
						<li class="nav-item home"><a href="#" class="t" title="主站">
								<i class="tv"> </i> 主站
						</a></li>
						<li class="nav-item"><a href="#" class="t" title="音频">音频</a>
						</li>
						<li class="nav-item"><a href="#" class="t" title="游戏中心">游戏中心</a>
						</li>
						<li class="nav-item"><a href="#" class="t" title="直播">直播</a>
						</li>
						<li class="nav-item"><a href="#" class="t" title="会员购">会员购</a>
						</li>
						<li class="nav-item"><a href="#" class="t" title="漫画">漫画</a>
						</li>
						<li class="nav-item"><a href="#" class="t" title="BW">BW</a>
						</li>
					</ul>
				</div>
				<!--导航结束-->
				<div class="fr">
					<ul>
						<li class="nav-item profile-info">
						<!-- <a href="#" class="t">
								<div class="i-face">
									<img src="img/akari.jpg" />

								</div>
							</a> -->
							<!--未登录前-->
							<div  <c:if test="${loginUser!=null}">style="display: none;"</c:if> >
								<div id="head_pic">
									<img src="img/akari.jpg" style="width: 40px; height: 40px;" />
								</div>
								<!--头像框-->
								<div id="head_hidden">
									<p
										style="font-size: 13px; margin-left: 13px; text-align: left;">登录后你可以</p>
									<div id="head_hidden_pic">
										<ul>
											<li><img src="img/danmu.png" /> <img
												src="img/danmu.png" /> <img src="img/danmu.png" /> <img
												src="img/danmu.png" /></li>
										</ul>
									</div>
									<div id="head_log">
										<button id="head_login">登录</button>
										<p>
											首次使用？点我去<a>注册</a>
										</p>
									</div>
								</div>
							</div> 
							<!--登录后-->
							<div class="Login_after" <c:if test="${loginUser==null}">style="display: none;"</c:if>>
								<div id="Login_head_pic">
									<img id="Login_head_img" src="img/akari.jpg"
										style="width: 40px; height: 40px;" />
								</div>
								<div id="Login_head_hidden">
									<p style="margin: 35px auto;">${loginUser.uname } </p>
									<a href="main.jsp">
										<p>个人中心</p>
									</a> <a>
										<p>投稿管理</p>
									</a> <a>
										<p>退出</p>
									</a>
								</div>

							</div>
						</li>
						<li class="nav-item"><a href="#" class="t" style="visibility: hidden;">历史</a></li>
					</ul>
				</div>
				<div class="fr">
					<div class="nav-search-box">
						<div class="nav-search ">
							<form id="nav_searchform">
								<input type="text" class="nav-search-keyword"
									placeholder="命运之夜,黑暗将至" />
								<button type="submit" class="nav-search-submit"></button>

							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!--头部结束-->
	<!--中间部分开始-->
	<div id="main">
		<div class="top-banner">
			<img src="img/top_banner.png" />
		</div>
		<div class="title-line">
			<span class="tit">登录</span>
		</div>
		<div class="login-box">
			<form id="login_form" action="checkLogin">
				<div class="form-group">
					<div class="el-input">
						<input type="text" name="telOrName" placeholder="你的手机号/用户名"
							class="el-input__inner" id="telOrName"/>
					</div>
					<p class="error-message"></p>
				</div>
				<div class="hidden-group"></div>
				<div class="form-group">
					<div class="el-input">
						<input type="password" name="u.upassword" placeholder="密码"
							class="el-input__inner" id="password"/>
					</div>
					<p class="error-message"></p>
				</div>
				<div class="hidden-group">${message}</div>
				<div class="member">
					<a href="forgotPassword.jsp">忘记密码?</a><!--  <a href="#" class="not-check">无法验证?</a> -->
				</div>
				<div class="btn-box">
					<button class="btn btn-login" type="submit">登录</button>
					<button class="btn btn-reg" type="button">注册</button>
				</div>
			</form>

		</div>
	</div>
	<!--中间部分结束-->
	<!--底部开始-->
	<div id="footer">
		<div class="footer-wrp">
			<div class="footer-cnt">
				<ul class="boston-postcards">
					<li>
						<div class="tips">BcFun</div>
						<div class="cards">
							<a href="javascrpit:void(0)">关于我们</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">联系我们</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">加入我们</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">友情链接</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">BcFun认证</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">Investor Relations</a>
						</div>

					</li>
					<li>
						<div class="tips">传送门</div>
						<div class="cards">
							<a href="javascrpit:void(0)">帮助中心</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">高级弹幕</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">活动专题页</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">侵权申述</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">活动中心</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">用户反馈论坛</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">壁纸站</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">名人堂</a>
						</div>
						<div class="cards">
							<a href="javascrpit:void(0)">转车号服务中心</a>
						</div>
					</li>
				</ul>
				<div>2019 &copy; BcFun</div>
			</div>
		</div>
	</div>
	<!--底部结束-->
	<script type="text/javascript" src="plugins/jquery-3.1.1.min.js" ></script>
	<script src="js/main.js"></script>	
	<script type="text/javascript" src="js/newjs.js"></script>
	<script>
		$(".el-input__inner").focus(function() {
			$(this).parent().parent().next().text("");
			if ($(this).val() == null || $(this).val() == "") {
				$(this).css('border-color', '#ddd');
			}
		});
		$(".el-input__inner").blur(function() {
			if ($(this).val() == null || $(this).val() == "") {
				$(this).css('border-color', '#f66495');
				$(this).parent().parent().next().text("不能为空");
			}
		});
		$(".btn-login").click(function() {
			var telOrName = $("#telOrName").val();
			var password = $("#password").val();
			var flag1 = true;
			var flag2 = true;
			if (telOrName == null || telOrName == "") {
				$("#telOrName").css('border-color', '#f66495');
				flag1 = false;
			}
			if (password == null || password == "") {
				$("#password").css('border-color', '#f66495');
				flag2 = false;
			}
			if (flag1 && flag2) {
				/* $.ajax({
					url : 'checkLogin',
					type : 'post',
					dataType : 'json',
					data : {
						'telOrName' : telOrName,
						'password' : password
					},
					success : function(data) {
						if (data.message === 'success') {
							location.href = 'index.jsp';
						} else {
							$('.hidden-group').eq(1).text(data.message);
						}
					}
				}); */
				$('#login_form').submit();
			}

		});
		//跳转注册界面
		$('.btn-reg').click(function() {
			location.replace('register.jsp');
		});
	</script>
</body>
</html>