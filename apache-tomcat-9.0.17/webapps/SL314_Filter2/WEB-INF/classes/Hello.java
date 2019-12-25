
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Hello extends HttpServlet {

  public void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		doGet(req, res);
  }

  public void doGet(HttpServletRequest req, HttpServletResponse res)
                               throws ServletException, IOException {
    
    //req.setCharacterEncoding("UTF-8");              //�w��SetCharacterEncodingFilter�@�L����B�z�F
    //res.setContentType("text/html; charset=UTF-8"); //�w��CountFilter�@�L����B�z�F
    PrintWriter out = res.getWriter();

    String name = req.getParameter("name");
    out.println("<HTML>");
    out.println("<HEAD><TITLE>Hello, �A�n:   " + name + "</TITLE></HEAD>");
    out.println("<BODY>");
    out.println("Hello, �A�n:   " + name);
    
    out.println("<br><img src=\""+req.getContextPath()+"/images/tomcat.gif\">");
    
    out.println("</BODY></HTML>");
  }
  public String getServletInfo() {
    return "A servlet that knows the name of the person to whom it's" + 
           "saying hello";
  }
}
