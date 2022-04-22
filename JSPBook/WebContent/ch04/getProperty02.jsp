<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
<!-- 
useBean 액션 태그의 id 속성값(person)을 통해
자바빈즈 Person의 프로퍼티 id와 name에 값을 저장하고 
자바빈즈 Person의 프로퍼티 id와 name에 값을 가져와 화면출력함
-->
	<jsp:useBean id="person" class="ch04.com.dao.Person" />
	<jsp:setProperty name="person" property="id" value="20182005" />
	<jsp:setProperty name="person" property="name" value="이선우" />
	<p>아이디 : <jsp:getProperty property="person" name="id"/></p>
	<p>이 름 : <jsp:getProperty property="person" name="name"/></p>
</body>
</html>