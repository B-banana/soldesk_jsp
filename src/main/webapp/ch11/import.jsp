<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>c:import</title>
</head>
<body bgcolor="#ffc">
	<h3>&lt; c:import &gt;</h3>
	import를 이용하여 포함
	<c:import url="set.jsp" var="myurl"></c:import>
	<c:out value="${myurl }" escapeXml="false"></c:out>
	<hr />
	<center>
	<h3>import : www.naver.com</h3>
	</center>
	<c:import url="https://www.naver.com" var="myurl2"></c:import>
	<c:out value="${myurl2 }" escapeXml="false"></c:out>
</body>
</html>