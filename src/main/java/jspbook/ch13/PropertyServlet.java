package jspbook.ch13;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
		urlPatterns = {"/PropertyServlet"},
		//서블릿 초기화 파라미터
		initParams = {
				@WebInitParam(name="name1", value="user1"),
				@WebInitParam(name="name2", value="user2")
				})

public class PropertyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; //직렬화 또는 역직렬화는 ID가 다르면 로드되지 않는다.
       
    public PropertyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
	
		PrintWriter out = response.getWriter();
		
		response.setContentType("text/html; charset=UTF-8");
		
		out.println("<HTML><BODY><center>");
		out.println("<H2>PropertyServlet</H2>");
		out.println("<HR>");
		
		out.println("name1 : " + getInitParameter("name1") + "<br>");
		out.println("name2 : " + getInitParameter("name2") + "<br>");
		
		out.println("<HR>");
		out.println("name3 : " + getServletContext().getInitParameter("name3") + "<br>");
		out.println("</center></BODY></HTML>");
		
	}

}
