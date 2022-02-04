<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Application</title>
</head>
<body>
<div align="center">
<h2>application 영역</h2>
<hr />
1. 서버정보 : <%= application.getServerInfo() %><br>
2. 서버 API 정보 : <%= application.getMajorVersion() + "." + application.getMinorVersion()%><br>
3. 08_application.jsp의 실제 경로 : <%= application.getRealPath("08_application.jsp") %><br>
<hr />
setAttribute로 username 변수에 길동이 저장<p>
<%
application.setAttribute("username", "길동이");
application.log("username = 길동이 ");
application.setAttribute("count", 0);
%>

<a href="application_result.jsp">확인하기</a>

</div>
</body>
</html>