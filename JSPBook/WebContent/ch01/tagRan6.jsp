<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>

다음처럼 화면에 표시해보자. 단, 스크립트릿으로만 해보자<br />
0
2
4
6
8
10<br>
<%
	for(int i=0; i <= 10; i++){
		//짝수의 경우에만 출력
		if(i%2==0){
			out.print(i + "<br>");
		}
	}
%>
</body>
</html>