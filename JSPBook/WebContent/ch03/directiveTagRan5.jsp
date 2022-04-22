<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.io.*, java.lang.*" %><!-- 복수로 사용 가능 -->
<%@ page session="true" %><!-- 생략하던 쓰던 둘다 같음 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive Tag</title>
</head>
<body>
	Today is : <%=new Date() %>
<hr />
page 디렉티브의 import 속성 : JSP 페이지에서 사용할 자바 클래스 설정
JSP 컨테이너가 자동으로 java.io.*와 java.lang.* 패키지를 가져와줌
* page session="true"<br />
page 디렉티브의 session 속성 : 현재 JSP 페이지의 HTTP 세션 사용 여부 설정<br />
기본 값은 true(세션을 자동으로 사용함)이고, 생략 가능<br /> <!-- 아주 좋은 기능, 꼭 써야한다. --> 
</body>
</html>