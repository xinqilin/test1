<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page isELIgnored="true" %>
<% 
session.setAttribute("customer","peter1");
%>
<html>
<head><title>EL04</title></head>
<body>
session �� customer �ݩʪ��ȡG�@${customer}
</body>
</html>