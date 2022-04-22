<%@page import="dto.Book"%>
<%@page import="java.util.List"%>
<%@page import="ch04.com.dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<title>도서 목록</title>
<style>
.bookimg{
	width: 300px;
	
}
</style>
</head>
<body>
<%
	BookRepository bookDAO = BookRepository.getInstance();
%>
<!-- top.jsp 인클루드 시작 -->
	<jsp:include page="/ch03/top.jsp" />
<!-- top.jsp 인클루드 끝 -->
<!-- jumbotron 스타일 시작 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
<!-- jumbotron 스타일 끝 -->
	<% 
		List<Book> listOfBooks = bookDAO.getAllBooks();
	%>
	<div class="container">
		<div class="row" align="center">
		<!-- 상품 반복 시작 -->
		<%
			for(int i=0; i<listOfBooks.size();i++){
				Book book = listOfBooks.get(i);
		%>	
			<div class="col-md-5" align="left">
				<img src="/upload/<%=book.getBookImg()%>" class="bookimg">
			</div>
			<div class="col-md-6" align="left">
				<h3><%=book.getBookName() %></h3>
				<p><%=book.getDetail()%></p>
				<p><%=book.getPrice() %>원</p>
				<p><a href="book.jsp?code=<%=book.getBookCode()%>" class="btn btn-secondary"
					role="button">상세정보&raquo;</a></p>
			</div>
		<%
			}//end for
		%>	
		</div>	
	</div>
<!-- bottom.jsp 인클루드 시작 -->
	<jsp:include page="/ch03/bottom.jsp" />
<!-- bottom.jsp 인클루드 끝 -->
</body>
</html>






