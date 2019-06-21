<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>BcFun#Register</title>
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/register.css" />
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
						<li class="nav-item profile-info"><a href="#" class="t">
								<div class="i-face">
									<img src="img/akari.jpg" />

								</div>

						</a></li>
						<li class="nav-item"><a href="#" class="t">历史</a></li>
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
			<span class="tit">注册</span>
		</div>
		<div class="regitser-box">
			<form id="rigister_form" action="register" onsubmit="return check();">
				<div class="form-group">
					<div class="el-input">
						<input type="text" name="u.uname" placeholder="昵称"
							class="el-input__inner" id="username"/>
					</div>
					<p class="error-message"></p>
				</div>
				<div class="hidden-group"></div>
				<div class="form-group">
					<div class="el-input">
						<input type="text" name="u.upassword"
							placeholder="密码(6-16个字符组成,区分大小写)" class="el-input__inner" id="password"/>
					</div>
					<p class="error-message"></p>
				</div>
				<div class="hidden-group"></div>
				<div class="form-group">
					<div class="el-input">
						<input type="text" name="invitation" placeholder="邀请码"
							class="el-input__inner" id="bcNum"/>
					</div>
					<p class="error-message"></p>
				</div>
				<div class="hidden-group"></div>
				<div class="form-group">
					<div class="el-input el-input-group el-input-group-prepend">
						<div class="el-input-group__prepend">
							<div class="el-select">中国大陆+86</div>
						</div>
						<input type="tel" name="u.tel" placeholder="填写常用手机号"
							class="el-input__inner" id="tel"/>
					</div>
					<p class="error-message"></p>
				</div>
				<div class="hidden-group"></div>
				<div class="form-group">
					<div class="el-input">
						<input type="text" name="username" placeholder="请输入短信验证码"
							class="el-input__inner" id="yzm"/>
					</div>
					<button type="button" class="el-btn yzm-btn" disabled="disabled">点击获取</button>
					<p class="error-message"></p>
				</div>
				<div class="hidden-group"></div>
				<div class="form-group">
					<button class="el-btn btn-full btn-primary" type="submit">注册</button>
				</div>
			</form>
			<div class="hidden-group text-right">
				<a href="login.jsp">已有账号,直接登录></a>
			</div>
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
	<script type="text/javascript" src="js/main.js" ></script>
	<script>
	$(".el-input__inner").focus(function(){
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
	});
	var flag1=false;//判断用户名
	var flag2=false;//判断邀请码
	var flag3=false;//判断手机号
	var flag4=false;//判断密码格式
	var flag5=false;//判断验证码是否正确
	//判断用户名
	$('#username').keyup(function(){
		var uname=$(this).val();
		$.ajax({
			url:'checkUsername',
			type:'post',
			data:{'u.uname':uname},
			dataType:'json',
			success:function(data){
				console.log(data.message);
				if(data.message==="exist"){
					$('#username').css('border-color','#f66495');
					$('#username').parent().parent().next().text("用户名已存在");
					flag1=false;
				}else{
					$('#username').css('border-color','#ddd');
					$('#username').parent().parent().next().text("");
					flag1=true;
				}
			}
		});
	});
	//判断邀请码
 	$('#bcNum').keyup(function(){
		var bcNum=$(this).val();
		$.ajax({
			url:'checkBcNum',
			type:'post',
			data:{'bcNum':bcNum},
			dataType:'json',
			success:function(data){
				console.log(data.message);
				if(data.message==="exist"){
					$('#bcNum').css('border-color','#ddd');
					$('#bcNum').parent().parent().next().text("");
					flag2=true;
				}else{
					$('#bcNum').css('border-color','#f66495');
					$('#bcNum').parent().parent().next().text("邀请码不存在");
					flag2=false;
				}
			}
		});
	}); 
	//判断手机号
 	$('#tel').keyup(function(){
 		var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
		var tel=$(this).val();
		if (!myreg.test(tel)) {
			$('#tel').css('border-color','#f66495');
			$('#tel').parent().parent().next().text("请输入正确的手机号格式");
        } else {
        	$.ajax({
    			url:'checkTel',
    			type:'post',
    			data:{'u.tel':tel},
    			dataType:'json',
    			success:function(data){
    				if(data.message==="exist"){
    					$('#tel').css('border-color','#f66495');
    					$('#tel').parent().parent().next().text("该手机号已被注册");
    					flag3=false;
    					$('.yzm-btn').eq(0).attr("disabled","disabled");
    				}else{
    					$('#tel').css('border-color','#ddd');
    					$('#tel').parent().parent().next().text("");
    					flag3=true;
    					$('.yzm-btn').eq(0).removeAttr("disabled");
    				}
    			}
    		});
        }
		
	}); 
	//验证密码格式
	$('#password').keyup(function(){
		var password=$(this).val();
		var myreg=/^[0-9a-zA-Z]{6,16}$/;
		if (!myreg.test(password)) {
			$('#password').css('border-color','#f66495');
			$('#password').parent().parent().next().text("请输入正确的密码格式");
        	flag4=false;
		} else {
        	$('#password').css('border-color','#ddd');
			$('#password').parent().parent().next().text("");
        	flag4=true;
		}
	}); 
	var yzm;
	$('.yzm-btn').click(function(){
		var tel=$('#tel').val();
		$.ajax({
			url:'sendYzm',
			type:'post',
			data:{'u.tel':tel},
			dataType:'json',
			success:function(data){
				yzm=data.code;
				console.log(yzm);
			}
		});
	});
	//验证验证码
	$('#yzm').keyup(function(){
		if($(this).val()===yzm){
			flag5=true;
			$(this).css('border-color','#ddd');
			$(this).parent().parent().next().text("");
		}else{
			flag5=false;
			$(this).css('border-color','#f66495');
			$(this).parent().parent().next().text("请输入正确的验证码");
		}
	});
	function check(){
		if(flag1&&flag2&&flag3&&flag4&&flag5){
			return true;
		}else{
			return false;
		}
	}
	</script>
</body>
</html>