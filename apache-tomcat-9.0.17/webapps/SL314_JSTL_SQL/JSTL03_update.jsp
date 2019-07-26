<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head><title>JSTL03_update</title></head>
<body>
  <sql:setDataSource dataSource="jdbc/TestDB" var="xxx" scope="application"/>
  
  <sql:update var="count" dataSource="${xxx}">
    UPDATE emp2 SET ENAME='peterXX' where EMPNO=9999
  </sql:update>

  <sql:query var="rs" dataSource="${xxx}">
     select * from emp2
  </sql:query>

��ʤF${count}�����
<table border="1">
  <tr><th>���u�s��</th><th>���u�m�W</th><th>¾��</th><th>����</th></tr>
 <c:forEach var="row" items="${rs.rows}" varStatus="status">
	<tr>
	  <td><c:out value="${row.EMPNO}" /></td>
	  <td><c:out value="${row.ENAME}" /></td>
	  <td><c:out value="${row.JOB}" /></td>
	  <td><c:out value="${row.DEPTNO}" /></td>
	<tr>
</c:forEach>
</table>
</body>
</html>