<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_forEach</title>
</head>
<body>

<h2><c:out value="<c:forEach> begin�Bend�Mstep���Ϊk �P �����m��" /></h2>

<%	
	String str[] = new String [10];
	str[0]="7001";
	str[1]="7002";
	str[2]="7003";
	str[3]="7004";
	str[4]="7005";
	str[5]="7006";
	str[6]="7007";
	str[7]="7008";
	str[8]="7009";
	str[9]="7010";
	request.setAttribute("myStr", str);
%>

<br>
<c:forEach var="myData" items="${myStr}" begin="0" end="2" step="1" >
  ${myData}<br>
</c:forEach>

</body>
</html>
