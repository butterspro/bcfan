<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/icon-1-1.css" />
<link rel="stylesheet" href="plugins/calendar/skin/WdatePicker.css">
</head>
<body>
	<div id="main">
		<div class="title">
			<span class="title-icon"></span> <span class="title-text">我的信息</span>
		</div>
		<div class="user-setting-wrap">
			<!--<form class="el-form">-->
			<div class="el-form-item user-name">
				<label class="el-form-item__label">用户名:</label>
				<div class="el-form-item__content">
					<div class="el-input">
						<input class="el-input__inner" type="text" placeholder="你的用户名" id="username" value="${loginUser.uname }"/>
					</div>
					<span class="nick-exist">该用户名已存在</span>
				</div>
			</div>
			<div class="el-form-item user-sign">
				<label class="el-form-item__label">我的签名:</label>
				<div class="el-form-item__content">
					<div class="el-textarea">
						<textarea placeholder="设置您的签名- ( ゜- ゜)つロ"
							class="el-textarea__inner" id="sign" value="${loginUser.sign }"></textarea>
					</div>
				</div>
			</div>
			<div class="el-form-item user-sex">
				<label class="el-form-item__label">性别:</label>
				<div class="el-form-item__content">
					<div class="el-radio-group">
						<label class="el-radio-button"> 
						
						<input type="radio" value="男" class="el-radio-button__orig-radio" name="sex" <c:if test="${loginUser.gender eq '男'}">checked="checked"</c:if>/> 
						<span  class="el-radio-button__inner <c:if test='${loginUser.gender eq "男"}'>choosed</c:if>">男</span>
						</label> <label class="el-radio-button"> 
						<input type="radio" value="女" class="el-radio-button__orig-radio" name="sex" <c:if test="${loginUser.gender eq '女'}">checked="checked"</c:if>/> 
						<span class="el-radio-button__inner <c:if test='${loginUser.gender eq "女"}'>choosed</c:if>">女</span>
						</label>
					</div>
				</div>
			</div>
			<div class="el-form-item user-date">
				<label class="el-form-item__label">出生日期:</label>
				<div class="el-form-item__content">
					<div class="el-date-editor--date">
						<div id="lanrenzhijia">
						<img src="img/icon-date.png" class="el-icon-date"/>
						<!-- 	<input type="text" placeholder="选择日期" readonly="readonly"
								class="el-input__inner jcDate" id="birthday" /> -->
							<input id="birthday" class="class="el-input__inner Wdate" type="text" placeholder="选择日期" readonly="readonly" onclick="WdatePicker({skin:'whyGreen',maxDate:'%y-%M-%d'})" value="${loginUser.birthday}"/>
						</div>

					</div>
				</div>
			</div>
			<div class="el-form-item user-btn">
				<div class="el-form-item__content">
					<div class="padding-dom"></div>
					<div class="user-btn-warp">
						<button class="save">保存</button>
					</div>
				</div>
			</div>
			<!--	</form>-->
		</div>

	</div>
	<script type="text/javascript" src="plugins/jquery-3.1.1.min.js" ></script>
	<script language="javascript" type="text/javascript" src="plugins/calendar/WdatePicker.js"></script>
	<script>
		var uname;
		var sex;
		var flag=true;//判断用户名是否合法
		$('.el-radio-button__orig-radio').click(function(){
				$('input[name="sex"]').each(function(i,s){
					if($(s).prop("checked")){
						$(s).next().attr("class","el-radio-button__inner choosed");
						sex=$(s).val();
					}else{
						$(s).next().attr("class","el-radio-button__inner");
					}
				});
			});
			//判断用户名
			$('#username').keyup(function(){
				uname=$(this).val();
				console.log(uname);
				$.ajax({
					url:'checkUsername',
					type:'post',
					data:{'u.uname':uname},
					dataType:'json',
					success:function(data){
						console.log(data.message);
						if(data.message==="exist"){
							$('#username').css('border-color','#f66495');
							$('.nick-exist').css('display','block');
							/* $('#username').parent().parent().next().text("用户名已存在"); */
							flag=false;
						}else{
							$('#username').css('border-color','#bfcbd9');
							flag=true;
							$('.nick-exist').css('display','none');
							/* $('#username').parent().parent().next().text(""); */
							
						}
					}
				});
			});
			$('.save').click(function(){
				var sign=$('#sign').val();
				var birthday=$('#birthday').val();
				uname=$('#username').val();
				sex=$('input[name="sex"]:checked').val();
				if(flag){
					 $.ajax({
						url:'modifyUser',
						type:'post',
						dataType:'json',
						data:{
							'u.uname':uname,
							'u.gender':sex,
							'u.sign':sign,
							'u.birthday':birthday
						},
						success:function(){
							alert('已成功更新您的资料');
						} 
					});
				}
				
				
			});
</script>
</body>
</html>