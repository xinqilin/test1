<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Core_forEach</title>
</head>
<body>

<h2><c:out value="<c:forEach> varStatus 的四種屬性" /></h2>

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
	   的四種varStatus屬性如下:                             </LI><br>
     index：${s.index} <br>
     count：${s.count} <br>
     first：${s.first} <br>
     last ：${s.last}  <br><br>
</c:forEach>

</UL>
</body>
</html>
