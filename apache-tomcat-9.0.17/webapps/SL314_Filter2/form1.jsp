<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>
<%
  response.setHeader("Cache-Control","no-store"); //HTTP 1.1
  response.setHeader("Pragma","no-cache");        //HTTP 1.0
  response.setDateHeader ("Expires", 0);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv="Content-Type" content="text/html; charset=BIG5">
<TITLE>form1.jsp</TITLE>
</HEAD>
<BODY>

 <FORM METHOD="POST" ACTION="Hello">
      
    �п�J�z���W�r!
    <INPUT TYPE="TEXT" NAME="name" VALUE="peter1�d�ç�"><P>
    <INPUT TYPE="SUBMIT">
 </FORM>

 <img src="images/tomcat.gif">

 <table border="1" bordercolor="blue">
   <tr><th>�Ʀr</th><th>����</th></tr> 

   <% for (int i=0 ; i<10 ; i++) { %>
     <tr><td><%= i %></td><td><%= i*i %></td></tr>
   <% } %>

 </table>

<%! int count=0; %>

(������)�� <%= ++count %> �����X
<br>
</BODY>
</HTML>
