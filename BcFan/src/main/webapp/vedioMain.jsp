<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="uft-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/danmuplayer.css" />
<link rel="stylesheet" href="css/vedioMain.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/danmuplayer.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<body>
	<div class="body-main">
		<!--此处是视频简介-->
		<div class="video-head">
			<!--此处是视频标题-->
			<h1 title="123" class="video-title">
				<!--此处是视频内容-->
				<span class="title-content">${vedioMain.title}</span>
			</h1>
			<!--此处是视频信息-->
			<div class="video-data">
				<!--此处是视频信息分类信息-->
				<span class="video-type">${vedioMain.vediotype.vedioType}</span>
				<!--此处是视频信息上传时间-->
				<span class="video-time">${vedioMain.upLoadTime}</span>
			</div>
			<!--此处是视频信息-->
			<div class="video-data">
				<!--此处是视频播放数和弹幕数-->
				<span class="view">总播放数:${vedioMain.playCount}</span> <span
					class="dm">总弹幕数:${barrageList.size()}&nbsp;</span>
				<!--警示标语-->
				<span class="copy-right"> <span
					class="glyphicon glyphicon-ban-circle" aria-hidden="true"
					style="color: #fd676f;"></span> <span>未经作者授权，禁止转载</span>
				</span>
			</div>

		</div>

		<div class="right-main">
			<!--视频主体-->
			<div id="danmu"></div>
			<!--右边的信息-->
			<div class="right-page">
				<!--up主信息-->
				<div class="up-info">
					<!--头像-->
					<div class="head-img">
						<img src="img/head.jpg" alt="头像" class="img-circle">
					</div>
					<!--昵称-->
					<div class="userName">喵帕斯</div>
					<!--个性签名-->
					<div class="introduce">大家好</div>
					<!--关注状态-->
					<div class="follow-state">
						<div class="button-state">
							<span class="glyphicon glyphicon-plus"
								style="margin-left: 50px; margin-top: 6px;"></span> <span
								class="button-state-word">关注</span>
						</div>
					</div>
				</div>
				<!--推荐视频-->
				<div class="recommended-Video">相关推荐</div>
				<div class="recommended-Video-list-1">
					<!--推荐视频封面-->
					<div class="recommended-Video-image">
						<img src="img/head.jpg" class="recommended-Video-image-1" />
					</div>
					<!--推荐视频信息-->
					<div class="div-info">
						<!--推荐视频标题-->
						<a href="" class="recommended-Video-title">震惊！百万粉丝的up主居然被...</a>
						<!--推荐视频up主-->
						<div class="recommended-Video-up">
							<a href="" class="recommended-Video-up-a">喵帕斯</a>
						</div>
						<!--推荐视频播放量和弹幕-->
						<div class="recommended-Video-count">播放:15615&nbsp;&nbsp;弹幕:15646456</div>
					</div>
				</div>

				<div class="recommended-Video-list-1">
					<!--推荐视频封面-->
					<div class="recommended-Video-image">
						<img src="img/head.jpg" class="recommended-Video-image-1" />
					</div>
					<!--推荐视频信息-->
					<div class="div-info">
						<!--推荐视频标题-->
						<a href="" class="recommended-Video-title">震惊！百万粉丝的up主居然被...</a>
						<!--推荐视频up主-->
						<div class="recommended-Video-up">
							<a href="" class="recommended-Video-up-a">喵帕斯</a>
						</div>
						<!--推荐视频播放量和弹幕-->
						<div class="recommended-Video-count">播放:15615&nbsp;&nbsp;弹幕:15646456</div>
					</div>
				</div>

				<div class="recommended-Video-list-1">
					<!--推荐视频封面-->
					<div class="recommended-Video-image">
						<img src="img/head.jpg" class="recommended-Video-image-1" />
					</div>
					<!--推荐视频信息-->
					<div class="div-info">
						<!--推荐视频标题-->
						<a href="" class="recommended-Video-title">震惊！百万粉丝的up主居然被...</a>
						<!--推荐视频up主-->
						<div class="recommended-Video-up">
							<a href="" class="recommended-Video-up-a">喵帕斯</a>
						</div>
						<!--推荐视频播放量和弹幕-->
						<div class="recommended-Video-count">播放:15615&nbsp;&nbsp;弹幕:15646456</div>
					</div>
				</div>

				<div class="recommended-Video-list-1">
					<!--推荐视频封面-->
					<div class="recommended-Video-image">
						<img src="img/head.jpg" class="recommended-Video-image-1" />
					</div>
					<!--推荐视频信息-->
					<div class="div-info">
						<!--推荐视频标题-->
						<a href="" class="recommended-Video-title">震惊！百万粉丝的up主居然被...</a>
						<!--推荐视频up主-->
						<div class="recommended-Video-up">
							<a href="" class="recommended-Video-up-a">喵帕斯</a>
						</div>
						<!--推荐视频播放量和弹幕-->
						<div class="recommended-Video-count">播放:15615&nbsp;&nbsp;弹幕:15646456</div>
					</div>
				</div>

				<div class="recommended-Video-list-1">
					<!--推荐视频封面-->
					<div class="recommended-Video-image">
						<img src="img/head.jpg" class="recommended-Video-image-1" />
					</div>
					<!--推荐视频信息-->
					<div class="div-info">
						<!--推荐视频标题-->
						<a href="" class="recommended-Video-title">震惊！百万粉丝的up主居然被...</a>
						<!--推荐视频up主-->
						<div class="recommended-Video-up">
							<a href="" class="recommended-Video-up-a">喵帕斯</a>
						</div>
						<!--推荐视频播放量和弹幕-->
						<div class="recommended-Video-count">播放:15615&nbsp;&nbsp;弹幕:15646456</div>
					</div>
				</div>

				<div class="recommended-Video-list-1">
					<!--推荐视频封面-->
					<div class="recommended-Video-image">
						<img src="img/head.jpg" class="recommended-Video-image-1" />
					</div>
					<!--推荐视频信息-->
					<div class="div-info">
						<!--推荐视频标题-->
						<a href="" class="recommended-Video-title">震惊！百万粉丝的up主居然被...</a>
						<!--推荐视频up主-->
						<div class="recommended-Video-up">
							<a href="" class="recommended-Video-up-a">喵帕斯</a>
						</div>
						<!--推荐视频播放量和弹幕-->
						<div class="recommended-Video-count">播放:15615&nbsp;&nbsp;弹幕:15646456</div>
					</div>
				</div>

				<div class="recommended-Video-list-1">
					<!--推荐视频封面-->
					<div class="recommended-Video-image">
						<img src="img/head.jpg" class="recommended-Video-image-1" />
					</div>
					<!--推荐视频信息-->
					<div class="div-info">
						<!--推荐视频标题-->
						<a href="" class="recommended-Video-title">震惊！百万粉丝的up主居然被...</a>
						<!--推荐视频up主-->
						<div class="recommended-Video-up">
							<a href="" class="recommended-Video-up-a">喵帕斯</a>
						</div>
						<!--推荐视频播放量和弹幕-->
						<div class="recommended-Video-count">播放:15615&nbsp;&nbsp;弹幕:15646456</div>
					</div>
				</div>

				<div class="recommended-Video-list-1">
					<!--推荐视频封面-->
					<div class="recommended-Video-image">
						<img src="img/head.jpg" class="recommended-Video-image-1" />
					</div>
					<!--推荐视频信息-->
					<div class="div-info">
						<!--推荐视频标题-->
						<a href="" class="recommended-Video-title">震惊！百万粉丝的up主居然被...</a>
						<!--推荐视频up主-->
						<div class="recommended-Video-up">
							<a href="" class="recommended-Video-up-a">喵帕斯</a>
						</div>
						<!--推荐视频播放量和弹幕-->
						<div class="recommended-Video-count">播放:15615&nbsp;&nbsp;弹幕:15646456</div>
					</div>
				</div>
			</div>
		</div>
		<!--点赞栏-->
		<div class="praise-div">
			<span class="glyphicon glyphicon-thumbs-up Icon">&nbsp;1212</span>
		</div>
		<!--视频简介栏-->
		<div class="introduce-div">简介:今天天气凉快了一些 赶紧穿了个长袖去玩跳舞机 很少穿小裙子去玩跳舞机
			有点点放不开 特意挑星期一下午去 结果星期一人也很多 我觉得以后还可以再去录几个宅舞嘻嘻嘻</div>
		<!--视频评论表-->
		<div class="div-comment">
			<div class="div-comment-head">
				<span class="div-comment-head-num">${vedioMain.playCount}</span> <span
					class="div-comment-head-comment">评论</span>
			</div>
		</div>
		<!--分页-->
		<div class="div-comment-page">
			<span>按时间排序</span>
			<div class="fen-page">
				<span>共32页</span> <span>上一页</span> <a>1</a> <a>2</a> <a>3</a> <a>4</a>
				<a>5</a> <span>下一页</span>
			</div>
		</div>
		<!--写评论窗口-->
		<div class="write-comment">
			<!--头像-->
			<div class="head-img" style="margin: 25px; vertical-align: top;">
				<img src="img/head.jpg" alt="头像" class="img-circle">
			</div>
			<!--文本域-->
			<textarea cols="80" name="msg" rows="5"
				placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情、暴力、反动的言论。" class="ipt-txt"></textarea>
			<!--发送评论按钮-->
			<button class="button-submits">发表评论</button>
		</div>
		<!--评论列表-->
		<div class="comment-list">
			<div class="comment-list-1">
				<!--头像-->
				<div class="head-img" style="margin: 25px; vertical-align: top;">
					<img src="img/123.jpg" alt="头像" class="img-circle">
				</div>
				<!--昵称-->
				<div class="comment-userName-div">
					<a href="" class="comment-userName">名字刚好七个字</a>
				</div>
				<!--评论内容-->
				<p class="comment-main">一开始看翼王是为了diy主机的 后来发现是个总能上到车的 骑乘力EX的垃圾佬
					总能在日渐耍猴的jd秒杀 还有大海捞针的淘宝里面找到车并骑了上去 现在感觉啊翼已经有发展成某加拿大人士的科技媒体的趋势
					有种看偶像成长的感觉（</p>
				<span class="comment-time">2019-6-21 11:33</span>
			</div>
		</div>

		<div class="comment-list">
			<div class="comment-list-1">
				<!--头像-->
				<div class="head-img" style="margin: 25px; vertical-align: top;">
					<img src="img/123.jpg" alt="头像" class="img-circle">
				</div>
				<!--昵称-->
				<div class="comment-userName-div">
					<a href="" class="comment-userName">名字刚好七个字</a>
				</div>
				<!--评论内容-->
				<p class="comment-main">一开始看翼王是为了diy主机的 后来发现是个总能上到车的 骑乘力EX的垃圾佬
					总能在日渐耍猴的jd秒杀 还有大海捞针的淘宝里面找到车并骑了上去 现在感觉啊翼已经有发展成某加拿大人士的科技媒体的趋势
					有种看偶像成长的感觉（</p>
				<span class="comment-time">2019-6-21 11:33</span>
			</div>
		</div>

		<div class="comment-list">
			<div class="comment-list-1">
				<!--头像-->
				<div class="head-img" style="margin: 25px; vertical-align: top;">
					<img src="img/123.jpg" alt="头像" class="img-circle">
				</div>
				<!--昵称-->
				<div class="comment-userName-div">
					<a href="" class="comment-userName">名字刚好七个字</a>
				</div>
				<!--评论内容-->
				<p class="comment-main">一开始看翼王是为了diy主机的 后来发现是个总能上到车的 骑乘力EX的垃圾佬
					总能在日渐耍猴的jd秒杀 还有大海捞针的淘宝里面找到车并骑了上去 现在感觉啊翼已经有发展成某加拿大人士的科技媒体的趋势
					有种看偶像成长的感觉（</p>
				<span class="comment-time">2019-6-21 11:33</span>
			</div>
		</div>
	</div>
</body>
<script>
	$("#danmu")
			.danmuplayer(
					{
						src : "http://220.194.238.109/11/i/x/h/p/ixhpsyiqrwxobfevlpyxbdaoidjsbw/hd.yinyuetai.com/CF240151C84DC45137DC28F1C6B0DD71.flv?sc=163ee118cdd488e8", //视频源
						/*黄金比例请勿修改*/
						width : 1920 * 0.52, //视频宽度
						height : 1080 * 0.625,//视频高度
						url_to_get_danmu : "barrageAction", //用来接收弹幕信息的url  (稍后介绍)
						url_to_post_danmu : "setBarrageByVid" //用来存储弹幕信息的url  (稍后介绍)
					});
	$("right-main").css("width", 1920 * 0.9);
</script>
</html>