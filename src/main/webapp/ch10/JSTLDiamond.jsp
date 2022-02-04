<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Diamond</title>
</head>
<body>

	<c:forEach var="i" begin="1" end="5">
		<c:forEach begin="1" end="${5 - i }" >
		&nbsp;
		</c:forEach>
		<c:forEach begin="1" end="${2 * (i-1) + 1 }" >
		*
		</c:forEach>
		<br>
	</c:forEach>

</body>
</html>