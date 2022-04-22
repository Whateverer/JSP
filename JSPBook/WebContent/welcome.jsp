<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./welcome.jsp">Home</a>
			</div>
		</div>
	</nav>
<%!
	String greeting = "Welcome to 유진이의 Shopping Mall";
	String tagline = "Welcome to 유진이의 Market!";
%>	
<div class="jumbotron">
	<div class="container">
		<h3><%=tagline %></h3>
	</div>
</div>
<footer class="container">
	<p>&copy; WebMarket</p>
</footer>	
</body>
</html>