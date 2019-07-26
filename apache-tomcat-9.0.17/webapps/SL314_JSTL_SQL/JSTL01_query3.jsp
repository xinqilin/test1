<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head><title>JSTL01_query1</title></head>
<body>
  <sql:setDataSource dataSource="jdbc/TestDB" var="xxx" scope="application"/>
  
  <sql:query var="rs" dataSource="${xxx}">
     SELECT EMPNO ���u�s��, ENAME ���u�m�W, JOB ¾��, DEPTNO ���� from emp2 order by EMPNO
  </sql:query>

<table border="1">
  <tr><th>${rs.columnNames[0]}</th><th>${rs.columnNames[1]}</th><th>${rs.columnNames[2]}</th><th>${rs.columnNames[3]}</th></tr>
 <c:forEach var="row" items="${rs.rows}" varStatus="status">
	<tr>
	  <td><c:out value="${row.���u�s��}" /></td>
	  <td><c:out value="${row.���u�m�W}" /></td>
	  <td><c:out value="${row.¾��}" /></td>
	  <td><c:out value="${row.����}" /></td>
	<tr>
</c:forEach>
</table>
</body>
</html>