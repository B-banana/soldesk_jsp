package jspbook.MVC;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MProc2")
public class MemberJoinProc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		/*
		 * request.setAttribute("id", id); // 서버에 저장 request.setAttribute("passwd",
		 * passwd); request.setAttribute("name", name); request.setAttribute("phone",
		 * phone); request.setAttribute("email", email);
		 */
		
		// Model에 객체생성, 저장
		MemberDTO bean = new MemberDTO();
		
		bean.setId(id);
		bean.setPasswd(passwd);
		bean.setName(name);
		bean.setPhone(phone);
		bean.setEmail(email);
		
		request.setAttribute("bean", bean);
		//RequestDispatcher : view 영역으로 던짐
		RequestDispatcher dis = request.getRequestDispatcher("MemberJoinView.jsp");
		
		//Redirect()
		dis.forward(request, response);
	}

}
