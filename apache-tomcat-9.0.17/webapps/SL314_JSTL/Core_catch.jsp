<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_catch.jsp</title>
</head>
<body>

<h2><c:out value="<c:catch> ���Ϊk" /></h2>

<c:catch var="error_Message">
<%
	String myNumber = "not number";	
	int i = Integer.parseInt(myNumber);
%>
</c:catch>

EL�@���~��X: ${error_Message}
<br>
JSTL���~��X: <c:out value="${error_Message}" default="�L���~"/>

</body>
</html>