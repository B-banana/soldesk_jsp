<%@page import="model.MemberDBVo"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberList</title>
</head>
<body>
	<center>
		<h2>전체 회원 정보 리스트</h2>
		<%
		MemberDAO mdao = new MemberDAO();
		Vector<MemberDBVo> v = mdao.allSelectMember();
		
		request.setAttribute("vec", v);	//EL, item 속성에서는 일반 변수는 사용 할 수 없음
		%>

		<table width="900" border="1">
			<tr height="40">
				<td width="120" align="center">아이디</td>
				<td width="120" align="center">이메일</td>
				<td width="120" align="center">전화번호</td>
				<td width="120" align="center">취미</td>
				<td width="120" align="center">직업정보</td>
			</tr>
<%-- 			<%
			for (int i = 0; i < v.size(); i++) {
				MemberDBVo bean = v.get(i);
			%> --%>
			
			<c:forEach var="bean" items="${vec }" > <!-- for(MemberDBVo bean : v) 확장 for문과 같음 -->

			<tr height="40">
				<td width="120" align="center"><a href="MemberInfo.jsp?id=${bean.id }">${bean.id }</a></td>
				<td width="120" align="center">${bean.email }</td>
				<td width="120" align="center">${bean.phone }</td>
				<td width="120" align="center">${bean.hobby }</td>
				<td width="120" align="center">${bean.job }</td>
			</tr>
			
			</c:forEach>
			
		</table>
	</center>
</body>
</html>