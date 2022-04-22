<%@page import="dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%	
	//세션의 고유 아이디를 가져옴
	String cartId = session.getId();
	//해당 bookcode를 가져옴
	String code = request.getParameter("code");
	//장바구니에 담긴 list를 가져옴
	ArrayList<Book> list = (ArrayList<Book>)session.getAttribute("cartlist");
	//삭제할 객체를 정해줌
	Book delBook = new Book();
	//장바구니에 담긴 list중 bookCode가 code와 같은 것을 지움.
	for(Book book : list){
		if(book.getBookCode().equals(code)){
			delBook = book;
		}
	}
	list.remove(delBook);
	//세션에 저장
	session.setAttribute("cartlist", list);
	//다시 보냄
	response.sendRedirect("cart.jsp?cartId=" + cartId);
%>