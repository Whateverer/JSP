<%@page import="guestbook.service.ServiceException"%>
<%@page import="dto.GuestbookMessage"%>
<%@page import="guestbook.service.DeleteMessageService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.setCharacterEncoding("UTF-8");

String messageId = request.getParameter("messageId");

GuestbookMessage message = new GuestbookMessage();
//int messageId 멤버변수(String messageId) 
message.setMessageId(Integer.parseInt(messageId));
//삭제 성공 여부(성공으로 세팅)
boolean result = true;
//삭제된 건수
int cnt = 0;
try{
	DeleteMessageService service = DeleteMessageService.getInstance();
	cnt = service.delete(message); //기본키만 셋팅되어져있는 상태
}catch(ServiceException ex){
	//진행하다가 문제가 생겨 ServiceException 객체가 발생되면  result를 false로 변경
	//실패 처리
	result = false;	
}
%>
<!DOCTYPE html>
<html>
<head>
<title>방명록 메시지 삭제</title>
</head>
<body>
<%
if(result){ //result : true일 때 삭제가 잘 된 경우
	if(cnt > 0){//삭제가 잘 된 경우
		out.print("메시지를 삭제하였습니다.");
	}else{//기본키에 해당되는 데이터가 없을 경우
		out.print("해당 데이터가 없습니다.");
	}
}else{ //result : false
	out.print("삭제가 되지 않았습니다.");
}
%>
<br>
<a href="list.jsp">[목록 보기]</a>
</body>
</html>