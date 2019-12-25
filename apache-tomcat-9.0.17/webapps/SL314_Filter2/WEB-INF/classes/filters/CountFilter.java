package filters;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CountFilter implements Filter {
	
	ServletContext context=null;
	
	public void init(FilterConfig config){
		context=config.getServletContext();
	}

	public void destroy(){
		context=null;
	}

    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
        throws ServletException, IOException {
		   
		   res.setContentType("text/html; charset=UTF-8");
		   PrintWriter out=res.getWriter();
		   Integer count=(Integer)context.getAttribute("count");
		   if(count==null) count=new Integer(0);
		   int n=count.intValue()+1;
		   context.setAttribute("count",new Integer(n));
		   out.println("<b>�w�g���X "+n+" �� </b><p>");
		   chain.doFilter(req,res);
    }
}
 