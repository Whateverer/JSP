<%@page import="dto.Book"%>
<%@page import="ch04.com.dao.BookRepository"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>도서 업로드</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	//웹 어플리케이션상의 절대 경로
	String realFolder
	= "D:\\A_TeachingMaterial\\6.JspSpring\\workspace\\JSPBook\\WebContent\\upload";
	String filename = "";
	//최대 업로드될 파일의 크기 5MB
	int maxSize = 5*1024*1024;
	//인코딩 유형
	String encType = "UTF-8";
	
	//cos.jar 라이브러리의 핵심 클래스
	MultipartRequest multi = new MultipartRequest(
			request, realFolder, 
			maxSize, encType,
			new DefaultFileRenamePolicy()
			);
	
	//폼 데이터 처리
	String bookCode = multi.getParameter("bookCode"); // 도서코드
	String bookName = multi.getParameter("bookName"); // 도서명
		String price = multi.getParameter("price"); // 가격
	String writer = multi.getParameter("writer"); // 저자
	String publisher = multi.getParameter("publisher"); // 출판사
	String pdate = multi.getParameter("pdate"); // 출판일
		String pages = multi.getParameter("pages"); // 총 페이지 수
	String detail = multi.getParameter("detail"); // 상세정보
	String category = multi.getParameter("category");//분류
		String uniStock = multi.getParameter("uniStock"); // 재고
	String condition = multi.getParameter("condition"); // 상태
	String bookImg = multi.getParameter("bookImg");
	
	//price :""
	Integer bprice;
	if(price.isEmpty()){
		bprice = 0;
	}else{
		bprice = Integer.valueOf(price);
	}
	
	long stock;
	if(uniStock.isEmpty()){
		stock = 0;
	}else{
		stock = Long.valueOf(uniStock);
	}
	
	Integer bpage;
	if(pages.isEmpty()){
		bpage = 0;
	}else{
		bpage = Integer.valueOf(pages);
	}
	
	//파일 객체 처리
	Enumeration files = multi.getFileNames();
	
	String fname = (String)files.nextElement();
	
	String fileName = multi.getFilesystemName(fname);
	
	out.print("fname : " + fname + ", fileName : " + fileName);
	
	//싱글톤 패턴
	BookRepository dao = BookRepository.getInstance();
	
	Book newBook = new Book();
	newBook.setBookCode(bookCode);
	newBook.setBookName(bookName);
	newBook.setPrice(bprice);
	newBook.setWriter(writer);
	newBook.setPublisher(publisher);
	newBook.setPdate(pdate);
	newBook.setPages(bpage);
	newBook.setDetail(detail);
	newBook.setCategory(category);
	newBook.setUniStock((int)stock);
	newBook.setCondition(condition);
	//파일 객체의 파일명
	newBook.setBookImg(fileName);
	dao.addBook(newBook);
	
	//상품 목록으로 리다이렉트
	response.sendRedirect("books.jsp");
%>	
</body>
</html>













