<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member Join</title>
<link type="text/css" href="memberDBstyle.css" rel="stylesheet" media="screen" />

</head>
<body>
<center>
<h2>회원 가입</h2>
<hr />
<div>
<form action="proc.do" method="post">
<table width="450">
<tr>
<th class="item">아이디</th>
<td><input type="text" name="id" placeholder="아이디를 입력하세요"/></td>
</tr>
<tr>
<th class="item">패스워드</th>
<td><input type="password" name="pass" placeholder="숫자와 문자를 혼합"/></td>
</tr>
<tr>
<th class="item">패스워드확인</th>
<td><input type="password" name="pass2" /></td>
</tr>
<tr>
<th class="item">이메일</th>
<td width="300"><input type="text" name="email" outline: none/></td>
</tr>
<tr>
<th class="item">성별</th>
<td width="300">
<input type="radio" name="gender" value="male" />남
<input type="radio" name="gender" value="female" />여
</td>
</tr>
<tr>
<th class="item">주소</th>
<td width="300"><input type="text" name="address" /></td>
</tr>
<tr>
<th class="item">전화번호</th>
<td width="300"><input type="text" name="phone" /></td>
</tr>
<tr>
<th class="item">당신의 관심분야</th>
<td width="300">
<input type="checkbox" name="hobby" value="여행" />여행
<input type="checkbox" name="hobby" value="등산" />등산
<input type="checkbox" name="hobby" value="음악" />음악
<input type="checkbox" name="hobby" value="독서" />독서
</td>
</tr>
<tr>
<th class="item">당신의 직업은</td>
<td width="300">
<select name="job">
<option selected>무직</option>
<option>회사원</option>
<option>개발자</option>
<option>전문직</option>
<option>학생</option>
<option>기타</option></select></td>
</tr>
<tr>
<th class="item">당신의 연령은</th>
<td width="300">
<input type="radio" name="age" value="여행" />10대
<input type="radio" name="age" value="등산" />20대
<input type="radio" name="age" value="음악" />30대
<input type="radio" name="age" value="독서" />40대
</td>
</tr>
<tr>
<th class="item">하고싶은 말</th>
<td width="300"><textarea rows="5" cols="30" name="info"></textarea></td>
</tr>
<tr>				
<td colspan=2 align="center">
						<button type="submit">확인</button>
						<button type="reset">취소</button>
</td>
</table>
</form>
</div>
</center>
</body>
</html>