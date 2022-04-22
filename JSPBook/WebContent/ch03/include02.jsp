<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Directive Tag</title>
</head>
<body>
	<%@ include file="/ch03/include02_header.jsp" %>
	<p>다음달 하영이의 생일을 미리 축하합니다.</p>
	
<%
	for(int i=0; i<=9; i++){
		if(i%2==0){
			out.print(2 * i +"<br />");
		}
	}
%>	
	<%@ include file="/ch03/include02_footer.jsp" %>
</body>
</html>