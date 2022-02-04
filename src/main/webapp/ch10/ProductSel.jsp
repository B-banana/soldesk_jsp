<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Sell</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

%>
<div align="center">
<h1>상품 옵션 선택 내역</h1>
1. 옵션 내역 : ${param.sel }<br>
2. item5의 가격 : ${product.num5 }<br>
3. num1 + num2 : ${product.num1 + product.num2 }


</div>


</body>
</html>