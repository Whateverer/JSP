<%@page import="guestbook.service.WriteMessageService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>방명록 메시지 남김</title>
</head>
<body>
<jsp:useBean id="guestBookMessage" class="dto.GuestbookMessage">
	<!-- request객체로 넘어온 모든 파라미터를 guestBookMessage 객체의 모든 멤버변수로 매핑하자 -->
	<jsp:setProperty name="guestBookMessage" property="*" />
</jsp:useBean>
${guestBookMessage.messageId}<br />
${guestBookMessage.guestName}<br />
${guestBookMessage.password}<br />
${guestBookMessage.message}<br />
<%
	WriteMessageService writeMessageService = 
			WriteMessageService.getInstance();
	writeMessageService.write(guestBookMessage);
%>
방명록에 메시지를 남겼습니다.<br />
<a href="list.jsp">[목록 보기]</a>
</body>
</html>







