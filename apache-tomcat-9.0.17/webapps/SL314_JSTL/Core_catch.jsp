<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_catch.jsp</title>
</head>
<body>

<h2><c:out value="<c:catch> 的用法" /></h2>

<c:catch var="error_Message">
<%
	String myNumber = "not number";	
	int i = Integer.parseInt(myNumber);
%>
</c:catch>

EL　錯誤輸出: ${error_Message}
<br>
JSTL錯誤輸出: <c:out value="${error_Message}" default="無錯誤"/>

</body>
</html>