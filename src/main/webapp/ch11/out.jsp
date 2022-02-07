<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>c:out</title>
</head>
<body bgcolor="#fff">
	<center>
		<h3>&lt; c:out &gt;</h3>
		<table border="1" cellpadding="5" cellspacing="0" align="center">
			<c:forEach var="member" items="${members }">
				<tr>
					<td>${member.name }</td>
					<td>
						<!-- escapeXml="false" : &lt, &gt, &nbsp 등의 태그를 문자가 아닌 기능으로 인지함-->
						<c:out value="${member.email }" escapeXml="false">	<!-- 이와같은 기능속성을 사용하기 위해 c:out 을 사용함 -->
							<font color="red">email 없음</font>
						</c:out>
					</td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>