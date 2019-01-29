<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>首页</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="${ctx}/css/banner.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/css/zui.min.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/css/amazeui.min.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/css/forum-public.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/css/forum-reset.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/css/forum-index.css">
	<script type="text/javascript" src="${ctx}/js/jquery.zui.js"></script>
	<script type="text/javascript" src="${ctx}/js/zui.min.js"></script>
	<script>
	    function collect(item){
	    	var keyword = item.getAttribute("id");
	    	alert(keyword);
	    	var params={};
	    	params.keyword=keyword;    	
	    	$.ajax({
	    		url : "http://localhost:8080/KeDou/forum/collect",
	    		type : "POST",
	    		data :params,
	    		dataType:'json',
	    		success : function(data) {
	    			if (data == "yes") {
	    				alert("收藏成功");
	    			} else if (data == "no") {
	    				alert("收藏失败");
	    			}
	    		},error: function(data){
	    			alert("error");
	    		}
	    	});
	    }
    </script>
</head>
<body>
	<div class="container-fluid" style="background-color: #F9F8F7;">
			<div id="header">
				<!--logo-->
				<div id="logo">
					<img src="${ctx }/images/logo2.png"/>
				</div>
				<!--搜索框-->
				<div id="find">
					<form action="#" id="searchForm" method="get">
						<div class="input-group">
						
							<div class="input-control search-box search-box-circle has-icon-left has-icon-right search-example" id="searchboxExample">
								<input id="inputSearchExample3" type="search" name="search"  class="form-control search-input" value="备考经验"/>
							
								<label for="inputSearchExample3" class="input-control-icon-left search-icon">
									<i class="icon icon-search" style="line-height: 2;"></i>
								</label>
							</div>
							<span class="input-group-btn">
								<button class="btn btn-primary" type="submit">搜索</button>
							</span>
						</div>
					</form>					
				</div>
				<!--定位-->
				<div id="locate">
					<i class="icon icon-map-marker icon-2x" ></i>
					<p id="address">[<a href="${ctx }/useraddress/toaddress" style="color:#3280fc; text-decoration: none;">切换地址</a>]</p>
				</div>
				<!--个人头像-->
				<div id="userPad">
					 <div id="myPhoto">
						<img src="${ctx }/images/me.png" onerror="this.src='${ctx }/img/logo.jpg'"/>
					</div>
					<div class="popover bottom" id="myPopover" style="top:4%;">
						<div class="arrow"></div>
							<h3 class="popover-title"><a href="${ctx }/person.html"><i class="icon icon-home"></i>&nbsp&nbsp个人中心</a></h3>
							<div class="popover-content">
								<ul>
									<li class="menu-li"><a href="${ctx }/person.html"><i class="icon icon-envelope"></i>&nbsp&nbsp我的消息</a></li>
									<li class="menu-li"><a href="${ctx }/person.html"><i class="icon icon-history"></i>&nbsp&nbsp我的足迹</a></li>
									<li class="menu-li"><a href="${ctx }/person.html"><i class="icon icon-check-board"></i>&nbsp&nbsp我的预约</a></li>
									<li class="menu-li"><a href="${ctx }/person.html"><i class="icon icon-star"></i>&nbsp&nbsp我的收藏</a></li>
								</ul>
							</div>
						</div>
					 	<div id="loginregiste">
							<a href="${ctx }/userlogin.html"><font size="4">登陆 </font></a><font size="5" color="blue"> / </font><a href="userlogin.html"><font size="4"> 注册</font></a>
						</div>
					</div>
				</div>
				<!--导航条-->
				<div id="navigation">
                    <ul class="nav nav-secondary">
                        <li><a href="${ctx }/index.html" class="nav-a">首页</a></li>
                        <li><a href="${ctx }/progress.html" class="nav-a">复习进度</a></li>
                        <li><a href="${ctx }/forum-articles.html" class="nav-a">论坛 </a></li>
                        <li><a href="${ctx }/forum-edit.html" class="nav-a">写文章 </a></li>
                    </ul>
				</div>
			</div>
			<script>
  			 $(document).ready(function(){
  		         $("#myPhoto").hover(function(){
  		            $("#myPopover").toggle();
  		         });
  		      });
  		      $(document).ready(function(){
  		         $("#myPopover").hover(function(){
  		            $("#myPopover").show();
  		         });
  		         $("#myPopover").mouseleave(function(){
  		            $("#myPopover").hide();
  		         });
  		      });		
          </script>
    </div>
	<!--  列表区 -->
	  <div class="main">
	    <div class="main-inner body-width">
	      <div class="banner clearfix">
	        <div class="slider" id="slider">
	          <ul class="slider-wrapper">  
	            <li class="item" data-title="备考经验" data-author="by 苏苏">
	              <a href="#" class="pic"><img src="${ctx}/images/01.jpg" alt="无法显示"></a>
	            </li>
	            <li class="item" data-title="备考经验" data-author="by 苏苏">
	              <a href="#" class="pic"><img src="${ctx}/images/02.jpg" alt="无法显示"></a>
	            </li> 
	          </ul>
	          <a href="javascript:;" class="slider-prev"></a>
	          <a href="javascript:;" class="slider-next"></a>
	        </div>
	        <div class="banner-info">
	          <div class="news body-border">
	            <ul>
	              <li class="title">社区热点</li>
	              <li class="link" >
	                <a href="#">哈哈哈哈哈哈</a><br/>
	                <a href="#">哈哈哈哈哈哈</a><br/>
	                <a href="#">哈哈哈哈哈哈</a><br/>
	                <a href="#">哈哈哈哈哈哈</a><br/>
	                <a href="#">哈哈哈哈哈哈</a><br/>
	              </li>
	            </ul>
	          </div>
	          <div class="ad1">
	            <a href=""><img src="${ctx }/images/label-5.jpg" ></a></div>
	        </div>
	      </div>

	      <!-- 专辑列表 -->
	      <div class="main-cont main-album">
	        <div class="main-cont__title">
	          <h3>专辑精选</h3>
	          <a href="#" class="more">往期回顾 ></a>
	        </div>
	        <ul class="main-cont__list clearfix">
	          <li class="item">
	            <a href="#" class="pic"><img src="${ctx }/images/label-1.jpg" alt="#"></a>
	            <div class="info">
	              <a href="#" class="title">英语单词备考</a>
	              <p>30个赞 · 12人收藏</p>
	              <p>by <a href="#" class="author">苏苏</a></p>
	              <button type="button" class="btn btn-danger" style="margin-left: 130px;margin-top: -10px;"><i class="icon-heart"></i> 喜欢</button>
	            </div>
	          </li>
	          <li class="item">
	            <a href="#" class="pic"><img src="${ctx }/images/label-1.jpg" alt="#"></a>
	            <div class="info">
	              <a href="#" class="title">英语单词备考</a>
	              <p>30个赞 · 12人收藏</p>
	              <p>by <a href="#" class="author">苏苏</a></p>
	              <button type="button" class="btn btn-danger" style="margin-left: 130px;margin-top: -10px;"><i class="icon-heart"></i> 喜欢</button>
	            </div>
	          </li>
	          <li class="item">
	            <a href="#" class="pic"><img src="${ctx }/images/label-1.jpg" alt="#"></a>
	            <div class="info">
	              <a href="#" class="title">英语单词备考</a>
	              <p>30个赞 · 12人收藏</p>
	              <p>by <a href="#" class="author">苏苏</a></p>
	              <button type="button" class="btn btn-danger" style="margin-left: 130px;margin-top: -10px;"><i class="icon-heart"></i> 喜欢</button>
	            </div>
	          </li>
	          <li class="item">
	            <a href="#" class="pic"><img src="${ctx }/images/label-1.jpg" alt="#"></a>
	            <div class="info">
	              <a href="#" class="title">英语单词备考</a>
	              <p>30个赞 · 12人收藏</p>
	              <p>by <a href="#" class="author">苏苏</a></p>
	              <button type="button" class="btn btn-danger" style="margin-left: 130px;margin-top: -10px;"><i class="icon-heart"></i> 喜欢</button>
	            </div>
	          </li>
	          <li class="item">
	            <a href="#" class="pic"><img src="${ctx }/images/label-1.jpg" alt="#"></a>
	            <div class="info">
	              <a href="#" class="title">英语单词备考</a>
	              <p>30个赞 · 12人收藏</p>
	              <p>by <a href="#" class="author">苏苏</a></p>
	              <button type="button" class="btn btn-danger" style="margin-left: 130px;margin-top: -10px;"><i class="icon-heart"></i> 喜欢</button>
	            </div>
	          </li>
	        </ul>
	      </div>
		<!-- 其他内容列表区 -->
		<div class="main-cont main-album">
			<div class="main-cont__title">
				<h3>大家正在逛</h3>
				<a href="#" class="more">浏览更多></a>
			</div>
			<ul class="main-cont__list clearfix">
	          <li class="item">
	            <a href="#" class="pic"><img src="${ctx }/images/label-1.jpg" alt="#"></a>
	            <div class="info">
	              <a href="#" class="title">英语单词备考</a>
	              <p>30个赞 · 12人收藏</p>
	              <p>by <a href="#" class="author">苏苏</a></p>
	              <button type="button" class="btn btn-danger" style="margin-left: 130px;margin-top: -10px;"><i class="icon-heart"></i> 喜欢</button>
	            </div>
	          </li>
	          <li class="item">
	            <a href="#" class="pic"><img src="${ctx }/images/label-1.jpg" alt="#"></a>
	            <div class="info">
	              <a href="#" class="title">英语单词备考</a>
	              <p>30个赞 · 12人收藏</p>
	              <p>by <a href="#" class="author">苏苏</a></p>
	              <button type="button" class="btn btn-danger" style="margin-left: 130px;margin-top: -10px;"><i class="icon-heart"></i> 喜欢</button>
	            </div>
	          </li>
	          <li class="item">
	            <a href="#" class="pic"><img src="${ctx }/images/label-1.jpg" alt="#"></a>
	            <div class="info">
	              <a href="#" class="title">英语单词备考</a>
	              <p>30个赞 · 12人收藏</p>
	              <p>by <a href="#" class="author">苏苏</a></p>
	              <button type="button" class="btn btn-danger" style="margin-left: 130px;margin-top: -10px;"><i class="icon-heart"></i> 喜欢</button>
	            </div>
	          </li>
	          <li class="item">
	            <a href="#" class="pic"><img src="${ctx }/images/label-1.jpg" alt="#"></a>
	            <div class="info">
	              <a href="#" class="title">英语单词备考</a>
	              <p>30个赞 · 12人收藏</p>
	              <p>by <a href="#" class="author">苏苏</a></p>
	              <button type="button" class="btn btn-danger" style="margin-left: 130px;margin-top: -10px;"><i class="icon-heart"></i> 喜欢</button>
	            </div>
	          </li>
	          <li class="item">
	            <a href="#" class="pic"><img src="${ctx }/images/label-1.jpg" alt="#"></a>
	            <div class="info">
	              <a href="#" class="title">英语单词备考</a>
	              <p>30个赞 · 12人收藏</p>
	              <p>by <a href="#" class="author">苏苏</a></p>
	              <button type="button" class="btn btn-danger" style="margin-left: 130px;margin-top: -10px;"><i class="icon-heart"></i> 喜欢</button>
	            </div>
	          </li>
	        </ul>
	      </div>
	    </div> 
	  </div>
	<footer>
	    <div class="content">
	        <ul class="am-avg-sm-5 am-avg-md-5 am-avg-lg-5 am-thumbnails">
	            <li><a href="#">联系我们</a></li>
	            <li><a href="#">加入我们</a></li>
	            <li><a href="#">合作伙伴</a></li>
	            <li><a href="#">广告及服务</a></li>
	            <li><a href="#">友情链接</a></li>
	        </ul>
	        <p>Amaze UI出品<br>© 2016 AllMobilize, Inc. Licensed under MIT license. Developed with WebStorm.</p>
	    </div>
	</footer>
</body>
</html>