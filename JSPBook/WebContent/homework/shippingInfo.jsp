<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<title>배송 정보</title>
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
		<form method="post" class="form-horizontal" 
			action="processShippingInfo.jsp">
			<input type="hidden" name="cartId" value="${param.cartId}">
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">배송일</label>
				<div class="col-sm-3">
					<input type="text" name="shippingDate" class="form-control" />
					(yyyy/mm/dd)
				</div>
			</div>	
			<div class="form-group row">
				<label class="col-sm-2">국가</label>
				<div class="col-sm-3">
					<input type="text" name="country" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-3">
					<input type="text" name="zipCode" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input type="text" name="addressName" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset2 col-sm-10">
					<a href="cart.jsp?cartId${param.cartId}" class="btn btn-secondary" role="button">이전</a>
					<input type="submit" class="btn btn-primary" value="등록" />
					<a href="checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
				</div>
			</div>
		</form>
	</div>
<!-- bottom 인클루드 시작 -->
	<jsp:include page="/ch03/bottom.jsp" />
<!-- bottom 인클루드 끝 -->
</body>
</html>