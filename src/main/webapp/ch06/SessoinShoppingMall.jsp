<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SessoinShoppingMall</title>
</head>
<body>
<%
String id = (String)session.getAttribute("id");
%>
<h2><%= id %>님 환영합니다.</h2>

세션 유지시간 : <%= session.getMaxInactiveInterval() %><br>


</body>
</html>