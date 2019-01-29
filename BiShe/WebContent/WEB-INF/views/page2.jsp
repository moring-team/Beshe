<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>index</title>
	<link rel="stylesheet" type="text/css" href="${ctx }/css/login.css" />
	</head>
	<body>
		<div id="two_ifr">
			<div id="logo">
				<img src="${ctx }/img/logo.jpg">
			</div><!--logo的位置-->
			<div id="input">
				<div>&nbsp;</div>
				<div>
					<input type="text"  placeholder="请输入账号" id="input_size"/>
				</div><!--账号密码的位置-->
				<span ></span></br>
				<span></span></br>
				<div>
					<input type="password"  placeholder="请输入密码" id="input_size"/>
				</div><!--账号密码的位置-->
				<span ></span></br>
				<span></span></br>
				<div>
						<input type="submit" value="登录" class="input_position"onclick="window.open('index.html')"/>
				</div>
		 		<div id="fond_style">没账号:&nbsp;<a href="${ctx }/page2.html" target="box">注册</a></div>
			</div>
		</div>
	</body>
</html>