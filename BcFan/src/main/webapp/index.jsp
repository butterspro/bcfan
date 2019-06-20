<%@page import="org.apache.struts2.ServletActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  	<input type="hidden" value="${loginUser.uid}" id="uid">
    ${loginUser.uname}
  </body>
  <script type="text/javascript" src="plugins/jquery-3.1.1.min.js" ></script>
  <script>
  	/* if($("#uid").val()!=null){
  		var uid=parseInt($("#uid").val());
  	  	console.log(uid);
  	}*/
  	
/*   	window.onbeforeunload = function(e) {
		if(!(event.clientX > document.body.clientWidth && event.clientY < 0 || event.altKey)) { 
			flag=false;
			console.log("你正在刷新页面"); 
			var e = window.event||e;  
			e.returnValue=("确定离开当前页面吗？");
			return;
		}
		var e = window.event||e;  
		e.returnValue=("确定离开当前页面吗？");
			
		
		
	} */


	/* window.onbeforeunload=function(){ 
		alert('ss');
		if(((window.event.screenX - window.screenLeft) > (document.documentElement.scrollWidth - 20) && window.event.clientY < 0 || window.event.altKey)){ 
			alert("你关闭了浏览器"); 
			/* $.ajax({
				url:'logout',
				type:'post',
			});   */
	/* 	}else{ 
			alert("你正在刷新页面"); 
		} 
	}  */
/* 	$(window).unload(function (evt) { 
		alert('ss');
        if (typeof evt == 'undefined') {  
            evt = window.event;  
        }  
        if (evt) {  
            var n = window.event.screenX - window.screenLeft;   
            var b = n > document.documentElement.scrollWidth-20;  
              
            if(b && window.event.clientY < 0 || window.event.altKey){  
                // 这个可以排除刷新 关闭的时候触发 
            	 $.ajax({
				url:'logout',
				type:'post'
				});   
            }
        }  
    });  */ 
	$(function() {
		var sessionId="<%=ServletActionContext.getRequest().getSession().getId()%>";
		var timer=setInterval(function(){
			$.ajax({
				url:'checkLoginStatus',
				type:'post',
				dataType:'json',
				success:function(data){
					var id=data.sessionId;
					if(sessionId===id){
						//if(data.message==='logout'){
							//被挤下线
							<%ServletActionContext.getRequest().getSession().removeAttribute("sessionId");%>
							alert('您已被挤下线');
							clearInterval(timer);   
							location.replace('login.jsp');
						//}
					}
					
				}
			});
		}, 3000); 
		
  			
	});  
		</script>
</html>
