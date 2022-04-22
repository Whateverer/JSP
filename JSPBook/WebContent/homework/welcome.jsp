<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
<%
	String userId = (String)session.getAttribute("userID");
	if(userId == null){
		response.sendRedirect("session_out.jsp");
		return;
	}else{
		
	}
%>
<p><%=userId %>님 반갑습니다.</p>
<p><a href="session_out.jsp">로그아웃</a></p>
</body>
</html>