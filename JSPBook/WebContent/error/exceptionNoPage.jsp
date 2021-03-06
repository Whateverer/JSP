<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>페이지 오류</title>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
</head>
<body>
	<!-- top 인클루드 시작 -->
	<jsp:include page="/ch03/top.jsp" />
	<!-- top 인클루드 끝 -->
	
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	</div>
	
	<div class="container">
		<p><%=request.getRequestURL()%></p><!-- 오류페이지를 출력 -->
		<p>
			<a href="/ch04/products.jsp" class="btn btn-secondary">
			상품목록&raquo;	
			</a>
		</p>
	</div>
	
	<!-- bottom 인클루드 시작 -->
	<jsp:include page="/ch03/bottom.jsp" />
	<!-- bottom 인클루드 끝 -->
</body>
</html>