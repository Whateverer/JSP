<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Security</title>
</head>
<body>
	<!-- 폼 기반 인증처리를 위해 j_security_check을 사용 -->
	<form name="loginForm" action="j_security_check" 
		method="post">
		<p>사용자명 : <input type="text" name="j_username"></p>
		<p>비밀번호 : <input type="password" name="j_password"></p>
		<p><input type="submit" value="전송"></p>
	</form>
</body>
</html>