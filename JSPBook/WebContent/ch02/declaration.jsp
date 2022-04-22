<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
<%!
	String a = "Hello, Java Server Pages";
	String getString(){
		return a;
	}
%>
<h2><%=getString()%></h2>
</body>
</html>