<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberJoinProc</title>
<style type="text/css">
table {
	border-collapse: collapse;
}

tr, td {
	border: 1px solid black;
	height: 30px;
	padding: 5px;
}

td.item {
	text-align: center;
}
</style>
</head>
<body>
	<center>
		<h2>회원가입</h2>
		<%
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String pass2 = request.getParameter("pass2");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String[] hobbies = request.getParameterValues("hobby");
		String job = request.getParameter("job");
		String age = request.getParameter("age");
		String info = request.getParameter("info");

		if (!pass.equals(pass2)) {
		%>

		<script type="text/javascript">
			alert("비밀번호가 일치하지 않습니다")
			history.go(-1); //이전페이지로 이동
		</script>

		<%
		}
		%>

		<table width="500">
			<tr>
				<td width="200" class="item">아이디</td>
				<td width="300"><%=id%></td>
			</tr>
			<tr>
				<td width="200" class="item">패스워드</td>
				<td width="300"><%=pass%></td>
			</tr>
			<tr>
				<td width="200" class="item">패스워드확인</td>
				<td width="300"><%=pass2%></td>
			</tr>
			<tr>
				<td width="200" class="item">이메일</td>
				<td width="300"><%=email%></td>
			</tr>
			<tr>
				<td width="200" class="item">성별</td>
				<td width="300"><%=gender%></td>
			</tr>
			<tr>
				<td width="200" class="item">주소</td>
				<td width="300"><%=address%></td>
			</tr>
			<tr>
				<td width="200" class="item">전화번호</td>
				<td width="300"><%=phone%></td>
			</tr>
			<tr>
				<td width="200" class="item">당신의 관심분야</td>
				<td width="300">
					<%
					for (String hobby : hobbies) {
						out.println(hobby + " ");
					}
					%>
				</td>
			</tr>
			<tr>
				<td width="200" class="item">당신의 직업은</td>
				<td width="300"><%=job%></td>
			</tr>
			<tr>
				<td width="200" class="item">당신의 연령은</td>
				<td width="300"><%=age%></td>
			</tr>
			<tr>
				<td width="200" class="item">하고싶은 말</td>
				<td width="300"><%=info%></td>
			</tr>

		</table>

	</center>
</body>
</html>