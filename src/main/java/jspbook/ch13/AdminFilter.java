package jspbook.ch13;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/ch13/admin/*")
public class AdminFilter implements Filter {
	
	Properties p;
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		p = (Properties)request.getServletContext().getAttribute("prop");	//prop객체는 file이므로 반드시 Properties의 객체로 변동
		p.put("adminID", "SuperUser");	//파일에 내용을 추가하여 사용

		//인증번호(opt번호)
		request.setAttribute("opt", "a493906");
		
		chain.doFilter(request, response);	//필터적용 대상 : /ch13/admin/*의 request, response 사용시 기능 사용
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
