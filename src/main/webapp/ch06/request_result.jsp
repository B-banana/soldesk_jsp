<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
request.setCharacterEncoding("UTF-8");
%>
<title>Insert title here</title>
</head>
<style>
table {
	border-collapse: collapse;
}

tr, td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<div align="center">
		<h2>Request_Form</h2>
		<hr />
		<table width="400" cellpadding=5>
			<tr height="40" align="left">
				<td>이름</td>
				<td><%=request.getParameter("username")%></td>
			</tr>
			<tr height="40" align="left">
				<td>직업</td>
				<td><%=request.getParameter("job")%></td>
			</tr>
			<tr height="40" align="left">
				<td>관심분야</td>
				<td>
					<%
					String[] favorites = request.getParameterValues("favorite");
					for (String favorite : favorites) {
						out.println(favorite + " ");
					}
					%>
				</td>
			</tr>
		</table>
		<hr />
		<h2></h2>
		<table border=0>
		<tr>
		<td>
		1. 클라이언트 IP 주소 : <%= request.getRemoteAddr() %><br>
		2. 요청 메소드 : <%= request.getMethod() %><br>
		<%
		Cookie cookie[]= request.getCookies();
		%>
		3. <%= cookie[0].getName() %>에 설정된 쿠키값 : <%= cookie[0].getValue() %><br>
		4. 프로토콜 : <%= request.getProtocol() %>
		</td>
		
		</tr>
		
		</table>
		
		
		
		
	</div>
</body>
</html>