<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Join</title>
</head>
<body>
<center>
<h2>회원가입</h2>
<form action="MemberJoinProc.jsp" method="post">
<table width="500" border="1">
<tr height="40">
<td width="200" align="center">아이디</td>
<td width="400" align="center">
<input type="text" name="id" size="40" placeholder="id를 입력하세요"/>
</td>
</tr>
<tr height="40">
<td width="200" align="center">비밀번호</td>
<td width="400" align="center">
<input type="password" name="pass" size="40" placeholder="패스워드를 입력하세요"/>
</td>
</tr>
<tr height="40">
<td width="200" align="center">이메일</td>
<td width="400" align="center">
<input type="email" name="email" size="40" placeholder="email을 입력하세요"/>
</td>
</tr>
<tr height="40">
<td width="200" align="center">전화번호</td>
<td width="400" align="center">
<input type="phone" name="tel" size="40" placeholder="전화번호를 입력하세요"/>
</td>
</tr>
<tr height="40">
<td width="200" align="center">주소</td>
<td width="400" align="center">
<input type="text" name="address" size="40" placeholder="주소를 입력하세요"/>
</td>
</tr>
<tr height="40">
<td align="center" colspan="2">
<button type="submit">회원가입</button>
</td>
</tr>
</table>
</form>
</center>
</body>
</html>