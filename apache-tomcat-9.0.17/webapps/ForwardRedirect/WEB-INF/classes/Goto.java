
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Goto extends HttpServlet {

  public void doGet(HttpServletRequest req, HttpServletResponse res) 
          throws ServletException, IOException {
    
    res.setContentType("text/html; charset=Big5");
    PrintWriter out = res.getWriter();
    
    String option = (String) req.getAttribute("option");
    if (option != null) {
      if (option.equals("forward")) {
        out.println("�A�w�Q forward �ܦ���-�ڬOGoto.java !");
      } else if (option.equals("include")) {
        out.println("--���� (��Goto.java) �Q included �b���������X�� --");
      } 
    } 
  } 
}






