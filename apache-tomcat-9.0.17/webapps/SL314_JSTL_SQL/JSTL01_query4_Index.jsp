<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head><title>JSTL01_query</title></head>
<body>
  <sql:setDataSource dataSource="jdbc/TestDB" var="xxx" scope="application"/>
  
  <sql:query var="rs" dataSource="${xxx}">
     SELECT EMPNO 員工編號, ENAME 員工姓名, JOB 職位, DEPTNO 部門 from emp2 order by EMPNO
  </sql:query>

<table border="1">
  <tr><th>${rs.columnNames[0]}</th><th>${rs.columnNames[1]}</th><th>${rs.columnNames[2]}</th><th>${rs.columnNames[3]}</th></tr>
 <c:forEach var="row" items="${rs.rowsByIndex}" varStatus="status">
	<tr>
	  <td><c:out value="${row[0]}" /></td>
	  <td><c:out value="${row[1]}" /></td>
	  <td><c:out value="${row[2]}" /></td>
	  <td><c:out value="${row[3]}" /></td>
	<tr>
</c:forEach>
</table>
</body>
</html>