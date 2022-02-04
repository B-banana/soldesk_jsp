<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>세션 로그인</h1>
		<%
		//리퀘스트
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

		//세션 
		session.setAttribute("id", id);
		session.setAttribute("pass", pass);
		session.setAttribute("name", "TOM");

		session.setMaxInactiveInterval(60); //세션 유지 시간, 1분
		%>

		<hr />
		<!-- my page 구현시 사용, 아래에서 바로 메인으로 넘겨줄거기 떄문에 이번에는 필요 없음 -->
		<%-- <h2><%=id%>님 반갑습니다.</h2> --%>

		<%-- <a href="SessionUse.jsp?id=<%=id%>&pass=<%=pass%>">My page</a> --%>	<!-- 세션미사용 -->
		<!-- <a href="SessionUse.jsp">My page</a> 세션사용 -->

		<!-- 세션 로그인 확인 -->
		<%
		response.sendRedirect("sessionMain.jsp");
		%>

	</center>
</body>
</html>