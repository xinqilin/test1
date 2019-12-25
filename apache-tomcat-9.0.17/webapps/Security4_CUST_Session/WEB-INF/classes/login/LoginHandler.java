package login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/loginhandler")
public class LoginHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

   //�i�ˬd�ϥΪ̿�J���b��(account) �K�X(password)�O�_���ġj
   //�i��ڤW���ܸ�Ʈw�j�M���j
  protected boolean allowUser(String account, String password) {
    if ("tomcat".equals(account) && "tomcat".equals(password))
      return true;
    else
      return false;
  }
  
  public void doPost(HttpServletRequest req, HttpServletResponse res)
                                throws ServletException, IOException {
    req.setCharacterEncoding("Big5");
    res.setContentType("text/html; charset=Big5");
    PrintWriter out = res.getWriter();

    // �i���o�ϥΪ� �b��(account) �K�X(password)�j
    String account = req.getParameter("account");
    String password = req.getParameter("password");

    // �i�ˬd�ӱb�� , �K�X�O�_���ġj
    if (!allowUser(account, password)) {          //�i�b�� , �K�X�L�Įɡj
      out.println("<HTML><HEAD><TITLE>Access Denied</TITLE></HEAD>");
      out.println("<BODY>�A���b�� , �K�X�L��!<BR>");
      out.println("�Ы������s�n�J <A HREF="+req.getContextPath()+"/login.html>���s�n�J</A>");
      out.println("</BODY></HTML>");
    }else {                                       //�i�b�� , �K�X���Į�, �~���H�U�u�@�j
      HttpSession session = req.getSession();
      session.setAttribute("account", account);   //*�u�@1: �~�bsession�����w�g�n�J�L������
      
       try {                                                        
         String location = (String) session.getAttribute("location");
         if (location != null) {
           session.removeAttribute("location");   //*�u�@2: �ݬݦ��L�ӷ����� (-->�p���ӷ�����:�h���ɦܨӷ�����)
           res.sendRedirect(location);            
           return;
         }
       }catch (Exception ignored) { }

      res.sendRedirect(req.getContextPath()+"/login_success.jsp");  //*�u�@3: (-->�p�L�ӷ�����:�h���ɦ�login_success.jsp)
    }
  }
}