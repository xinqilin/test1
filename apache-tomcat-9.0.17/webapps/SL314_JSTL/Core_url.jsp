<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_url.jsp</title>
</head>
<body>

<h2><c:out value="<c:import> ���Ϊk" /></h2>

<a href=" 
           <c:url value="https://tw.yahoo.com" >
              <c:param name="name1" value="peter1"/>
           </c:url>
        "> yahoo�_�� </a>
        
<br>        

<a href="https://tw.yahoo.com?name1=peter1"> yahoo�_�� </a>        

</body>
</html>