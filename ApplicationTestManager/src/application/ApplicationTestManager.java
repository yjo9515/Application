package application;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/index")
public class ApplicationTestManager extends HttpServlet{  
   public void init(){	
      System.out.println("init 메서드 호출");
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		request.setCharacterEncoding("utf-8");   
		response.setContentType("text/html;charset=utf-8");  
		PrintWriter out = response.getWriter();				
		out.print("<html>");
		out.print("<head>" );
		out.print("<script src='https://code.jquery.com/jquery-latest.js'></script>");
		out.print("<script>window.open('/ApplicationTestManager/test.jsp','','toolbar=no,status=no,menubar=no,resizable=yes, location=no,top=100,left=100,width=380,height=380,scrollbars=no');</script>");
		out.print("</head>");
		out.print("<body>");
		out.print("</body>");
		out.print("</html>");
   }
   public void destroy(){
      System.out.println("destroy 메서드 호출");
   }
}