<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>
<!-- 디렉티브 : include, page, taglib -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 버젼체크 -->
<html>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
</head>
<body>
	<div align="center">
		<h2>HelloWorld</h2>
		<hr />
		현재 날짜와 시간 :
		<%=new java.util.Date()%> <!-- <%= %>화면 표현식. 화면에 출력을 해줌. -->
	</div>
</body>
</html>