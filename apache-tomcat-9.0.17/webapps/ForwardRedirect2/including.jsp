<%@ page import="java.util.*" contentType="text/html; charset=Big5"%>

<html>
<head>
  <title>including.jsp</title>
</head>
<body bgcolor="lightblue">

     <% out.println("������, ���ݨ�");%>
     <% request.setAttribute("name1" , "peter1") ; %>    <%--������--%>
     <% out.println("������, ���ݨ�");%>
     <% request.setAttribute("name2" , "peter2") ; %>    <%--������--%>

<jsp:include page="/included.jsp" flush="true">
 <jsp:param name="name0" value="peter0" />
</jsp:include>

     <% out.println("������, ���ݨ�");%>

     <% out.println("������, ���ݨ�");%>
</body>
</html>