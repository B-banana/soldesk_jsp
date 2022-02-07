<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>c:set</title>
</head>
<body>
<h3>&lt; c:set &gt;</h3>
<c:set value="Hello world" var="msg"></c:set>
msg : ${msg }<br>
msg : <%= pageContext.getAttribute("msg") %><br>
<hr />
<!-- Member() 호출 -->
<c:set target="${member }" property="email" value="changed@sol.net"></c:set>
Member name : ${member.name }<br>
Member email : ${member.email }
</body>
</html>