package jspbook.ch13;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class TestContextListener implements ServletContextListener {

	//시작
    public void contextInitialized(ServletContextEvent sce)  { 
        ServletContext ctx = sce.getServletContext();
        
        Book mybook = new Book("Spring Framework", "홍길동", 25000, "솔데스크");
        ctx.setAttribute("mybook", mybook);
        System.out.println("TextContextlistenter 가 시행중");
    }
	
    //종료
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

}
