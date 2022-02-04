<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//한글 캐릭터셋 변환
	request.setCharacterEncoding("UTF-8");
	
	//twitter_list.jsp 에서 전달된 msg값을 가지고 옴
	String msg = request.getParameter("msg");	
	
	//세션에 저장된 로그인 사용자 이름을 가지고 옴.
	Object username = session.getAttribute("user");	
	
	//메세지 저장을 위해 application에서 ArrayList를 생성(객체명 msge)하여 게시글 가져옴
	ArrayList<String> msge = (ArrayList<String>) application.getAttribute("msge");

	//null 인 경우 새로운 Arraylist객체에 메모리 확보
	if (msge == null) {
		msge = new ArrayList<String>();
		application.setAttribute("msge", msge);
	}
	
	//ArrayList에 msge객체에 메세지 추가
	Date date = new Date();
	SimpleDateFormat f = new SimpleDateFormat("MM/dd (HH:mm)", Locale.KOREA);
	msge.add(username + " : " + msg + " " + f.format(date));
	
	//톰캣 콘솔에 출력
	application.log(msg + "<-메세지 추가됨");
	
	//목록(출력) 화면으로 넘김
	response.sendRedirect("twitter_list.jsp");
	%>

</body>
</html>