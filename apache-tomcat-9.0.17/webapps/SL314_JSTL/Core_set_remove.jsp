<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_set_remove.jsp</title>
</head>
<body>

<h2><c:out value="<c:set>和<c:remove> 的用法" /></h2>

<c:set scope="page" var="myNumber"  value="3"/>

<c:set scope="request" var="myNumber">
            <%= 1+2 %>
</c:set>

<c:set scope="session" var="myNumber">
    <c:out value="${1+2}"/> 
</c:set>


●已存放的資料
<table border="1" width="30%">
<tr><th>pageScope.myNumber   </th> <td><c:out value="${pageScope.myNumber}"    default="無資料" /></td></tr>
<tr><th>requestScope.myNumber</th> <td><c:out value="${requestScope.myNumber}" default="無資料" /></td></tr>
<tr><th>sessionScope.myNumber</th> <td><c:out value="${sessionScope.myNumber}" default="無資料" /></td></tr>
</table>
</br>
</br>
</br>

●<c:out value='<c:remove var="myNumber" scope="page" />之後'/>
<c:remove var="myNumber" scope="page" />
<table border="1" width="30%">
<tr><th>pageScope.myNumber   </th> <td><c:out value="${pageScope.myNumber}"    default="無資料" /></td></tr>
<tr><th>requestScope.myNumber</th> <td><c:out value="${requestScope.myNumber}" default="無資料" /></td></tr>
<tr><th>sessionScope.myNumber</th> <td><c:out value="${sessionScope.myNumber}" default="無資料" /></td></tr>
</table>
</br>
</br>
</br>

●<c:out value='<c:remove var="myNumber" />之後'/>
<c:remove var="myNumber" />
<table border="1" width="30%">
<tr><th>pageScope.myNumber   </th> <td><c:out value="${pageScope.myNumber}"    default="無資料" /></td></tr>
<tr><th>requestScope.myNumber</th> <td><c:out value="${requestScope.myNumber}" default="無資料" /></td></tr>
<tr><th>sessionScope.myNumber</th> <td><c:out value="${sessionScope.myNumber}" default="無資料" /></td></tr>
</table>
</br>
</body>
</html>