<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<title></title>
</head>
<link rel="stylesheet" href="css/bootstrap.css" />
<script type="text/javascript" src="js/jQuery.js"></script>
<script type="text/javascript" src="js/vue.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<style>
#upload_back {
	margin-left: 300px;
	margin-top: 300px;
	width: 830px;
	height: 475px;
}

#Upload_video {
	width: 350px;
	height: 74px;
	background-color: #00A1D6;
	border-radius: 165px;
	-webkit-border-radius: 165px;
	-moz-border-radius: 165px;
	outline: none;
	cursor: pointer;
}

.upload_video_pic {
	position: absolute;
	left: 200px;
	top: 220px;
	width: 235px;
	height: 155px;
	z-index: 100;
	cursor: default;
	background: url(img/2233_upload.637ac33.png) no-repeat;
	background-size: 100% 100%;
}

.upload_video_icon {
	width: 26px;
	height: 26px;
	background-size: 100% 100%;
}

.upload_video_title {
	font-size: 22px;
	color: #fff;
	margin-left: 130px;
	margin-top: 20px;
	display: inline-block;
	text-align: center;
}

#upload_content {
	margin-left: 100px;
	margin-top: 100px;
}

.upload_content_icon {
	border: dashed 1px #555555;
	width: 200px;
	height: 125px;
	border-radius: 10px;
	background-repeat: no-repeat;
	background-size: 110%;
	cursor: pointer;
}

.upload_content_icon_title {
	width: 60px;
	height: 25px;
	background-color: #999;
	border-radius: 5px;
	margin-left: 138px;
	margin-top: 19px;
}

.upload_type_first {
	cursor: pointer;
	margin-right: 20px;
	display: inline-block;
}

.upload_type_radio {
	border: 1px solid #bec3cc;
	height: 16px;
	width: 16px;
	border-radius: 50%;
	margin-right: 6px;
	padding: 3px;
}

.upload_type_radio_text {
	font-size: 14px;
	color: #000;
	line-height: 14px;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.upload_introduce_text {
	width: 630px;
	height: 160px;
}

.upload_submit {
	line-height: 40px;
	color: #fff;
	background: #00a1d6;
	display: inline-block;
	height: 40px;
	font-size: 14px;
	border-radius: 4px;
	text-align: center;
	vertical-align: middle;
	width: 120px;
	cursor: pointer;
	user-select: none;
}
}
</style>

<body>
	<!--上传其他信息-->
		<form action="insertVedioAction" method="post" enctype="multipart/form-data" target="_parent">
			<input type="file" id="upload_file" style="display: none;" name="upload_vedio" />
			<input type="file" id="upload_img_file" style="display: none;" name="upload_vedio_img" />
			<input type="text" id="upload_input_vedio_title" name="upload_veido_title" style="display: none;" />
			<input type="text" id="upload_input_select" name="upload_vedio_fenqu" style="display: none;" />
			<input type="text" id="upload_input_textarea" name="upload_vedio_textarea" style="display: none;" />
			<input type="submit" id="upload_submit_btn"  style="display: none;" />
		</form>
	<!--上传图片-->
	<form id="form1" enctype="multipart/form-data" method="post">
		<div class="row">
			<input type="file" name="fileToUpload" id="fileToUpload"
				style="display: none;" />
		</div>
	</form>
	<div id="upload_all">
		<div id="upload_back">
			<div class="upload_video_pic"></div>
			<div id="Upload_video">
				<div class="upload_video_title">上传视频</div>
			</div>
		</div>
		<div id="upload_content" style="margin-top: 200px; display: none;">

			<p class="upload_content_title">
				<!--进度条-->
			<p>视频上传进度</p>
			<div class="progress" style="width: 500px;">
				<div class="progress-bar" role="progressbar" aria-valuenow="0"
					aria-valuemin="0" aria-valuemax="100" style="width: 5%;">0%</div>
			</div>

			</p>
			<p>
				<b style="font-size: x-large;">基本信息</b>
			</p>
			<br/>
			<p>
				<b>视频封面设置</b>
			</p>
			<br />
			<div class="upload_content_icon">
				<img id="upload_content_icon_init" src="img/icon0.png"
					style="widows: 46px; height: 40px; margin-left: 80px; margin-top: 40px;" />
				<div class="upload_content_icon_title">
					<p>上传封面</p>
				</div>
			</div>
			<br />
			<div class="upload_type">
				<p>
					<b>类型</b>
				</p>
				<input type="radio" name="upload_type" /><span>自制</span> <input
					type="radio" name="upload_type" /><span>转载</span>
			</div>
			<br />
			<div id="select_choose">
				<p>
					<b>分区</b>
				</p>
				<select name="" id="upload_select">
					<c:forEach var="s" items="${list}">
						<option value="${s.typeId}">${s.vedioType}</option>
					</c:forEach>
					<option value="" selected="selected" style="display: none;">
						<p>点击选择</p>
					</option>
				</select>
				<div id="upload_title">
					<p>
						<b>标题</b>
					</p>
					<input type="text" class="form-control" id="exampleInputPassword1"
						placeholder="标题" @input="descInput" v-model="desc" maxlength="80"
						style="width: 40%;"> <span style="">{{remnant}}/80</span>
				</div>
			</div>
			<br />
			<div class="upload_introduce">
				<p>
					<b>简介</b>
				</p>
				<textarea class="upload_introduce_text" @input="descInput"
					v-model="desc" maxlength="250">

					</textarea>
				<span style="margin-left: -50px;">{{remnant}}/250</span>
				<p id="upload_introduce_p"></p>
			</div>


			<br />
			<div class="upload_submit">
				<p>立即投稿</p>
			</div>
		</div>

	</div>


</body>
<script>
		 //上传视频显示进度条
	   function uploadFile() {
        var fd = new FormData();
        fd.append("fileToUpload", document.getElementById('fileToUpload').files[0]);
        var xhr = new XMLHttpRequest();
        xhr.upload.addEventListener("progress", uploadProgress, false);
        xhr.addEventListener("error", uploadFailed, false);
        xhr.addEventListener("abort", uploadCanceled, false);
        xhr.open("POST", "test");//修改成自己的接口
        xhr.send(fd);
      }
	         function uploadProgress(evt) {
        if (evt.lengthComputable) {
          var percentComplete = Math.round(evt.loaded * 100 / evt.total);
          var a=percentComplete.toString() + '%';
          $(".progress-bar").css("width",a);
          $(".progress-bar").html( percentComplete.toString() + '%');
        }
      }
      function uploadFailed(evt) {
        alert("There was an error attempting to upload the file.");
      }
      function uploadCanceled(evt) {
        alert("The upload has been canceled by the user or the browser dropped the connection.");
      }
      //上传按钮的点击事件
		$("#Upload_video").click(function() {
				$("#fileToUpload").click();	
			$("#fileToUpload").change(function() {
				var filename = $("#fileToUpload").val();
				var index1 = filename.lastIndexOf(".");
				var index2=filename.length;
				var postf=filename.substring(index1,index2);//获取文件后缀名
				if(".AVI"==postf||".mov"==postf||".rmvb"==postf||".rm"==postf||".mp4"==postf||".FLV"==postf||".3GP"==postf){
					$("#upload_content").css("display","block");
					$("#upload_back").css("display", "none");
					
					uploadFile();
					/*$(".upload_content_title").text(filename);*/
				}		
				else{
					alert("请确保文件为常用的视频文件");
					return false;
				}
			})			
		})
		 $("#Upload_video").hover(function() {
			$("#Upload_video").css("opacity", "0.9")
		})
		 $("#Upload_video").mouseleave(function() {
				$("#Upload_video").css("opacity", "1")
			})
			//上传封面
		 $(".upload_content_icon").click(function() {
			$("#upload_img_file").click();
			$("#upload_img_file").change(function() {
				//$(".upload_content_icon").css("background-image", "");
				$(".upload_content_icon").css("border", "0px");
				$(".upload_content_icon").empty();
			//预览	
			var file = document.getElementById("upload_img_file").files[0];
			if (!/image\/\w+/.test(file.type)) //判断获取的是否为图片文件
			{
				alert("请确保文件为图像文件");
				return false;
			}
			var reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onload = function(e) {
				var re = document.getElementsByClassName("upload_content_icon")[0];
				re.innerHTML = '<img src="'+this.result+'" style="width:200px;height:125px" alt=""/>';
			}
				
			})
		})
		 $(".upload_content_icon").hover(function() {
			$(".upload_content_icon").css("opacity", "0.8");
		})
		 $(".upload_content_icon").mouseleave(function() {
				$(".upload_content_icon").css("opacity", "1");
			})
			//多文本框
		 new Vue({
				el: '.upload_introduce',
				data: {
					remnant: 0,
					desc: null
				},
				methods: {
					descInput:function() {
						var txtval = this.desc.length;
						this.remnant = txtval;
					}
				}
			})
		 		 new Vue({
				el: '#upload_title',
				data: {
					remnant: 0,
					desc: null
				},
				methods: {
					 descInput:function() {
						var txtval = this.desc.length;
						this.remnant = txtval;
					}
				}
			})
		 	//接收下拉框的值
				$("#upload_select").change(function(){
					var a=$("#upload_select option:selected");
					$("#upload_input_select").val(a.val());
				})
		 		
			//提交表单
		 $(".upload_submit").click(function() {
		 		var b=$(".upload_introduce_text");
				$("#upload_input_textarea").val(b.val());
				var c=$("#exampleInputPassword1");
				$("#upload_input_vedio_title").val(c.val());


				$("#upload_submit_btn").click();
		})
		 $(".upload_submit").mouseenter(function() {
			$(".upload_submit").css("opacity", "0.8");
		})
		 $(".upload_submit").mouseleave(function() {
				$(".upload_submit").css("opacity", "1");
			}) 
     
	</script>
</html>