<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
<!-- 다음을 해결해보자 -->
<!-- 스크립트릿 -->
<%!
	String makeItLower(String data){
		return data.toLowerCase();
	}
%>
<!-- 선언부 : 변수, 메소드 -->
<%
	out.print(makeItLower("Hello 허민정 슈퍼개발자!"));
%>
</body>
</html>