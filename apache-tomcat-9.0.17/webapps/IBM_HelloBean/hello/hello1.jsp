<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>
<%request.setCharacterEncoding("Big5");%>


<jsp:useBean id="hello" scope="session" class="hello.HelloBean" />


<jsp:setProperty name="hello" property="*"/>
<% hello2.setName("DA101_2") ; %>
  

<HTML>
<HEAD><TITLE>Hello</TITLE></HEAD>
<BODY>
<H1>
Hello, <%= hello.getName1()%>
<br>
Hello, <%= hello.getName2()%>
</H1>
</BODY>
</HTML>