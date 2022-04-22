<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>주문 취소</title>
</head>
<body>
<!-- top 인클루드 시작 -->
	<jsp:include page="/ch03/top.jsp" />
<!-- top 인클루드 끝 -->
	<div class="jumbotron"> 
		<div class="container">
			<h1 class="display-3">배송 정보</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">주문이 취소되었습니다.</h2>
	</div>
	<div class="container"> 
		<p>
			<a href="books.jsp" class="btn btn-secondary">
				&laquo; 책 목록
			</a>
		</p>
	</div>
<!-- bottom 인클루드 시작 -->
	<jsp:include page="/ch03/bottom.jsp" />
<!-- bottom 인클루드 끝 -->
</body>
</html>