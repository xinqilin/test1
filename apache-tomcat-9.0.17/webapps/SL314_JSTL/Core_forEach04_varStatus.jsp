<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_forEach</title>
</head>
<body>

<h2><c:out value="<c:forEach> varStatus ���|���ݩ�" /></h2>

<%	
	String str[] = new String [5];	
	str[0]="0";	
	str[1]="1";	
	str[2]="2";	
	str[3]="3";	
	str[4]="4";
	request.setAttribute("myStr", str);
%>

<UL>

<c:forEach var="myData" items="${myStr}" varStatus="s">   <LI><b><font color=red> 
   <c:out value="${myData}"/>                             </font></b>
	   ���|��varStatus�ݩʦp�U:                             </LI><br>
     index�G${s.index} <br>
     count�G${s.count} <br>
     first�G${s.first} <br>
     last �G${s.last}  <br><br>
</c:forEach>

</UL>
</body>
</html>
