<%@page import="model.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");

	String[] hobby = request.getParameterValues("hobby");
	
	String texthobby = "";
	
	for (int i = 0; i < hobby.length; i++) {
		texthobby += hobby[i] + " ";
	}
	
	%>
		 
	<jsp:useBean id="mbean" class="model.MemberDBVo">
	<jsp:setProperty property="*" name="mbean"/>	<!-- 매핑역할 -->
	</jsp:useBean>
	
	<%
	
	mbean.setHobby(texthobby);
	/*
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String pass = "1234";
	
	//DAO 활용시 에러방지를 위해 try문으로 구현
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, user, pass);	//DB접속 정보
		
		//쿼리를 스트링으로 처리
		String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
		
		//쿼리를 SQL문으로 변경
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		//?에 매핑
		pstmt.setString(1, mbean.getId());
		pstmt.setString(2, mbean.getPass());
		pstmt.setString(3, mbean.getPass2());
		pstmt.setString(4, mbean.getEmail());
		pstmt.setString(5, mbean.getGender());
		pstmt.setString(6, mbean.getAddress());
		pstmt.setString(7, mbean.getPhone());
		pstmt.setString(8, mbean.getHobby());
		pstmt.setString(9, mbean.getJob());
		pstmt.setString(10, mbean.getAge());
		pstmt.setString(11, mbean.getInfo());
		
		pstmt.executeUpdate();
		con.close();	//자원반납

	} catch(Exception e) {
		e.printStackTrace();
	}
	*/ /* DAO 작성으로 생략이 가능해짐 */
	
	MemberDAO mdao = new MemberDAO();
	mdao.insertMember(mbean);
	
	//페이지 이동
	response.sendRedirect("memberList.jsp");
	
	%>
	
	회원가입 입력 완료!
	 
</body>
</html>