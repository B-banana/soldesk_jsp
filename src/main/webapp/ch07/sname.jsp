<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	text-align: center;
}
</style>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"></jsp:useBean>
	<jsp:setProperty property="*" name="addr" />

	<jsp:useBean id="am" class="jspbook.ch07.AddrManger" scope="application"></jsp:useBean>
	<center>
		<h2>주소록</h2>
		<hr />
		<div>
			<table width="500" border="1">
				<tr>
					<td>이름</td>
					<td>전화번호</td>
					<td>이메일</td>
					<td>성별</td>
				</tr>
				<%
				AddrBean ab = am.getAddr(request.getParameter("sname"));
				%>
				<tr>
					<td><%=ab.getUsername()%></td>
					<td><%=ab.getTel()%></td>
					<td><%=ab.getEmail()%></td>
					<td><%=ab.getGender()%></td>
				</tr>
			</table>
			<hr />
			<a href="addr_list.jsp">목록보기</a>
		</div>
	</center>
</body>
</html>