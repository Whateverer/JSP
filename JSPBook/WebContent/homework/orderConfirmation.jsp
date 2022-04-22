<%@page import="dto.Book"%>
<%@page import="java.util.List"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();
	
	Cookie[] cookies = request.getCookies();
	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";
	
	//쿠키가 있어야 함
	if(cookies != null){
		for(int i=0;i<cookies.length;i++){
			Cookie thisCookie = cookies[i];
			//쿠키명을 가져오기
			String n = thisCookie.getName();
			//쿠키명에 매핑되어 있는 값을 가져오기
			if(n.equals("Shipping_cartId")){
				shipping_cartId = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
			}
			if(n.equals("Shipping_name")){
				shipping_name = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
			}
			if(n.equals("Shipping_shippingDate")){
				shipping_shippingDate = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
			}
			if(n.equals("Shipping_country")){
				shipping_country = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
			}
			if(n.equals("Shipping_zipCode")){
				shipping_zipCode = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
			}
			if(n.equals("Shipping_addressName")){
				shipping_addressName = URLDecoder.decode(thisCookie.getValue(),"UTF-8");
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<title>주문 정보</title>
</head>
<body>
<!-- top 인클루드 시작 -->
	<jsp:include page="/ch03/top.jsp" />
<!-- top 인클루드 끝 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 정보</h1>
		</div>
	</div>
	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
		<!-- 배송에 관한 정보 시작 -->
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<strong>배송 주소</strong><br />
				성명 : <%=shipping_name%><br />
				우편번호 : <%=shipping_zipCode%><br />
				주소 : <%=shipping_addressName%>(<%=shipping_country%>)<br />
			</div>
			<div class="col-4" align="right">
				<p><em>배송일 : <%=shipping_shippingDate%></em></p>
			</div>
		</div>
		<!-- 배송에 관한 정보 끝 -->
		<div>
			<table class="table table-hover">
				<tr>
					<td class="text-center">상품</td>
					<td class="text-center">#</td>
					<td class="text-center">가격</td>
					<td class="text-center">소계</td>
				</tr>
				<%
					//장바구니는 세션을 사용한다(세션명 : cartlist)
					List<Book> cartList = (List<Book>)session.getAttribute("cartlist");
				%>
				<c:set var="cartList" value="<%=cartList%>" />
				<!-- 상품에 관한 정보 시작 -->
				<c:forEach var="book" items="${cartList}" >
				<tr>
					<td class="text-center"><em>${book.bookName} </em></td>
					<td class="text-center">${book.quantity}</td>
					<td class="text-center"><fmt:formatNumber value="${book.price}" pattern="#,###" />원</td>
					<td class="text-center"><fmt:formatNumber value="${book.quantity*book.price}" pattern="#,###"/>원</td>
				</tr>
					<!-- sum으로 누적 -->
					<c:set var="sum" value="${sum + book.price*book.quantity }" />
				</c:forEach>
				<!-- 상품에 관한 정보 끝 -->
				<tr>
					<td></td>
					<td></td>
					<td class="text-right"><strong>총액 : </strong></td>
					<td class="text-center text-danger"><strong><fmt:formatNumber value="${sum}" pattern="#,###" />원</strong></td>
				</tr>
			</table>
			
			<a href="shippingInfo.jsp?cartId=${param.cartId}" class="btn btn-secondary" role="button">이전</a>
			<a href="thankCustomer.jsp" class="btn btn-success" role="button">주문 완료</a>
			<a href="checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
			
		</div>
	</div>
<!-- bottom 인클루드 시작 -->
	<jsp:include page="/ch03/bottom.jsp" />
<!-- bottom 인클루드 끝 -->	
</body>
</html>










					