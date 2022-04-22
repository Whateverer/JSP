<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
현재 시간 : <%=Calendar.getInstance().getTime()%>

<%
//날짜 형식을 String으로 혹은 String을 날짜 형식으로 변환하기 위한 포맷형식이다.
DateFormat format = new SimpleDateFormat("yyyy/MM/dd");
//Calendar 형식에서 날짜를 가져온다. 특이점은 Calendar가 singleton형식이다.
//Date 값을 가져와서 String으로 변환한다.
String datestr = format.format(Calendar.getInstance().getTime());
out.print(datestr + "<br />");
//String 형식을 Date형식으로 변환한다.
Date date = format.parse("2021/04/30");
out.print(date+"<br />");
%>
</body>
</html>