<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
<pre>
* include 액션 태그?
 - include 디렉티브 태그처럼 현재 JSP 페이지의 특정 영역에
      외부 파일(JSP, HTML, 서블릿 페이지)의 내용을 포함하는 태그
 - flush : 지금까지 출력 버퍼에 저장한 결과를 처리
   false(기본) : 웹브라우저에 출력안함. 버퍼 유지
   true		  : 웹브라우저에 출력.	   버퍼 비움.(헤더 정보도 같이 전송됨.)     
</pre>
<%
pageContext.setAttribute("id", "page001");
request.setAttribute("id", "request001");
session.setAttribute("id", "session001");
application.setAttribute("id", "application001");
%>
	<h3>이 파일은 includeAction01.jsp입니다</h3>
	<jsp:include page="includeAction02.jsp" flush="false" />
	<p>Java Servlet Page</p>
<h4><%=pageContext.getAttribute("id")%></h4>
<h4><%=request.getAttribute("id")%></h4>
<h4><%=session.getAttribute("id")%></h4>
<h4><%=application.getAttribute("id")%></h4>
</body>
</html>