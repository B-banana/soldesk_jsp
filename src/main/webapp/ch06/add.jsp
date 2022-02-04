<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add.jsp</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");

	// 선택된 상품 가져오기
	String productname = request.getParameter("product");

	// 세션 영역에 productlist라는 이름의 ArrayList를 생성
	ArrayList<String> list = (ArrayList) session.getAttribute("productlist");

	// 만약 null이라면 새로운 객체 생성
	if (list == null) {
		list = new ArrayList<String>();
		session.setAttribute("productlist", list);
	} //list 객체 생성

	//list
	list.add(productname);
	%>

	<script>
		alert("<%=productname%>가 추가되었습니다.");
		history.go(-1);
	</script>

</body>
</html>

<!-- 
history.go(0); 현재페이지 리로드
history.go(-1); 이전 = (history.back();)
history.go(-2); 2단계 이전 -->
