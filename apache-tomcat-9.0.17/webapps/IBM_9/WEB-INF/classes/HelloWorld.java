//package servlet_examples;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloWorld extends HttpServlet {
	int count;

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			                         throws ServletException, IOException {
		doPost(req, res);

	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			                          throws ServletException, IOException {
		res.setHeader("Cache-Control","no-store");
		res.setHeader("Pragma,"no-cache");
		res.setDataHeader("Expires",0);
		res.setContentType("text/html; charset=Big5");
		PrintWriter out = res.getWriter();
		    int size = res.getBufferSize();
    log("The default buffer size is " + size);
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Hello World</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<BIG>Hello World ,世界你好</BIG>"+(++count));
		out.println("</BODY></HTML>");
	}
}