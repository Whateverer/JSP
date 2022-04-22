<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
<!-- top.jsp 시작 -->
<%@ include file="top.jsp" %>
<!-- top.jsp 끝 -->
<%!
	String greeting = "Welcome to 유진이의 Shopping Mall";
	String tagline = "Welcome to 유진이의 Market!";
%>	
<div class="jumbotron">
	<div class="container">
		<h3 class="display-3">
		<!-- ?name=개똥이 -->
			Welcome to ${param.name}의 Shopping Mall
		</h3>
	</div>
</div>
<div class="container">
	<div class="text-center">
		<h3>Welcome to ${param.name}의 Market!</h3>
	</div>
</div>
<!-- bottom.jsp 시작 -->
<%@ include file="bottom.jsp"%>	
<!-- bottom.jsp 끝 -->
</body>
</html>