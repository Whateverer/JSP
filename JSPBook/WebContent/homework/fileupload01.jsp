<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form name="frm" action="fileupload01_process.jsp" 
			enctype="multilpart/form-data">
		파 일 : <input type="file" value="찾아보기"><br>
		<input type="submit" value="파일 올리기">
	</form>
</body>
</html>