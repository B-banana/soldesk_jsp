<%@page import="jspbook.ch07.AddrBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"></jsp:useBean>
<jsp:setProperty property="*" name="addr" />

<jsp:useBean id="am" class="jspbook.ch07.AddrManger" scope="application"></jsp:useBean>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<%
		String unname = request.getParameter("sname");
		am.getAddrlist().remove(am.getAddr(unname));
		%>		
		<a href="addr_list.jsp">목록보기</a>
	</div>
</body>
</html>