<%@page import="model.MemberDAO"%>
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
	request.setCharacterEncoding("UTF-8");
	%>

	<jsp:useBean id="mbean" class="model.MemberDBVo">
		<jsp:setProperty name="mbean" property="*" />
	</jsp:useBean>
	<%
	MemberDAO mdao = new MemberDAO();

	// 방법 1
	String pass = mdao.getPass(mbean.getId());

	// 방법 2
	String id = request.getParameter("id");
	//String pass = mdao.getPass(id);

	if (mbean.getPass().equals(pass)) {
		mdao.deleteMember(id);
		response.sendRedirect("memberList.jsp");
	} else {
	%>
	<script type="text/javascript">
		alert("패스워드가 일치하지 않습니다.");
		history.go(-1);
	</script>
	<%
	}
	%>
</body>
</html>