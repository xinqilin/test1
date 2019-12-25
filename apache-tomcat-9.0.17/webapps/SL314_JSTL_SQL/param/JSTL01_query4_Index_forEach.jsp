<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head><title>JSTL01_query</title></head>
<body>
  <sql:setDataSource dataSource="jdbc/TestDB" var="xxx" scope="application"/>
  
  <sql:query var="rs" dataSource="${xxx}">
     SELECT EMPNO ���u�s��, ENAME ���u�m�W, JOB ¾��, SAL �~��, DEPTNO ���� from emp2 order by EMPNO
  </sql:query>

<table border="1">
 <tr>
 	  <th>�p��</th>
  	<c:forEach var="columnName" items="${rs.columnNames}">
  	  <th>${columnName}</th>
  	</c:forEach>
 </tr>
 
 <c:forEach var="row" items="${rs.rowsByIndex}" varStatus="status">
	<tr>
	  <td align="center">��${status.count}��</td>
	  <c:forEach var="columnValue" items="${row}">
	    <td align="center"><c:out value="${columnValue}"/></td>
	  </c:forEach>
	<tr>
 </c:forEach>
</table>
</body>
</html>

<!-- 
SELECT emp2.EMPNO ���u�s��, emp2.ENAME ���u�m�W, emp2.JOB ¾��, emp2.SAL �~��, dept2.DEPTNO �����s��, dept2.DNAME �����W��, dept2.LOC ������m from emp2, dept2 where emp2.DEPTNO=dept2.DEPTNO order by emp2.EMPNO
-->