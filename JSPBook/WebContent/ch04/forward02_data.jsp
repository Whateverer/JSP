<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
<!-- forward02_data.jsp?dan=5 -->
<%
String danStr = request.getParameter("dan");
//i : 단(5단)
int i = Integer.parseInt(danStr);
%>
<c:set var="i" value="<%=i%>" />
<c:forEach var="j" begin="1" end="9" step="1">
	${i}*${j}=${i*j}<br />
</c:forEach>
</body>
</html>