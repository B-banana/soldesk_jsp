<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// Model
	String dbid = "system";
	String dbpass = "system";

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	if (dbid.equals(id) && dbpass.equals(pass)) {
		session.setAttribute("id", id);
		response.sendRedirect("ResponseLogin.jsp"); 
/* 		response.sendRedirect("ResponseLogin.jsp?id="+id); //Get 방식 노출, 강제로 넘길때 */
	} else {
	%>

	<script type="text/javascript">
		alert("비밀번호가 일치하지 않습니다")
		history.go(-1); //이전페이지로 이동
	</script>

	<%
	}
	%>
</body>
</html>