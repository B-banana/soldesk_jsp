<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>saleProduct</title>
</head>
<%
// 한글 처리
request.setCharacterEncoding("UTF-8");

// session영역에서 username 저장하기
String username = request.getParameter("username");

session.setAttribute("username", username);
%>

<body>
	<div align="center">
		<h2>상품선택</h2>
		<hr />
		<%=session.getAttribute("username")%>
		님 환영합니다.
		<hr />
		<form action="add.jsp" method="post">
			<select name="product">
				<option>명량 떡볶이</option>
				<option>먹태</option>
				<option>반건조 오징어</option>
				<option>플레이트1</option>
				<option>곱창 전골</option>
			</select>
			<p/>
			<input type="submit" value="장바구니 추가" />
		</form>
		<a href="checkOut.jsp">장바구니 결제</a>
	</div>
</body>
</html>