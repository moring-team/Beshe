<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
	<head>
		<title>个人中心</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="${ctx}/css/zui.css">
		<link rel="stylesheet" type="text/css" href="${ctx}/css/banner.css">
   		<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
   		<link rel="stylesheet" type="text/css" href="${ctx}/css/index.css"/>
	</head>
	<body>
		<div class="container-fluid" id="person_banner">
			<div id="header">
				<!--logo-->
				<div id="logo">
					<img src="${ctx}/images/logo.png"/>
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
						<img src="${userImgPath}/${sessionScope.loginUser.userIcon}" onerror="this.src='images/me.png'"/>
					</div>
					<div class="popover bottom" id="myPopover" style="top:12%;">
						<div class="arrow"></div>
							<h3 class="popover-title"><a href="person.html"><i class="icon icon-home"></i>&nbsp&nbsp个人中心</a></h3>
							<div class="popover-content">
								<ul>
									<li class="menu-li"><a href="person.html"><i class="icon icon-envelope"></i>&nbsp&nbsp我的消息</a></li>
									<li class="menu-li"><a href="person.html"><i class="icon icon-history"></i>&nbsp&nbsp我的足迹</a></li>
									<li class="menu-li"><a href="person.html"><i class="icon icon-check-board"></i>&nbsp&nbsp我的预约</a></li>
									<li class="menu-li"><a href="person.html"><i class="icon icon-star"></i>&nbsp&nbsp我的收藏</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--导航条-->
				<div id="navigation">
                    <ul class="nav nav-secondary">
                        <li><a href="index.html" class="nav-a">首页</a></li>
                        <li><a href="progress.html" class="nav-a">复习进度</a></li>
                        <li><a href="forum-articles.html" class="nav-a">论坛 </a></li>
                        <li><a href="forum-edit.html" class="nav-a">写文章 </a></li>
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
		<div class="main_left">
				<div class="image"  id="image"><img src="img/1.jpg" width="100%" height="100%"></div>
				<div class="image_change" id="image_change">
					<img src="img/timg.jpg"width="100%" height="100%">
					<p class="image_text" id="image_text">更换头像</p>
				</div>
				<div class="username">昵称：${stu.stuName }</div>
				<div class="username_mananger">账户管理</div>
					<div class="usermessage"></div>
					<a  href="person_message.html" target="preson_megs">
					<div class="usermessage1" name="yes">个人信息</div></a>
					<a  href="person_fatie.html" target="preson_megs">
					<div class="usermessage2" >我的帖子</div></a>
					<a  href="person_collect.html" target="preson_megs">
					<div class="usermessage3" >我的收藏</div></a>
					<a  href="person_return.html" target="preson_megs">
					<div class="usermessage4" >我的回复</div></a>
			</div>
			<div class="main_right">
				<iframe src="person_message.html"  frameborder="0" width="100%" scrolling="no" height="100%" name="preson_megs">
					
				</iframe>
			</div>
		</div>
	</body>
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>		
		<script type="text/javascript">
			function check(){
				var str = document.search.message.value;
				if(str.length<1){
					document.getElementById('id').disabled=true;
				}else{
					document.getElementById('id').disabled=false;
				}
			}
			setInterval(check,100);  //循环调用函数判断搜索框中为空值是，搜索按钮不可点击
		</script>
	<script>
		$("#d1").mouseover(function(){
		  $("#d2").css("display","block");
		  $("#buton1").css("display","none");
		});
		$("#d1").mouseleave(function(){
		});
		$("#d2").mouseover(function(){
		  $("#d2").css("display","black");
		  $("#buton1").css("display","none");
		});		
		$("#d2").mouseleave(function(){
		  $("#d2").css("display","none");
		  if($("#usermessage1").attr("name")=="yes"){
		  	$("#buton1").css("display","block");
		  }else{
		  	$("#buton1").css("display","none");
		  }

		});
		$("#buton1").mouseover(function(){
		  $("#buton1").css("color","#1C86EE");
		});
		$("#buton1").mouseleave(function(){
		  $("#buton1").css("color","black");
		});
    </script>
    <script>
        var d11 = document.getElementById('d2-2-1');
        var d22 = document.getElementById('d2-2-2');
		var d33 = document.getElementById('d2-2-3');
		var d44 = document.getElementById('d2-2-4');
        d11.onmouseover = function() {
            d11.style.background = "#CDCDC1";
        }
        d11.onmouseout = function() {
            d11.style.background = "beige";
        }
        d22.onmouseover = function() {
            d22.style.background = "#CDCDC1";
        }
        d22.onmouseout = function() {
            d22.style.background = "beige";
        }
        d33.onmouseover = function() {
            d33.style.background = "#CDCDC1";
        }
        d33.onmouseout = function() {
            d33.style.background = "beige";
        }
        d44.onmouseover = function() {
            d44.style.background = "#CDCDC1";
        }
        d44.onmouseout = function() {
            d44.style.background = "beige";
        }
    </script>
    <script>
        var t1 = document.getElementById('image_change');
        var t2 = document.getElementById('image');
		var t3 = document.getElementById('image_text');
		var t4 = document.getElementById('buton1');
		var t5 = document.getElementById('usermessage1');
		var t6 = document.getElementById('usermessage2');
		var t7 = document.getElementById('usermessage3');
		var t8 = document.getElementById('usermessage4');
        t2.onmouseover = function() {
            t1.style.display = "block";
        }
        t1.onmouseout = function() {
            t1.style.display = "none";
        }
        t3.onmouseover = function() {
            t1.style.display = "block";
        }
        t3.onmouseout = function() {
            t1.style.display = "block";
        }
        t5.onclick =function(){
        	t4.style.display = "block";
        }
		t6.onclick =function(){
        	t4.style.display = "none";
        }
		t7.onclick =function(){
        	t4.style.display = "none";
        }
		t8.onclick =function(){
        	t4.style.display = "none";
        }
    </script>
	<script>
		$(function(){
		  $('.usermessage2').click(function(){
			$(".usermessage1").attr("name","no");
			$('.usermessage3').removeClass('usermessage111').addClass('usermessage5'); 
			$('.usermessage4').removeClass('usermessage111').addClass('usermessage5'); 
			$('.usermessage1').removeClass('usermessage111').addClass('usermessage5'); 
			$(this).addClass('usermessage111').removeClass('usermessage5'); 
		   }
		  );
		 });
		$(function(){
		  $('.usermessage3').click(function(){
			$(".usermessage1").attr("name","no");
			$('.usermessage1').removeClass('usermessage111').addClass('usermessage5'); 
			$('.usermessage2').removeClass('usermessage111').addClass('usermessage5'); 
			$('.usermessage4').removeClass('usermessage111').addClass('usermessage5'); 
			$(this).addClass('usermessage111').removeClass('usermessage5'); 
		   }
		  );
		 });
		$(function(){
		  $('.usermessage4').click(function(){
			$(".usermessage1").attr("name","no");
			$('.usermessage1').removeClass('usermessage111').addClass('usermessage5'); 
			$('.usermessage2').removeClass('usermessage111').addClass('usermessage5'); 
			$('.usermessage3').removeClass('usermessage111').addClass('usermessage5'); 
			$(this).addClass('usermessage111').removeClass('usermessage5'); 
		   }
		  );
		 });
		$(function(){
		  $('.usermessage1').click(function(){
			$(".usermessage1").attr("name","yes");
			$('.usermessage3').removeClass('usermessage111').addClass('usermessage5'); 
			$('.usermessage2').removeClass('usermessage111').addClass('usermessage5'); 
			$('.usermessage4').removeClass('usermessage111').addClass('usermessage5'); 
			$(this).addClass('usermessage111').removeClass('usermessage5'); 
		   }
		  );
		 });	
   </script>
	<script>
   // 		window.onload = function() { 
   // 			$(".usermessage1").attr("name","yes");
	  //   	$(".usermessage1").addClass('usermessage111').removeClass('usermessage5');
	  //   	$('.usermessage3').removeClass('usermessage111').addClass('usermessage5'); 
			// $('.usermessage2').removeClass('usermessage111').addClass('usermessage5'); 
			// $('.usermessage4').removeClass('usermessage111').addClass('usermessage5'); 
   // 			$("a")[0].click();  //默认第一个超链接被点击
   // 		};
   	</script>
  	<script>	
		function check(){  
			var bton=document.getElementById("buton1");//获取button按钮
				
				//获取页面高度和宽度
				var sHeight=document.documentElement.scrollHeight;
				var sWidth=document.documentElement.scrollWidth;
				
				//可是区域的高度和宽度
				var wHeight=document.documentElement.clientHeight;
				
				var oMask=document.createElement("div");
					oMask.id="mask";
					oMask.style.height=sHeight+"px";
					oMask.style.Width=sWidth+"px";
					document.body.appendChild(oMask);
				var oLogin=document.createElement("div");
					oLogin.id="messagechange";
					oLogin.innerHTML="<div id='message'>"+
					                     "<div id='close'>&times;</div>"
					                     +"<div class='change_meg'>编辑个人信息</div>"
					                     +	"<form  action='' method='get'>"
					                     +		"<div class='user_name'>"
					                     +			"<div class='user_name1'>昵称：</div>"
					                     +          "<div class='user_name3'><input type='text' class='user_name2'/></div>"
					                     +      "</div>"

					                     +		"<div class='user_gender'>"
					                     +			"<div class='user_gender1'id='user_address2'>考试年份：</div>"
					                     +			"<div class='user_gender2'/><input type='radio'  name='gender' value='2018'/>2018</div>"
					                     +			"<div class='user_gender2'/><input type='radio'  name='gender' value='2019'/>2019</div>"
					                     +          "<div class='user_gender2'/><input type='radio'  name='gender' value='2020'/>2020</div>"
					                     +      "</div>"

					                     +		"<div class='user_address'>"
					                     +			"<div class='user_address1'id='user_address2'>目标院校：</div>"
					                     +          "<div class='user_address2'><select>"
										 +											"<option value='volvo'>学校</option>"
										 +											"<option value='saab'>Saab</option>"
										 +											"<option value='opel'>Opel</option>"
										 +											"<option value='audi'>Audi</option>"
										 +										"</select>"
										 +			"</div>"
					                     +          "<div class='user_address2'><select>"
										 +											"<option value='volvo'>专业</option>"
										 +											"<option value='saab'>Saab</option>"
										 +											"<option value='opel'>Opel</option>"
										 +											"<option value='audi'>Audi</option>"
										 +										"</select>"
										 +			"</div>"
					                     +          "<div class='user_address2'><select>"
										 +											"<option value='volvo'>方向</option>"
										 +											"<option value='saab'>Saab</option>"
										 +											"<option value='opel'>Opel</option>"
										 +											"<option value='audi'>Audi</option>"
										 +										"</select>"
										 +			"</div>"
					                     +      "</div>"
					                     +      "<div class='textarea'>"
					                     +			"<div class='textarea1'>个人描述：</div>"
					                     +			"<div class='textarea2'><textarea rows='4' cols='38' class='textarea3'  onchange='this.value=this.value.substring(0, 128)' onkeydown='this.value=this.value.substring(0, 128)' onkeyup='this.value=this.value.substring(0, 128)'></textarea></div>"
					                     +      "</div>"
					                     +"<div class='button0'>"
					                     +	"<div><button  id='id'  class='btn'/>取消</div>"
					                     +  "<div><input type='submit' id='id' value='确定' class='btn btn-primary'/></div>"
					                     +"</form>"
					                  +"</div>"
					document.body.appendChild(oLogin);
				//获取login的高度和宽度
				var dHeight=oLogin.offsetHeight;
				var dWidth=oLogin.offsetWidth;
				oLogin.style.left=(sWidth-dWidth)/2+"px";
				oLogin.style.top=(wHeight-dHeight)/2+"px";	
				
				var oClose=document.getElementById("close");
					oMask.onclick=oClose.onclick=function(){
						document.body.removeChild(oMask);
						document.body.removeChild(oLogin);
					}	
		}
  	</script>
		<!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
		<script src="lib/jquery/jquery.js"></script>
		<!-- ZUI Javascript组件 -->
		<script src="js/zui.min.js"></script>
		<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>	
	</body>
</html>
