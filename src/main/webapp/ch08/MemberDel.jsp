<%@page import="model.MemberDBVo"%>
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

	String id = request.getParameter("id");

	MemberDAO mdao = new MemberDAO();
	MemberDBVo mbean = mdao.oneSelectMember(id);
	%>
	<center>
		<h1>회원 정보 삭제</h1>
		<form action="MemberDelProc.jsp" method="post">
			<table width="400" border="1">
				<tr height="50">
					<td align="center" width="150">아이디</td>
					<td align="center" width="250"><%=mbean.getId()%></td>
				</tr>

				<tr height="50">
					<td align="center" width="150">비밀번호</td>
					<td align="center" width="250"><input type="password" name="pass" /></td>
				</tr>

				<tr height="50">
					<td align="center" colspan="2">
					<input type="hidden" name="id" value="<%=id %>"/>
						<button type="submit">계정 삭제</button>
						<button type="button" onclick="location.href='memberList.jsp'">취소/목록으로</button>
					</td>
				</tr>

			</table>
		</form>
	</center>
</body>
</html>