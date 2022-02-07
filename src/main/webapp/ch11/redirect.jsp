<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Redirect</title>
</head>
<body bgcolor="#ffc">
<h3>c:redirect -> 출력되나요? </h3>
<c:redirect url="/ch11/choose.jsp">
	<c:param name="sel">c</c:param>
</c:redirect>

</body>
</html>