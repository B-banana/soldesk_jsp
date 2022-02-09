package jspbook.ch13;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class PropertyListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce)  { 
    	ServletContext ctx = sce.getServletContext();
    	String file = ctx.getInitParameter("profile"); // c:/tmp/my.conf
    	
    	Properties p = new Properties(); //지정된 경로의 파일로 프로퍼티 객체 생성
    	
    	try {
    		p.load(new FileInputStream(file));
    					
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
    	
    	ctx.setAttribute("prop", p); //파일의 내용이 application scope영역에 저장
    
    }
    
    public void contextDestroyed(ServletContextEvent sce)  { 
        // TODO Auto-generated method stub
   }
	
}
