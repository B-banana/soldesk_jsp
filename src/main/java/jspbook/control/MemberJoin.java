package jspbook.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/proc.do")
public class MemberJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void reqPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String pass2 = request.getParameter("pass2");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String[] hobby = request.getParameterValues("hobby");
		String job = request.getParameter("job");
		String age = request.getParameter("age");
		String info = request.getParameter("info");
		
		String texthobby = "";
		
		for (String hb : hobby) {
			texthobby += hb + " ";
		}
		
		MemberDTO mbean = new MemberDTO();
		
		mbean.setId(id);
		mbean.setPass(pass);
		mbean.setPass2(pass2);
		mbean.setEmail(email);
		mbean.setGender(gender);
		mbean.setAddress(address);
		mbean.setPhone(phone);
		mbean.setHobby(texthobby);
		mbean.setJob(job);
		mbean.setAge(age);
		mbean.setInfo(info);
		
		//request.setAttribute("mbean", mbean);
		
		//패스워드 일치 판단
		if (pass.equals(pass2)) {
			MemberDAO mdao = new MemberDAO();
			mdao.insertMember(mbean);
		
		//RequestDispatcher : view 영역으로 던짐
		RequestDispatcher dis = request.getRequestDispatcher("MemberListCon.do");
		
		//Redirect()
		dis.forward(request, response);
		
		} else {
			request.setAttribute("msg", "패스워드가 일치하지 않습니다.");
			
			//RequestDispatcher : view 영역으로 던짐
			RequestDispatcher dis = request.getRequestDispatcher("JoinError.jsp");
			
			//Redirect()
			dis.forward(request, response);
		}
	}
}
