<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>

<html>
<head>
  <title>forwarding.jsp</title>
</head>
<body bgcolor="lightblue">

     <% out.println("������ , ���ݤ��� , �]buffer�Q�M��");%>
     <% request.setAttribute("name1" , "peter1") ; %>    <%--������--%>
     <% out.println("������ , ���ݤ��� , �]buffer�Q�M��");%>

<jsp:forward page="/forwarded.jsp">
 <jsp:param name="name0" value="peter0" />
</jsp:forward>

     <% out.println("������");%>
     <% request.setAttribute("name2" , "peter2") ; %>    <%--������--%>
     <% out.println("������");%>
</body>
</html>