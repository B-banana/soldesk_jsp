<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>07_forward_action.jsp에서 footer.jsp 호출</h2>
	<p />
	07_forward_action.jsp에서 모든 메세지는 출력 될 수 없습니다. <br>
	<%! int a = 10; %>
	<jsp:forward page="footer.jsp">
		<jsp:param value="516smile@naver.com" name="email" />
		<jsp:param value="010-1156-4859" name="tel" />
	</jsp:forward>
	<h2>고생하겼습니다. 수업이 종료됩니다.</h2>
</body>
</html>

