<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="Big5" />  
<%//request.setCharacterEncoding("Big5");%>
<html>
<head>
  <title>Core_if.jsp</title>
</head>
<body>

<h2><c:out value="<c:if> ���Ϊk" /></h2>

A0:  ${param.password == '123'}<br> <!--�γo�Ӽg�k�N��F-->
A1:  ${param.password == "123"}<br>
A2:  ${param.password == 123}<br>
B0:  ${param.password.equals('123')}<br>
B1:  ${param.password.equals("123")}<br>
B2:  ${param.password.equals(123)}<br>


<c:if test="${param.password == '123'}" var="condition" scope="page" > 
    ${param.username} �A�n: �K�X���T�A�~��л���z���~���I 
</c:if> 

<br><br> 
���浲�G��:${condition}
</body>
</html>

<!--
http://localhost:8081/SL314_JSTL/Core_if.jsp?password=123&username=peter1
-->