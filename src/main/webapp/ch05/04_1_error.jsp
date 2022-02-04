<%@ page language="java" contentType="text/html; charset=UTF-8"
	isErrorPage="true" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
<body>
	<div align="center"></div>
	<h2>에러 페이지 입니다.</h2>
	<hr />
	<%=exception%>
	<table>
		<tr width=100% bgcolor="pink">
			<td>요청하신 페이지를 찾을 수가 없습니다.<br> URL 주소를 다시 한번 확인 해 주세요.
			</td>
		</tr>
		<tr>
			<td>${now }
				<p>
					<!-- 이엘? -->
					요청 실패 URL : ${pageContext.errorData.requestURI }<br> 상태 코드 :
					${pageContext.errorData.statusCode }<br>
			</td>
		</tr>
	</table>
</body>
</html>