<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	//쿠키 생성 문법?
	//Cookie 객체명 = new Cookie(name,value);
	Cookie cartId = new Cookie("Shipping_cartId", 
			URLEncoder.encode(request.getParameter("cartId"), "UTF-8"));
	Cookie name = new Cookie("Shipping_name", 
			URLEncoder.encode(request.getParameter("name"), "UTF-8"));
	Cookie shippingDate = new Cookie("Shipping_shippingDate", 
			URLEncoder.encode(request.getParameter("shippingDate"), "UTF-8"));
	Cookie country = new Cookie("Shipping_country", 
			URLEncoder.encode(request.getParameter("country"), "UTF-8"));
	Cookie zipCode = new Cookie("Shipping_zipCode", 
			URLEncoder.encode(request.getParameter("zipCode"), "UTF-8"));
	Cookie addressName = new Cookie("Shipping_addressName", 
			URLEncoder.encode(request.getParameter("addressName"), "UTF-8"));
	
	cartId.setMaxAge(24*60*60);
	name.setMaxAge(24*60*60);
	shippingDate.setMaxAge(24*60*60);
	country.setMaxAge(24*60*60);
	zipCode.setMaxAge(24*60*60);
	addressName.setMaxAge(24*60*60);
	//쿠키를 등록하기 위해 response객체를 통해 클라이언트(크롬)에게 전달해줌
	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(country);
	response.addCookie(zipCode);
	response.addCookie(addressName);
	
	response.sendRedirect("orderConfirmation.jsp");
%>