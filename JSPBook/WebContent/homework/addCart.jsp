<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.Book"%>
<%@page import="ch04.com.dao.BookRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String code = request.getParameter("code");
	//id가 없거나 값이 없을 때
	if(code==null || code.trim().equals("")){
		response.sendRedirect("books.jsp");
		return;
	}
	
	//책 저장소 객체 생성
	BookRepository dao = BookRepository.getInstance();
	
	//책 코드에 해당하는 정보를 얻어와보자
	Book book = dao.getBookByCode(code);
	if(book==null){
		response.sendRedirect("/exceptionNoProductId.jsp");
	}
	
	//모든 책을 가져와보자
	List<Book> bookList = dao.getAllBooks();
	Book books = new Book();
	for(int i=0; i<bookList.size(); i++){
		//요청 파라미터 아이디의 상품이 존재하는지 검사
		books = bookList.get(i);
		if(books.getBookCode().equals(code)){
			break;
		}
	}
	
	//요청 파라미터 아이디의 상품을 담은 장바구니를 초기화
	//세션 : cartlist를 얻어와 ArrayList 객체에 저장
	ArrayList<Book> list = (ArrayList<Book>)session.getAttribute("cartlist");
	out.print("list의 크기 : " + list);
	//만약 cartlist라는 세션정보가 없다면 ArrayList객체를 생성하고 cartlist세션 생성
	if(list == null){
		list = new ArrayList<Book>();
		session.setAttribute("cartlist", list);
	}
	//list : 장바구니에 담긴 책 목록
	int cnt = 0;
	Book bookQnt = new Book();
	for(int i =0; i <list.size();i++){
		bookQnt = list.get(i);
		//요청 파라미터 아이디가 addCart.jsp?code=의 상품이 담긴 목록이 있다면 해당 상품수량 1 증가
		if(bookQnt.getBookCode().equals(code)){
			cnt++;
			int orderQuantity = bookQnt.getQuantity() + 1;
			bookQnt.setQuantity(orderQuantity);
		}
	}
	//요청 파라미터 아이디 addCart.jsp?code의 상품이 장바구니에 없다면 해당 상품 1로 처리
	if(cnt == 0){
		books.setQuantity(1);
		list.add(books);
	}
	
	response.sendRedirect("book.jsp?code="+code);
	
%>







