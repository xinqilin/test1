<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_redirect.jsp</title>
</head>
<body>

<h2><c:out value="<c:redirect> ���Ϊk" /></h2>

<c:redirect url="http://java.sun.com">
   <c:param name="name" value="peter1"/>
</c:redirect>

<c:out value="���|����!!!" />

</body>
</html>