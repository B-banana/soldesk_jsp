<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>for~</title>
</head>
<body>
	<h3>&lt; c:for~ &gt;</h3>
	<c:forEach var="i" items="${members }" begin="0" varStatus="status" end="5">
	current : ${status.current }<br> <!-- 현재 아이템의 정보 -->
	first : ${status.first }<br> <!-- 현재 루프가 첫번째 데이터냐? -->
	last : ${status.last }<br> <!-- 현재 루프가 마지막 데이터냐? -->
	begin : ${status.begin } <br> <!-- 시작값 -->
	end : ${status.end } <br> <!-- 끝값 -->
	step : ${status.step } <br> <!-- 증가값 -->
	index : ${status.index }<br> <!-- 순서값 -->
	count : ${status.count }<br> <!-- 1부터 순서 -->
	
	name : ${i.name }<br>
	email : ${i.email }<br>
	<hr />
	</c:forEach>
	
	<c:forTokens var="sel" items="홍길동, 010-1234-5678, 서울" delims=",">
		${sel }<br>
	</c:forTokens>
	<hr />
	<c:forTokens var="name" items="고양이, 호랑이, 강아지" delims=",">
		${name }<br>
	</c:forTokens>	
	<hr />
	<fmt:formatNumber value="3.141592" pattern="#.00"></fmt:formatNumber>

</body>
</html>