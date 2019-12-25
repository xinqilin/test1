<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_forEach</title>
</head>
<body>

<h2><c:out value="<c:forEach> ªº¥Îªk" /></h2>

<%	
	String str[] = new String [5];
	str[0]="0";	
	str[1]="1";	
	str[2]="2";	
	str[3]="3";	
	str[4]="4"; 	
	request.setAttribute("myStr", str);
%>

<br>
<c:forEach var="myData" items="${myStr}" >
  ${myData}<br>
</c:forEach>

</body>
</html>