<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/topstyle.css" />
<link rel="stylesheet" href="css/bcfanmain.css" />
<link rel="stylesheet" href="css/newcss.css" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/style.css">

</head>
<body data-spy="scroll" data-target="#myScrollspy">
	<div class="underTopBox" style="margin-top: -5px; margin-left: -5;">
		<!--头部开始-->
		<div id="header" style="background: rgba(255, 255, 255, 0.5)">
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
							</a> --> <!--未登录前-->
								<div <c:if test="${loginUser!=null}">style="display: none;"</c:if>>
									<div id="head_pic" style="margin-top: 4px">
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
											<a id="head_login" href="login.jsp">登录</a>
											<p>
												首次使用？点我去<a href="register.jsp">注册</a>
											</p>
										</div>
									</div>
								</div> 
								<!--登录后-->
								<div class="Login_after"
									<c:if test="${loginUser==null}">style="display: none;"</c:if>>
									<div id="Login_head_pic">
										<img id="Login_head_img" src="${loginUser.picPath}"
											style="width: 40px; height: 40px;" />
									</div>
									<div id="Login_head_hidden">
										<p style="margin: 35px auto;">${loginUser.uname }</p>
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
							<li class="nav-item"><a href="#" class="t"
								style="visibility: hidden;">历史</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--头部结束-->
		<form action="" method="get"
			style="margin-top: 78px; margin-left: 850px;">
			<div id="select_box" style="background-color: white;">
				<a class="top" href=""
					style="background: url(img/littleImg.png) no-repeat -659px -655px;">
					<span class="Span"> 排行榜 </span>
				</a>
				<!--搜索框-->
				<input name="" type="text" placeholder="神仙木吉他演奏" class="input-box" />
				<input name="" type="button" value="" class="button"
					style="background: url(img/littleImg.png) no-repeat -653px -720px; margin-left: 20px;" />
			</div>
		</form>
	</div>
	<!--中间导航栏-->
	<div id="primary_menu"
		class="primary-menu report-wrap-module report-scroll-module"
		style="margin-left: 20%;">
		<ul class="nav-menu">
			<li class="home">
				<!--本页面地址--> <a href="">
					<div class="nav-name">首页</div>
			</a>
			</li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">动画</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">番剧</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">国创</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">音乐</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">舞蹈</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">游戏</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">科技</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">数码</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">生活</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">鬼畜</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">时尚</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">广告</div>
			</a>
				<ul class="sub-nav">
					<!---->
				</ul></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">娱乐</div>
			</a></li>
			<li><a href="">
					<div class="num-wrap">
						<span>--</span>
					</div>
					<div class="nav-name">影视</div>
			</a></li>
			<li><a href=""><img
					style="width: 69px; height: 40px; margin-left: 10px;"
					src="img/listen.gif" /></a></li>
		</ul>
		<!--轮播图-->
		<div class="Wheel-planting">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="img/doctor.jpg">
					</div>
					<div class="item">
						<img src="img/doctor.jpg">
					</div>
					<div class="item">
						<img src="img/doctor.jpg">
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="recommend-vedio">
			<div class="recommend-all-vedio"></div>
			<div class="recommend-all-vedio"></div>
			<div class="recommend-all-vedio"></div>
			<div class="recommend-all-vedio"></div>
		</div>
	</div>

	<!--视频分类栏-->
	<div class="container" style="margin-top: 340px;">
		<div class="row">
			<div class="col-xs-9">
				<div id="section-1" class="many-div">
					<span class="vedio-title">动漫</span>
					<div class="vedio-type-list">
						<div class="vedio-type-list-element"></div>
						<div class="vedio-type-list-element"></div>
						<div class="vedio-type-list-element"></div>
						<div class="vedio-type-list-element"></div>
						<div class="vedio-type-list-element"></div>
						<div class="vedio-type-list-element"></div>
					</div>

					<div class="recommend-list"></div>
				</div>
				<div id="section-2" class="many-div"></div>
				<div id="section-3" class="many-div"></div>
				<div id="section-4" class="many-div"></div>
				<div id="section-5" class="many-div"></div>
				<div id="section-6" class="many-div"></div>
				<div id="section-7" class="many-div"></div>
				<div id="section-8" class="many-div"></div>
				<div id="section-9" class="many-div"></div>
				<div id="section-10" class="many-div"></div>
				<div id="section-11" class="many-div"></div>
				<div id="section-12" class="many-div"></div>
				<div id="section-13" class="many-div"></div>
				<div id="section-14" class="many-div"></div>
				<div id="section-15" class="many-div"></div>
			</div>
			<div class="col-xs-3" id="myScrollspy"
				style="margin-left: 1150px; width: 65px;">
				<ul class="nav nav-tabs nav-stacked" data-spy="affix"
					data-offset-top="500" style="width: 65px;">
					<li class="active"><a href="#section-1">动漫</a></li>
					<li><a href="#section-2">番剧</a></li>
					<li><a href="#section-3">国创</a></li>
					<li><a href="#section-4">音乐</a></li>
					<li><a href="#section-5">舞蹈</a></li>
					<li><a href="#section-6">游戏</a></li>
					<li><a href="#section-7">科技</a></li>
					<li><a href="#section-8">数码</a></li>
					<li><a href="#section-9">生活</a></li>
					<li><a href="#section-10">鬼畜</a></li>
					<li><a href="#section-11">时尚</a></li>
					<li><a href="#section-12">广告</a></li>
					<li><a href="#section-13">娱乐</a></li>
					<li><a href="#section-14">影视</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/newjs.js"></script>
<script>
	$('.button').click(function(){
		var value=$('.input-box').val();
		console.log(value);
		location.href="search.jsp?searchData="+value+"&typeName=";
	})
</script>
</html>