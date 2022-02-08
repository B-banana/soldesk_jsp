<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspbook.addrbook.*, java.util.*" errorPage="addrbook_errorpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="ab" class="jspbook.addrbook.AddrBean"></jsp:useBean>
<jsp:useBean id="addrbook" class="jspbook.addrbook.AddrBook">
	<jsp:setProperty name="addrbook" property="*" />
</jsp:useBean>

<%
//컨트롤러 요청
String action = request.getParameter("action");

//파라미터 요청 처리
switch (action) {

case "list":
	ArrayList<AddrBook> datas = ab.getDBList();
	request.setAttribute("datas", datas); //서버에 저장

	pageContext.forward("addrbook_list.jsp");
	break;

case "insert":
	if (ab.insertDB(addrbook)) {
		response.sendRedirect("addrbook_control.jsp?action=list");
	} else {
		throw new Exception("DB 입력오류");
	}
	break;
	
case "edit":
	AddrBook abook = ab.getDB(addrbook.getAb_id());
	
	if (!request.getParameter("upasswd").equals("12345")) {
		out.println("<script>alert('비밀번호가 일치하지 않습니다.'); history.back();</script>");

	} else {
		request.setAttribute("ab", abook);	//서버에 저장
		pageContext.forward("addrbook_edit_form.jsp");

	}
	break;
	
case "update":
	if (ab.updateDB(addrbook)) {
		response.sendRedirect("addrbook_control.jsp?action=list");
	} else {
		throw new Exception("DB 수정오류");
	}
	break;
	
case "delete":
	if (ab.deleteDB(addrbook.getAb_id())) {
		response.sendRedirect("addrbook_control.jsp?action=list");
	} else {
		throw new Exception("DB 삭제오류");
	}
	break;
	
default :
	out.println("<script>alert('action 파라미터를 확인해주세요')</script>");

}
%>