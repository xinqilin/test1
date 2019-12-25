<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_forEach2</title>
</head>
<body>

<h2><c:out value="<c:forEach> °j°é" /></h2>

<br>
<c:forEach var="myData" begin="1" end="10" >
  ${myData}<br>
</c:forEach>

</body>
</html>