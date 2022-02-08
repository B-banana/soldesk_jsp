<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>Property</h2>
<hr />

servletContext 초기설정 값 출력<br>
name : <%=getServletContext().getInitParameter("name3") %><br>
workspace : <%=getServletContext().getInitParameter("workspace") %><br>


</div>

</body>
</html>