<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>

<html>
<head>
  <title>including.jsp</title>
</head>
<body bgcolor="lightblue">

     <% out.println("������, ���ݨ�");%>
     <% request.setAttribute("name1" , "peter1") ; %>    <%--������--%>
     <% out.println("������, ���ݨ�");%>
     <% request.setAttribute("name2" , "peter2") ; %>    <%--������ , ��included.jsp������ , why?--%>
<jsp:include page="/select_page_Basic.jsp" flush="true"/>


     <% out.println("������, ���ݨ�");%>

     <% out.println("������, ���ݨ�");%>
</body>
</html>