package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//하나의 클래스에 같은 이름의 메소드를 여러번 사용 가능?
//오버로딩
public class JdbcUtil {
	public static void close(ResultSet rs) {
		if(rs!=null)try {rs.close();}catch(SQLException ex) {}
	}
	public static void close(Statement stmt) {
		if(stmt!=null)try {stmt.close();}catch(SQLException ex) {}
	}
	public static void close(Connection conn) {
		if(conn!=null)try {conn.close();}catch(SQLException ex) {}
	}
	public static void close(PreparedStatement pstmt) {
		if(pstmt!=null)try {pstmt.close();}catch(SQLException ex) {}
	}
	public static void rollback(Connection conn) {
		if(conn!=null)try {conn.rollback();}catch(SQLException ex) {}
	}
	
}



