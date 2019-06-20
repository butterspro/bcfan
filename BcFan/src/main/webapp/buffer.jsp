<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>success</title>
<style>
	div{
		margin:200px auto;
		border:1px solid black;
		width:75%;
		height:100px;
		text-align: center;
	}
	a{
		color: #00a1d6;
    	font-size: 16px;
	}
</style>
</head>
<body>
	<div>
		<p>您已成功注册!<span>5</span>秒后跳转登录页</p>
		<a href="login.jsp">前往登录页></a>
	</div>
</body>
<script type="text/javascript" src="plugins/jquery-3.1.1.min.js" ></script>
<script>
	var second=4;
	var timer=setInterval(function(){
		$('span').eq(0).text(second);
		second--;
		if(second==-1){
			clearInterval(timer);
			location.replace('login.jsp');
		}
	}, 1000);
	
</script>
</html>