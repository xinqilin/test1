<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_set_remove.jsp</title>
</head>
<body>

<h2><c:out value="<c:set>�M<c:remove> ���Ϊk" /></h2>

<c:set scope="page" var="myNumber"  value="3"/>

<c:set scope="request" var="myNumber">
            <%= 1+2 %>
</c:set>

<c:set scope="session" var="myNumber">
    <c:out value="${1+2}"/> 
</c:set>


���w�s�񪺸��
<table border="1" width="30%">
<tr><th>pageScope.myNumber   </th> <td><c:out value="${pageScope.myNumber}"    default="�L���" /></td></tr>
<tr><th>requestScope.myNumber</th> <td><c:out value="${requestScope.myNumber}" default="�L���" /></td></tr>
<tr><th>sessionScope.myNumber</th> <td><c:out value="${sessionScope.myNumber}" default="�L���" /></td></tr>
</table>
</br>
</br>
</br>

��<c:out value='<c:remove var="myNumber" scope="page" />����'/>
<c:remove var="myNumber" scope="page" />
<table border="1" width="30%">
<tr><th>pageScope.myNumber   </th> <td><c:out value="${pageScope.myNumber}"    default="�L���" /></td></tr>
<tr><th>requestScope.myNumber</th> <td><c:out value="${requestScope.myNumber}" default="�L���" /></td></tr>
<tr><th>sessionScope.myNumber</th> <td><c:out value="${sessionScope.myNumber}" default="�L���" /></td></tr>
</table>
</br>
</br>
</br>

��<c:out value='<c:remove var="myNumber" />����'/>
<c:remove var="myNumber" />
<table border="1" width="30%">
<tr><th>pageScope.myNumber   </th> <td><c:out value="${pageScope.myNumber}"    default="�L���" /></td></tr>
<tr><th>requestScope.myNumber</th> <td><c:out value="${requestScope.myNumber}" default="�L���" /></td></tr>
<tr><th>sessionScope.myNumber</th> <td><c:out value="${sessionScope.myNumber}" default="�L���" /></td></tr>
</table>
</br>
</body>
</html>