<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>
<%request.setCharacterEncoding("Big5");%>


<jsp:useBean id="hello" scope="session" class="hello.HelloBean" />



  

<HTML>
<HEAD><TITLE>Hello</TITLE></HEAD>
<BODY>
<H1>
Hello, <jsp:getProperty name="hello" property="name" />
<br>
Hello, <%= hello.getName()%>
</H1>
</BODY>
</HTML>