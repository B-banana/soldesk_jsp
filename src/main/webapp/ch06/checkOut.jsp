<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>checkOut</title>
</head>
<body>
	<div align="center">
		<h2>결제시스템</h2>
		선택한 상품 목록
		<hr />
		<%
		ArrayList list = (ArrayList) session.getAttribute("productlist"); //ArrayList 호출

		if (list == null) { //선택된 상품 없이 결제할 경우
			out.println("선택된 상품이 없습니다.");
		} else {
			for (Object productname : list) {
				out.println(productname + "<br>");
			}
		}
		%>
	</div>
</body>
</html>