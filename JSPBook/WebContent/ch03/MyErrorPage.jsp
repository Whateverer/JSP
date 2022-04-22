<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!-- 에러페이지가 맞다고 나타내줌 - exception 기본객체 생성가능(왜 에러가 났는지 알고싶을때) -->
<!DOCTYPE html>
<html>
<head>
<title>Directive Tag</title><!-- 오류페이지 -->
</head>
<body>
<img src="/images/500.jpg" alt="500오류발생" title="500오류발생" />
	<!-- <h4>errorPage 디렉티브 태그</h4> 
	<h5>오류가 발생했습니다.</h5>
	* page 디렉티브의 isErrorPage 속성은 현재 JSP 페이지가 오류 페이지인지<br />
	여부를 설정하는 데 사용. 기본값은 false -->
<%
// exception.printStackTrace(new PrintWriter(out));
%>
</body>
</html>