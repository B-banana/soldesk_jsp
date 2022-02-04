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
<h1>회원정보 수정하기</h1>
<form action="MemberUpdateProc.jsp" method="post">
<table>
<tr height="40">
<td width="150" bgcolor="powderblue">아이디</td>
<td width="250" bgcolor="Moccasin"><%=mbean.getId() %></td>
</tr>

<tr height="40">
<td width="150" bgcolor="powderblue">이메일</td>
<td width="250" bgcolor="Moccasin"><input type="text" name="email" value="<%=mbean.getEmail() %>"/></td>
</tr>

<tr height="40">
<td width="150" bgcolor="powderblue">전화번호</td>
<td width="250" bgcolor="Moccasin"><input type="text" name="phone" value="<%=mbean.getPhone() %>"/></td>
</tr>

<tr height="40">
<td width="150" bgcolor="powderblue">직업정보</td>
<td width="250" bgcolor="Moccasin"><input type="text" name="job" value="<%=mbean.getJob() %>"/></td>
</tr>

<tr height="40">
<td width="150" bgcolor="powderblue">패스워드</td>
<td width="250" bgcolor="Moccasin"><input type="password" name="pass"/></td>
</tr>

<tr height="40">
<td align="center" colspan="2">
<input type="hidden" name="id" value="<%=id %>"/>
<input type="submit" value="수정" />
<input type="button" onclick="location.href='memberList.jsp'" value="전체회원목록" />
</td>
</tr>

</table>
</form>
</center>
</body>
</html>