<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Directive Tag</title>
</head>
<body>
<c:forEach var="i" begin="0" end="10" step="2">
	<c:out value="${i}"></c:out>
</c:forEach>
</body>
</html>