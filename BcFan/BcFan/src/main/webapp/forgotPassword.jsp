<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BcFan#forgotPassword</title>
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/forgotPassword.css" />
</head>
<body>
	<!--头部开始-->
		<div id="header">
			<div class="nav-menu">
				<div class="nav-wrapper">
					<!--导航开始-->
					<div class="fl">
						<ul>
							<li class="nav-item home">
								<a href="#" class="t" title="主站">
									<i class="tv">
									</i>
									主站
								</a>
							</li>
							<li class="nav-item">
								<a href="#" class="t" title="音频">音频</a>
							</li>
							<li class="nav-item">
								<a href="#" class="t" title="游戏中心">游戏中心</a>
							</li>
							<li class="nav-item">
								<a href="#" class="t" title="直播">直播</a>
							</li>
							<li class="nav-item">
								<a href="#" class="t" title="会员购">会员购</a>
							</li>
							<li class="nav-item">
								<a href="#" class="t" title="漫画">漫画</a>
							</li>
							<li class="nav-item">
								<a href="#" class="t" title="BW">BW</a>
							</li>
						</ul>
					</div>
					<!--导航结束-->
					<div class="fr">
						<ul>
							<li class="nav-item profile-info">
								<a href="#" class="t">
									<div class="i-face">
										<img src="img/akari.jpg"/>
										
									</div>
									
								</a>
							</li>
							<li class="nav-item">
								<a href="#" class="t">历史</a>
							</li>
						</ul>
					</div>
					<div class="fr">
						<div class="nav-search-box">
							<div class="nav-search ">
								<form id="nav_searchform">
									<input type="text" class="nav-search-keyword" placeholder="命运之夜,黑暗将至"/>
									<button type="submit" class="nav-search-submit">
										
									</button>
									
								</form>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<!--头部结束-->
		<!--中间部分开始-->
		<div class="top-banner">
			<img src="img/top_banner.png" />
		</div>
		<div class="container">
			<div class="breadcrumb-box">
				<div class="el-breadcrumb">
					<span class="el-breadcrumb__item">
						<span class="el-breadcrumb__inner">
							<a href="login.jsp">登录</a>
							<i class="el-breadcrumb__separator el-icon-arrow-right">></i>
						</span>
					</span>
					<span class="el-breadcrumb__item">
						<span class="el-breadcrumb__inner">
							<span>忘记密码</span>
							
						</span>
					</span>
				</div>
			</div>
			<div class="step">
				<div class="step-box">
					<div class="steps-list">
						<a class="float-left" href="javascrpit:void(0)">
							<span class="float-left steps-icon steps-icon-choose">1</span>
							<div class="float-left steps-title steps-title-choose">确认账号</div>
							<i class="float-left steps-line"></i>
						</a>
						<a class="float-left" href="javascrpit:viod(0)">
							<span class="float-left steps-icon">2</span>
							<div class="float-left steps-title">重置密码</div>
							<i class="float-left steps-line"></i>
						</a>
						<a class="float-left" href="javascript:void(0)">
							<span class="float-left steps-icon">3</span>
							<div class="float-left steps-title">重置成功</div>
						</a>
					</div>
				</div>
			</div>
			<div class="container info">
				<div class="form-group">
					<div class="el-input">
						<input type="text" name="tel" placeholder="请输入绑定的手机号" class="el-input__inner" id="tel"/>
					</div>
				</div>
				<div class="hidden-group">
					
				</div>
				<div class="form-group">
					<button type="button" class="el-btn btn-full btn-primary step1-btn" disabled="disabled">确认</button>
				</div>
			</div>
			<div class="container info hidden">
				<div class="form-group">
					<span class="form-group-title">新密码:</span>
					<div class="el-input">
						<input type="password" name="password" placeholder="新密码,6~16位字符,区分大小写" class="el-input__inner" id="password"/>
					</div>
				</div>
				<div class="hidden-group"></div>
				<div class="form-group">
					<span class="form-group-title">确认密码:</span>
					<div class="el-input">
						<input type="password" name="checkPwd" placeholder="请输入确认密码" class="el-input__inner" id="checkPwd"/>
					</div>
				</div>
				<div class="hidden-group"></div>
				<div class="form-group" style="height: 22px;">
					<span class="form-group-title form-group-title1">手机:</span>
					<p class="main-text float-left"></p>
					<a href="javascript:void(0)" class="float-left modify">修改</a>
				</div>
				<div class="hidden-group"></div>
				<div class="form-group" style="height: 40px;">
					<span class="form-group-title">验证:</span>
					<div class="el-input float-left verify-code">
						<input type="text" name="verifyCode" placeholder="请输入短信验证码" class="el-input__inner" id="yzm"/>
					</div>
					<button type="button" class="el-btn float-left btn-primary yzm-btn">获取验证码</button>
				</div>
				<div class="hidden-group">
					
				</div>
				<div class="form-group">
					<button type="button" class="el-btn btn-full btn-primary step2-btn">确认修改</button>
				</div>
			</div>
			<div class="container info reset_success hidden">
				重置密码成功&nbsp;!
				<div><span class="second">5</span>秒后跳转登录页</div>
				<button class="el-btn btn-full btn-primary btn-go step3-btn">前往登录页</button>
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
					<div> 2019  &copy;  BcFun</div>
				</div>
			</div>
		</div>
		<!--底部结束-->
		<script type="text/javascript" src="plugins/jquery-3.1.1.min.js" ></script>
		<script type="text/javascript" src="js/main.js" ></script>
		<script type="text/javascript">
		var tel;
		var flag1=false;//密码验证
		var flag2=false;//确认密码验证
		var flag3=false;//验证验证码
		//判断手机号
		$('#tel').keyup(function(){
		tel=$(this).val();
		$.ajax({
    			url:'checkTel',
    			type:'post',
    			data:{'u.tel':tel},
    			dataType:'json',
    			success:function(data){
    				if(data.message==="exist"){

    					$('#tel').css('border-color','#ddd');
    					$('#tel').parent().parent().next().text("");
    					$('.step1-btn').eq(0).removeAttr("disabled");
    					
    				}else{
    					$('#tel').css('border-color','#f66495');
    					$('#tel').parent().parent().next().text("该手机号不存在");
    					$('.step1-btn').eq(0).attr("disabled","disabled");
    				}
    			}
    		});
		}); 
		//检查输入的密码
		$('#password').keyup(function(){
		password=$(this).val();
		var myreg=/^[0-9a-zA-Z]{6,16}$/;
		if (!myreg.test(password)) {
			$('#password').css('border-color','#f66495');
			$('#password').parent().parent().next().text("请输入正确的密码格式");
        	flag1=false;
		} else {
        	$('#password').css('border-color','#ddd');
			$('#password').parent().parent().next().text("");
        	flag1=true;
		}
		});
		$('#checkPwd').keyup(function(){
			var password=$('#password').val();
			if($(this).val()!=password){
				//两次密码不一致
				$(this).css('border-color','#f66495');
				$(this).parent().parent().next().text("两次输入的密码不一致");
				flag2=false;
			}else{
				$(this).css('border-color','#ddd');
				$(this).parent().parent().next().text("");
				flag2=true;
			}
		});
		
		//点击验证码
		var yzm;
		$('.yzm-btn').click(function(){
			$.ajax({
				url:'sendYzm',
				type:'post',
				data:{'u.tel':tel},
				dataType:'json',
				success:function(data){
					yzm=data.code;
				}
			});
		});
		//验证验证码
		$('#yzm').keyup(function(){
			if($(this).val()===yzm){
				flag3=true;
				$(this).css('border-color','#ddd');
				$(this).parent().parent().next().text("");
			}else{
				flag3=false;
				$(this).css('border-color','#f66495');
				$(this).parent().parent().next().text("请输入正确的验证码");
			}
		});
		//重置密码的步骤
		$(".step1-btn").click(function(){
			$(this).parent().parent().attr("class","container info hidden");
			$(".step2-btn").parent().parent().attr("class","container info");
			$(".steps-list").children("a").eq(0).children("span").attr("class","float-left steps-icon steps-icon-pass");
			$(".steps-list").children("a").eq(0).children("div").attr("class","float-left steps-title steps-title-pass");
			$(".steps-list").children("a").eq(1).children("span").attr("class","float-left steps-icon steps-icon-choose");
			$(".steps-list").children("a").eq(1).children("div").attr("class","float-left steps-title steps-title-choose");
			var str="";
			var tels=tel.split("");
			$.each(tels,function(i,s){ 
				if(i==3||i==4||i==5||i==6){
					str+='*';
				}else{
					str+=s;
				}
			}); 
			$('.main-text').eq(0).text(str);
		});
		$(".step2-btn").click(function(){
			var password=$('#password').val();
			console.log(password);
			if(flag1&&flag2&&flag3){
				 $(this).parent().parent().attr("class","container info hidden");
				$(".step3-btn").parent().attr("class","container info reset_success");
				$(".steps-list").children("a").eq(1).children("span").attr("class","float-left steps-icon steps-icon-pass");
				$(".steps-list").children("a").eq(1).children("div").attr("class","float-left steps-title steps-title-pass");
				$(".steps-list").children("a").eq(2).children("span").attr("class","float-left steps-icon steps-icon-choose");
				$(".steps-list").children("a").eq(2).children("div").attr("class","float-left steps-title steps-title-choose");	
				$.ajax({
	    			url:'updatePwd',
	    			type:'post',
	    			data:{
	    				'u.tel':tel,
	    				'u.upassword':password	
	    			}, 
	    			dataType:'json',
	    			success:function(data){
	    				//忘记密码跳转登录页
	    				var s=4;
	    				var timer=setInterval(function(){
	    					$(".second").text(s);
	    					s--;
	    					if(s==-1){
	    						clearInterval(timer);
	    						location.replace('login.jsp');
	    					}
	    				},1000);
	    			}
	    		});
			}
		
		});
		//修改手机点击事件
		$('.modify').click(function(){
			$(this).parent().parent().attr("class","container info hidden");
			$(".step1-btn").parent().parent().attr("class","container info");
			$(".steps-list").children("a").eq(0).children("span").attr("class","float-left steps-icon steps-icon-choose");
			$(".steps-list").children("a").eq(0).children("div").attr("class","float-left steps-title steps-title-choose");
			$(".steps-list").children("a").eq(1).children("span").attr("class","float-left steps-icon");
			$(".steps-list").children("a").eq(1).children("div").attr("class","float-left steps-title");
			$('#tel').val(tel);
		});
		</script>
</body>
</html>