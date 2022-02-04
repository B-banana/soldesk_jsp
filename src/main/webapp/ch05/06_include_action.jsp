<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Include Action</title>
</head>
<body>
<h2>06_include_action.jsp에서 footer.jsp 호출</h2>
<p/>
06_include_action.jsp에서 OUTPUT되는 메시지 입니다.<br>
<hr />
<jsp:include page="footer.jsp">
<jsp:param name="email" value="516smile@naver.com"/>
<jsp:param name="tel" value="010-1156-4859" />
</jsp:include>
<h2>06_include_action.jsp 종료됩니다.</h2>

</body>
</html>