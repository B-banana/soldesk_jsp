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
	String campUrl = "";
	String camping = request.getParameter("camping");
	
	//null처리
	if (camping == null) {
		campUrl = "Choan_camping.jsp";
	} else {
		if (camping.equals("1")) {
			campUrl = "Campinginthecity.jsp";
		} else if (camping.equals("2")){
			campUrl = "Hiking.jsp";
		} else if (camping.equals("3")){
			campUrl = "Choan_camping.jsp";
		} else if (camping.equals("4")){
			campUrl = "Campinginthecity.jsp";
		} else if (camping.equals("5")){
			campUrl = "Hiking.jsp";
		} else if (camping.equals("6")){
			campUrl = "Campinginthecity.jsp";
		} else if (camping.equals("7")){
			campUrl = "Choan_camping.jsp";
		} else if (camping.equals("8")){
			campUrl = "Hiking.jsp";
		} else if (camping.equals("9")){
			campUrl = "Choan_camping.jsp";
		} else if (camping.equals("10")){
			campUrl = "Campinginthecity.jsp";
		} else if (camping.equals("11")){
			campUrl = "Session_Login_Form.jsp";
		}
	} 
	
	//로그인 처리

	
	%>

	<center>
		<table width="1200" border="0">
			<!-- Top 부분 -->
			<tr height="100">
				<td align="center" colspan="2">
				<jsp:include page="Top.jsp" />
				</td>
			</tr>
			
			<!-- Left 부분 -->
			<tr height="500">
				<td align="center" width="250">
				<jsp:include page="Left.jsp"></jsp:include>
				</td>

				<!-- center 부분 -->

				<td align="center" width="900">
				<jsp:include page="<%=campUrl%>"></jsp:include>
				</td>
			</tr>

			<!-- bottom 부분 -->
			<tr height="100">
				<td align="center" colspan="2">
				<jsp:include page="Bottom.jsp" />
				</td>
			</tr>

		</table>
	</center>
</body>
</html>