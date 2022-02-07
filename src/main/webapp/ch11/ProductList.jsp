<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ProductList</title>
</head>
<body>
	<div align="center">
		<h2>상품 목록</h2>
		<hr />
		<form action="ProductSel.jsp" method="post">
			<jsp:useBean id="product" class="jspbook.ch10.Product" scope="session"></jsp:useBean>
			<select name="sel">

				<c:forEach var="i" items="${product.getProductList() }">
				<option>${i }</option>
				</c:forEach>
								
			</select> <input type="submit" value="선택" />
		</form>
	</div>
</body>
</html>