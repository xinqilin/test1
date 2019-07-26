package servlet_examples;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/HelloPost")
public class HelloPost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			                     throws ServletException, IOException {
    //req.setCharacterEncoding("UTF-8");   //<--- �w�g�� SetCharacterEncodingFilter �o���ѨM Query String ���s�X���D�F
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();

		String name = req.getParameter("name");
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Hello, " + name + "</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("Hello, �A�n: " + name);
		out.println("</BODY></HTML>");
	}

}
