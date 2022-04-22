<%@page import="dto.Product"%>
<%@page import="ch04.com.dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
href="<%=request.getContextPath()%>/css/bootstrap.min.css" />
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart(){
		//확인 : true, 취소 : false
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){ //확인
			document.addForm.submit();
		}else{ //취소
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
<%-- <jsp:useBean id="productDAO" class="ch04.com.dao.ProductRepository" /> --%>
<%
	ProductRepository productDAO = ProductRepository.getInstance();
%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
	//product.jsp?id=P1234
	String id = request.getParameter("id");
// 	out.print("id : " + id + "<br />");
	
// 	ProductRepository productDAO = new ProductRepository();
	Product product = productDAO.getProductById(id);
	%>
	<c:set var="product" value="<%=product%>" />
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="/upload/${product.filename}" style="width:100%;" />
			</div>
			<div class="col-md-6">
				<h3>${product.pname}</h3>
				<p>${product.description}</p>
				<p>
					<b>상품코드 : </b>
					<span class="badge badge-danger">${product.productId}</span>
				</p>
				<p><b>제조사</b> : ${product.manufacturer}</p>
				<p><b>분류</b> : ${product.category}</p>
				<p><b>제고 수</b> : ${product.unitsInStock}</p>
				<h4>${product.uniPrice}원</h4>
				<p>
					<form name="addForm" method="post" 
					action="addCart.jsp?id=${product.productId}">
						<a href="#" class="btn btn-info" onclick="addToCart()">
						상품 주문 &raquo;</a>
						<a href="cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
						<a href="products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
					</form>
				</p>
			</div>
		</div>
	</div>
</body>
</html>








