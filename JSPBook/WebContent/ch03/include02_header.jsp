<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%!
	int pageCount = 23;
	void addCount(){
		pageCount++;
	}
%>
<%
	addCount();
%>
<p>하영이의 나이는 <%=pageCount%>살 입니다.</p>