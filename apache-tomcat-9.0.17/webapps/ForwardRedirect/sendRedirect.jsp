<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>

<html>
<head>
  <title>sendRedirect.jsp</title>
</head>
<body bgcolor="lightblue">
     
     <% out.println("������ , �ݤ���");%>
     <% session.setAttribute("name1" , "peter1") ; %>    <%--������--%>
     <% out.println("������ , �ݤ���");%>


<%
       //�۹���|
       response.sendRedirect("Redirected.jsp?name0=peter0");
       
       //���㵴����|
       //response.sendRedirect("http://localhost:8081/ForwardRedirect/Redirected.jsp?name0=peter0");
       
%>

     <% out.println("������ , �ݤ���");%>
     <% session.setAttribute("name2" , "peter2") ; %>    <%--������--%>
     <% out.println("������ , �ݤ���");%>
</body>
</html>