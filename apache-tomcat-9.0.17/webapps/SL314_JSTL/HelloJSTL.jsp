<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
  <title>JSTL��������</title>
  </head>
  
  <body>
    <c:out value="<<JSTL��������>>"/><br><br>
  
    <b>�A�i�������y��:</b><br>
    <c:out value="${header['Accept-Language']}"/><br><br>
    
    <b>�A�ϥΪ��s����:</b><br>
    <c:out value="${header['User-Agent']}"/><br><br>
    
    <b>���쪺username�ШD�Ѽ�:</b><br>
    <c:out value="${param.username}" default="������username�ШD�Ѽ�"/><br><br>
    
    <b>�S��r��:</b><br>
    <c:out value="Hello World ! </�ڬO Tomcat>" escapeXml="true"/>
  </body>
</html>