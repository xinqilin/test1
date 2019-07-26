<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>

<html>
<head>
  <title>including.jsp</title>
</head>
<body bgcolor="lightblue">

     <% out.println("有執行, 有看到");%>
     <% request.setAttribute("name1" , "peter1") ; %>    <%--有執行--%>
     <% out.println("有執行, 有看到");%>
     <% request.setAttribute("name2" , "peter2") ; %>    <%--有執行 , 但included.jsp未取到 , why?--%>
<jsp:include page="/select_page_Basic.jsp" flush="true"/>


     <% out.println("有執行, 有看到");%>

     <% out.println("有執行, 有看到");%>
</body>
</html>