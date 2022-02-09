<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Property 연계</title>
</head>
<body>
	<div align="center">
	<h2>Properties 사용</h2>
	<hr />
	
		tel : ${prop.get('tel') } <br>
		url : ${prop.get('url') } <br>
		user : ${prop.get('user') } <br>
		password :${prop.get('passwd') } <br>
	
	<h2>Admin 사용</h2>
	<hr />
		관리자 ID : ${prop.get('adminID')} <Br>
		OPT 인증번호 : ${opt } <Br>
	
	</div>


</body>
</html>