<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");

String username = request.getParameter("username");

if (username != null) {
	session.setAttribute("user", username);

} %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>twitter_list</title>
</head>
<body>
	<div align="center">
		<h3>My Simple Twitter</h3>
		<hr />
		<form action="tweet.jsp" method="post">

			<%=session.getAttribute("user")%>

			<input type="text" name="msg" /><br> <input type="submit"
				name="Tweet" />
		</form>
		<hr />

		<div align="left">
			<ul>
				<!-- 메세지가 생성되고 출력하는 구현부 -->
				<%
				ArrayList<String> msge = (ArrayList<String>) application.getAttribute("msge");

				if (msge != null) {
					for (String msg : msge) {
						out.println("<li>" + msg + "</li>");
					}
				}
				%>
			</ul>
		</div>
	</div>
</body>
</html>