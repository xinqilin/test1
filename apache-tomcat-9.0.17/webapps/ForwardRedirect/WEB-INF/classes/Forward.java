
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Forward extends HttpServlet {


  public void doGet(HttpServletRequest req, HttpServletResponse res) 
          throws ServletException, IOException {
    
    res.setContentType("text/html; charset=Big5");
    PrintWriter out = res.getWriter();

    out.println("������ , ���ݤ��� , �]buffer�Q�M��");    
    req.setAttribute("option", "forward");
    
    RequestDispatcher dispatcher = req.getRequestDispatcher("/forwarding.jsp");
    dispatcher.forward(req, res);
    out.println("������");    
  
  } 
}





