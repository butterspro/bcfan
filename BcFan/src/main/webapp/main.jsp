<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>个人中心</title>
<link rel="stylesheet" href="css/center.css" />
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
										<a id="head_login">登录</a>
										<p>
											首次使用？点我去<a href="register.jsp">注册</a>
										</p>
									</div>
								</div>
							</div> 
							<!--登录后-->
							<div class="Login_after" <c:if test="${loginUser==null}">style="display: none;"</c:if>>
								<div id="Login_head_pic">
									<img id="Login_head_img" src="${loginUser.picPath}"
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
							<!-- <form id="nav_searchform"> -->
								<input type="text" class="nav-search-keyword"
									placeholder="命运之夜,黑暗将至"  id="searchData"/>
								<button  class="nav-search-submit"></button>

							<!-- </form> -->
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!--头部结束-->
	<!--中间图片开始-->
	<div class="top-banner">
		<img src="img/top_banner.png" />
	</div>
	<!--中间图片结束-->
	<div class="frameBody">
		<div id="leftFrame">
			<span id="leftFrameTitle">个人中心</span>
			<ul id="frameUl">
				<li class="frameLi" value="home_page">
					<div>
						<span class="font-0">首页</span>
					</div>
				</li>
				<li class="frameLi">
					<div>
						<span class="font-1">我的信息</span>
				</li>
				<li class="frameLi">
					<div>
						<span class="font-1">我的头像</span>
				</li>
				<li class="frameLi">
					<div>
						<span class="font-1">创作中心</span>
				</li>
				<li></li>
			</ul>
		</div>
		<div id="frameDiv">
			<iframe id="frame" scrolling="no"></iframe>
		</div>
	</div>
	<script type="text/javascript" src="plugins/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript" src="js/newjs.js"></script>
	<script>
		function init() {
			var firstLi = $("#leftFrame ul li").eq(0);
			var Div = $("#leftFrame ul li div");
			var firstDiv = $("#leftFrame ul li div").eq(0);
			firstLi.addClass("frameLied");

			for(var i = 0; i < Div.length; i++) {
				Div.eq(i).addClass("icon-" + i);
			}
			firstDiv.addClass("icon-0-1");
			$("#frame").attr("src", "icon-0-1.html");

		}
		$(".frameLi").click(function() {
			$(this).addClass("frameLi").siblings().removeClass("frameLied");
			$(this).addClass("frameLied");

			var Div = $("#leftFrame ul li div");
			for(var i = 0; i < Div.length; i++) {
				Div.eq(i).removeClass("icon-" + i + "-1");
				Div.eq(i).addClass("icon-" + i);
			}

			var clicked = "icon-" + $(this).index() + "-1";
			Div.eq($(this).index()).addClass(clicked);

			src = "icon-" + $(this).index() + "-1" + ".jsp";
			$("#frame").attr("src", src);
		});
	</script>
</body>
</html>