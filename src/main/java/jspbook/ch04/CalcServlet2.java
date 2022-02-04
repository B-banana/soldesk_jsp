package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalcServlet2")
public class CalcServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CalcServlet2() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 클라이언트 응답시 전달될 컨텍트에 대한 타입선언
		response.setContentType("text/html; charset=UTF-8");

		// 변수방 선언
		int num1, num2;
		String op = "";
		int result;

		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
		
		//Calc클래스에서 구현부 가져옴
		Calc calc = new Calc(num1, num2, op);
		
		result = calc.getResult();
		
		// 클라이언트 응답을 위한 출력 스트림
				PrintWriter out = response.getWriter();
				out.println("<HTML>");
				out.println("<HEAD><TITLE>계산기</TITLE><HEAD>");
				out.println("<BODY><CENTER>");
				out.println("<H2>계산결과</H2>");
				out.println("<HR>");
				out.println(num1 + " " + op + " " + num2 + " = " + result);
				out.println("<CENTER></BODY></HTML>");
		

	}

}
