<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
	</head>
	<body>
		<table>
			<tr class="label">
				<td> 아이디
				<td> 비밀번호
				<td> 이름
				<td> 가입일자
				<td> 주소
				<td> 전화번호
			<%
				Connection conn = null;
				PreparedStatement pstmt=null;
				ResultSet rs = null;
				
				try {
					// jsp 페이지 커넥션 풀 사용
					Context initCtx = new InitialContext();
					Context envCtx = (Context) initCtx.lookup("java:comp/env");
					DataSource ds = (DataSource) envCtx.lookup("jdbc/jsptest");
					conn = ds.getConnection();
					
					/* String jdbcUrl="jdbc:mysql://localhost:3306/jsptest";
					String dbId="jspid";
					String dbPass="jsppass";
					
					Class.forName("com.mysql.jdbc.Driver");
					conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass); */
					
					String sql = "select * from member";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					while(rs.next()){
						String id = rs.getString("id");
						String passwd = rs.getString("passwd");
						String name = rs.getString("name");
						Timestamp register = rs.getTimestamp("reg_date");
						String address = rs.getString("address");
						String tel = rs.getString("tel");
			%>
					<tr>
						<td><%=id %>
						<td><%=passwd %>
						<td><%=name %>
						<td><%=register.toString() %>
						<td><%=address %>
						<td><%=tel %>
			<%		}
				} catch(Exception e){
					e.printStackTrace();
				} finally {
					if(rs != null)
						try{rs.close();}catch(SQLException sqle){}
					if(pstmt != null)
						try{pstmt.close();}catch(SQLException sqle){}
					if(conn != null)
						try{conn.close();}catch(SQLException sqle){}
				}
			%>
		</table>
		<button type="button" onclick="location.href='index.jsp'">되돌아가기</button>
	</body>
</html>