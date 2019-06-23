<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
<link rel="stylesheet" href="plugins/boostrap/css/bootstrap.css">
<link rel="stylesheet" href="css/search.css">
</head>
<script type="text/javascript" src="plugins/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="plugins/boostrap/js/bootstrap.js"></script>
<body>
	<!--搜索栏开始-->
	<div id="app">
		<div class="search-contain">
			<div class="search-wrap">
				<div class="logo">
					<img src="img/logo.png" />
				</div>
				<div class="search-block">
					<div class="input-wrap">
						<input type="text" placeholder="黑暗" v-model="searchData" />
						<div class="suggest-wrap"></div>
					</div>
					<div class="search-button" v-on:click="search">
						<div class="icon-search-white"></div>
						<span>搜索</span>
					</div>
				</div>

			</div>

		</div>
		<!--搜索栏结束-->
		<!--页面主体开始-->
		<div class="body-container">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active"><a href="#vedio" data-toggle="tab"> 视频 </a>
				</li>
				<li><a href="#user" data-toggle="tab">用户</a></li>
			</ul>
			<div id="myTabContent" class="tab-content content">
				<div class="tab-pane fade in active" id="vedio">
				<!-- 视频开始 -->
				<div>
				<div v-for="v in vedioPageBean.list" class="item">
					<a href="#" title="hhh">
						<div class="img">
							<!--<img class="lazy-img" src="img/icon0.png">-->
							<div class="lazy-img">
								<img v-bind:src="v.imgPath" style="width:100%;height:100%"/>
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="#" class="title" style="color:#222">{{v.title}}</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
						<i class="play-num"></i>
							{{v.playCount}}
						</span>
							<span title="上传时间" class="so-icon time">
						<i class="icon-date"></i>
							{{v.upLoadTime.year+1900}}-{{v.upLoadTime.month}}-{{v.upLoadTime.date}} 
						</span>
							<span title="up主" class="so-icon">
						<i class="icon-uper"></i>
						{{v.users.uname}}
					</span>
						</div>
					</div>
				</div>
				</div>
			<!-- 	<div class="item">
					<a href="#" title="hhh">
						<div class="img">
							<img class="lazy-img" src="img/icon0.png">
							<div class="lazy-img">
								<img src="img/icon0.png" />
							</div>
						</div>
					</a>
					<div class="info">
						<div class="headline">
							<a href="#" class="title" style="color:#222">粤语会话三月通</a>
						</div>
						<div class="tags">
							<span title="观看" class="so-icon watch-num">
						<i class="play-num"></i>
							15万
						</span>
							<span title="上传时间" class="so-icon time">
						<i class="icon-date"></i>
							2017-4-23
						</span>
							<span title="up主" class="so-icon">
						<i class="icon-uper"></i>
						取名字超纠结
					</span>
						</div>
					</div>
				</div> -->
					<!-- 分页开始 -->
					<div class="fy">
						<nav aria-label="Page navigation">
							<ul class="pager">
								<li v-if="vedioPageBean.pageIndex!=1"><a href="javascript:void(0)" v-on:click="first">首页</a></li>
								<li v-if="vedioPageBean.pageIndex!=1"><a href="javascript:void(0)" v-on:click="previous">上一页</a></li>
								<li v-if="vedioPageBean.pageIndex!=vedioPageBean.totalPage"><a href="javascript:void(0)" v-on:click="next">下一页</a></li>
								<li v-if="vedioPageBean.pageIndex!=vedioPageBean.totalPage"><a href="javascript:void(0)" v-on:click="last">末页</a></li>
							</ul>
						</nav>
					</div>
					<!-- 分页结束 -->
				</div>
				<!-- 视频结束 -->
				<!-- 用户部分开始 -->
				<div class="tab-pane fade" id="user">
					<div class="result-wrap">
						<div class="up-item">
							<div class="up-face">
								<a href="javascript:void(0)" class="face-img">
									<div class="lazy-img">
										<img src="img/akari.jpg"/>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- 用户部分结束 -->
			</div>

		</div>
		<!--页面主体结束-->
	</div>
</body>
<script type="text/javascript" src="plugins/vue/vue.js"></script>

<script>
	var app=new Vue({
		el:'#app',
		data:{
			searchData:'aa',
			typeName:'',
			userPageBean:{
				pageIndex:1,
				pageSize:12,
				totalCount:0,
				totalPage:0,
				list:[]
			},
			vedioPageBean:{
				pageIndex:1,
				pageSize:10,
				totalCount:0,
				totalPage:0,
				list:[]
			}
		},
		created:function(){
			var data=decodeURI(document.location.toString(),'utf-8').split('?')[1].split('&');
			var searchData;
			var typeName;
			$.each(data,function(i,s){
				var d=s.split('=');
				if(d[0]==='searchData'){
					searchData=searchData=d[1];
				}else{
					typeName=d[1];
				}
			});
			this.searchData=searchData;
			//this.typeName=typeName;
			this.show(this.searchData,this.userPageBean,this.vedioPageBean);
		},
		methods:{
			show:function(searchData,userPageBean,vedioPageBean){
				console.log(vedioPageBean);
				$.ajax({
					url:'search',
					type:'post',
					data:{
						'searchData':searchData,
						'userPageBean.pageIndex':userPageBean.pageIndex,
						'userPageBean.pageSize':userPageBean.pageSize,
						'vedioPageBean.pageIndex':vedioPageBean.pageIndex,
						'vedioPageBean.pageSize':vedioPageBean.pageSize,
					},
					dataType:'json',
					success:function(data){
						var obj=JSON.parse(data.str);
						/* console.log(obj.vedioPageBean); */
						app.vedioPageBean=obj.vedioPageBean;
						app.userPageBean=obj.userPageBean;
					},
					traditional: true
				});
			},
			previous:function(){
				this.vedioPageBean.pageIndex--;
				this.show(this.searchData,this.userPageBean,this.vedioPageBean);
			},
			next:function(){
				this.vedioPageBean.pageIndex++;
				this.show(this.searchData,this.userPageBean,this.vedioPageBean);
			},
			first:function(){
				this.vedioPageBean.pageIndex=1;
				this.show(this.searchData,this.userPageBean,this.vedioPageBean);
			},
			last:function(){
				console.log(this.vedioPageBean.totalPage);
			},
			search:function(){
				this.show(this.searchData,this.userPageBean,this.vedioPageBean);
			}
			
		}
	});
</script>


</html>