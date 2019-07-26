<%@ page contentType="text/html; charset=Big5" pageEncoding="big5"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv="Content-Type" content="text/html; charset=BIG5">
<TITLE>form.jsp</TITLE>
</HEAD>
<BODY>

  <FORM METHOD="get" ACTION="Hello">

    請輸入您的名字!
    <INPUT TYPE="TEXT" NAME="name" VALUE="peter1吳永志"><P>
    <INPUT TYPE="SUBMIT">
  </FORM>


  <img src="images/tomcat.gif">
  <img src="http://localhost:8081/IBM_9/images/tomcat.gif">
  <img src="/tomcat.gif">
  <img src="/IBM_9/images/tomcat.gif">
  	
  	
<table border="1" bordercolor="blue">
  	
  	<%for (int i = 1 ; i<=9 ; i++) { %>
  		<tr>
  		 	<%for (int j = 1 ; j<=9 ; j++) { %>
 		 		<td><%= i %>*<%=j%>=<%= i*j %></td>
 		 	<% } %>
 		 </tr>
  	<% } %>
 </table>
	<%! int count;%>
	<%= ++count %>
</BODY>
</HTML>