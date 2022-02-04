<%@page import="jspbook.ch07.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="login" class="jspbook.ch07.LoginBean" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="login"/>

<div align="center">
<h2>로그인</h2>
<hr />
<%

if (!login.checkUser()) {
	out.println("로그인 실패");
} else {
	out.println("로그인 성공!");
}

%>
<hr />
사용자 아이디 : <jsp:getProperty property="userid" name="login"/><br>
사용자 패스워드 : <jsp:getProperty property="password" name="login"/>

</div>
</body>
</html>