<%@page import="jspbook.control.MemberDTO"%>
<%@page import="jspbook.control.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");

String email = request.getParameter("email");
MemberDAO mdao = new MemberDAO();
MemberDTO bean = mdao.oneSelectMember(email);

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberInfo</title>
</head>
<body>
<center>
<h1>회원정보</h1>
<table width="400" border="1">
<tr height="40">
<td width="150" bgcolor="powderblue">아이디</td>
<td width="250" bgcolor="Moccasin"><%=bean.getId() %></td>
</tr>

<tr height="40">
<td width="150" bgcolor="powderblue">이메일</td>
<td width="250" bgcolor="Moccasin"><%=bean.getEmail() %></td>
</tr>

<tr height="40">
<td width="150" bgcolor="powderblue">전화번호</td>
<td width="250" bgcolor="Moccasin"><%=bean.getPhone() %></td>
</tr>

<tr height="40">
<td width="150" bgcolor="powderblue">취미</td>
<td width="250" bgcolor="Moccasin"><%=bean.getHobby() %></td>
</tr>

<tr height="40">
<td width="150" bgcolor="powderblue">직업</td>
<td width="250" bgcolor="Moccasin"><%=bean.getJob() %></td>

<tr height="40">
<td width="150" bgcolor="powderblue">정보</td>
<td width="250" bgcolor="Moccasin"><%=bean.getInfo() %></td>
</tr>

<tr height="40">
<td align="center" colspan="2" bgcolor="skyblue">
<input type="button" value="수정" onclick="location.href='MemberUpdate.jsp?id=<%=bean.getId()%>'">
<input type="button" value="삭제" onclick="location.href='MemberDel.jsp?id=<%=bean.getId()%>'"/>
<input type="button" value="목록보기" onclick="location.href='memberList.jsp'"/>
<input type="button" value="회원가입" onclick="location.href='MemberDBJoinForm.jsp'"/>
</td>

</tr>

</table>


</center>


</body>
</html>