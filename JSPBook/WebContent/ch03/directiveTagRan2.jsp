<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 디렉티브</title>
</head>
<body>
<%=new Date()%>
<h1>page 디렉티브의 속성</h1>
<h3>language : 사용할 프로그래밍 언어(java)</h3>
<h3>
contentType : 
	* 생성할 문서의 유형(text/html)
	cf) text/xml, text/plain, application/msword
	* charset : UTF-8, EUC-KR, ISO-8859-1
</h3>
<h3>pageEncoding : 문자 인코딩을 설정(UTF-8)</h3>
<h3>import : 사용할 자바 클래스를 설정</h3>
<h3>session : 세션 사용 여부 설정(기본 true, 생략 가능)</h3>
<h3>buffer : 출력 버퍼 크기를 설정(기본 8KB)</h3>
<h3>autoFlush : 출력 버퍼의 동작 제어 설정(기본 true)</h3>
<h3>errorPage : 오류 발생 시 보여줄 오류(404-page not found, 500(개발오류)) 페이지 설정(jsp)</h3>
<h3>isErrorPage : 오류 페이지 여부 설정(기본 false->수동으로 true 설정)</h3>

</body>
</html>