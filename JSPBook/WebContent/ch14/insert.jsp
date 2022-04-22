<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="dto.Mem"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");

	String memberid = request.getParameter("memberid");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	out.print(memberid + ", " + password + ", " 
		+ name + ", " + email);
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	//물음표 사용
	PreparedStatement pstmt = null;
	
	int cnt = 0;
	try{
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbUser = "jspexam";
		String dbPass = "java";
		String sql = "INSERT INTO MEMBER "+
			 "	VALUES(?,?,?,?)";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memberid);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, email);
		
		cnt = pstmt.executeUpdate(sql);
	}catch(SQLException ex){
		
	}finally{
		//6. 사용한 Statement 객체 종료
		if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
		//7. 커넥션 객체 종료
		if(conn!=null)try{conn.close();}catch(SQLException ex){}
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<title>입력</title>
</head>
<body>
	MEMBER 테이블에 새로운 레코드를 입력했습니다.
</body>
</html>