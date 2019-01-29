<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<title>userLogin</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<link rel="stylesheet" type="text/css" href="${ctx }/css/login.css"/>	
</head>
<body bgcolor="#AEEEEE">
	<div id="one">	
		<!--中间内敛框架的变化部分 -->
		<div id="four_ifr">
			<iframe src="${ctx }/page1.jsp"  frameborder="0" width="100%" scrolling="no" height="100%" name="box"></iframe>
		</div>	
	</div>
</body>
</html>