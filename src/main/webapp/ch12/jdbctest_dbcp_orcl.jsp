<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");
%>
<%
Connection conn = null;
PreparedStatement pstmt = null;

try {
	//new InitialContext()로 Context의 객체를 생성
	Context initContext = new InitialContext();

	//JNDI == java/comp/env로 Context에 접근
	Context envContext = (Context) initContext.lookup("java:/comp/env");

	//web.xml에 등록된 JNDI(즉 jdbc.xe)로 소스 설정
	DataSource ds = (DataSource)envContext.lookup("jdbc/xe");
	
	conn = ds.getConnection();

	if (request.getParameter("username") != null) {
		String sql = "insert into jdbc_test values(?,?)";

		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));
		pstmt.executeUpdate();

	}

} catch (Exception e) {
	e.printStackTrace();
}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DBCP</title>
</head>
<body>
	<center>
		<h2>jdbctest_dbcp_orcl</h2>
		<hr />
		<form action="jdbctest_dbcp_orcl.jsp" method="post">
			등록 이름 : <input type="text" name="username" />
			등록 메일 : <input type="email" name="email" size=20 /> 
			<input type="submit" value="등록" />
		</form>
		<hr />
		##등록 회원 <p />
		<%
		try {
			String sql = "select username, email from jdbc_test";
			pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			
			int i = 1;

			while(rs.next()) {
				out.println(i + " : " + rs.getString(1) + ", " + rs.getString(2) + "<br>");
				i++;
			}
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		%>
	</center>
</body>
</html>