<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h2>include ์ก์ ํ๊ทธ</h2>
	<jsp:include page="includeAction04.jsp" flush="false">
		<jsp:param  name="date" value="<%=new Date()%>" />
	</jsp:include>
	<p>--------------</p>
</body>
</html>