<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="MyErrorPage.jsp" %><!-- 에러가 났을 때 이동하는 페이지 -->
<!DOCTYPE html>
<html>
<head>
<title>Directive Tag</title>
</head>
<body>

<%
	String str = null;
	//오류 발생 -> page 디렉티브의 errorPage 속성의 값으로 MyErrorPage.jsp URL로 이동
	out.print(str.toString());
%>
</body>
</html>

