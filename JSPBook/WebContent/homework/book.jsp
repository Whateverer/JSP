<%@page import="dto.Book"%>
<%@page import="ch04.com.dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css" />
<title>도서 정보</title>
<style>
img{
	width : 300px;
}

</style>
<script type="text/javascript">
	function addCart(){
		//확인 : ture, 취소 : false
		if(confirm("장바구니에 추가하시겠습니까?")){//확인
			document.addForm.submit();
		}else{ //취소
			document.addForm.reset();
		}
		
	}
</script>
</head>
<body>
<%
	BookRepository bookDao = BookRepository.getInstance();
%>
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">도서 정보</h3>
		</div>
	</div>
	<%
	//book.jsp?code=B1
	String bookCode = request.getParameter("code");
	//out.print("code :" + code + "<br>");
	
	Book book = bookDao.getBookByCode(bookCode);
	%>
	<c:set var="book" value="<%=book%>" />
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="/upload/${book.bookImg}" style="width:100%;">
			</div>
			<div class="col-md-6">
				<h3>${book.bookName}</h3>
				<p>${book.detail}</p>
				<p>
					<b>책 코드 : </b>
					<span class="badge badge-danger">${book.bookCode}</span>
				</p>
				<p><b>출판사</b> : ${book.publisher}</p>
				<p><b>분류</b> : ${book.category}</p>
				<p><b>재고 수</b> : ${book.uniStock}</p>
				<h4>${book.price}원</h4>
				<p>
					<form name="addForm" method="post"
						action="addCart.jsp?code=${book.bookCode}">
						<a href="#" class="btn btn-info" onclick="addCart()">도서 주문&raquo;</a>
						<a href="cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
						<a href="books.jsp" class="btn btn-secondary">도서 목록&raquo;</a>
					</form>
				</p>
			</div>
		</div>
	</div>
	
</body>
</html>










