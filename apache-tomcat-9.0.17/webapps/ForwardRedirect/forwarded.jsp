<%@ page contentType="text/html; charset=Big5" pageEncoding="Big5"%>

<html>
<head>
  <title>forwarded.jsp</title>
</head>
<body bgcolor="orange">

�ڬO forwarded.jsp
<br>
Hello!
<br>
       <% out.println("name0= "+request.getParameter("name0"));%>
<br>
       <% out.println("name1= "+request.getAttribute("name1"));%>
<br>
       <% out.println("name2= "+request.getAttribute("name2"));%>
<br>

1:<img src="http://localhost:8081/ForwardRedirect/images/tomcat.gif">
	<br>
2<img src="/ForwardRedirect/images/tomcat.gif">
	<br>
3<img src="<%=request.getContextPath()%>/images/tomcat.gif"><font color="red">�̫�@�ӬO�ʺA�̨μg�k</font>
	<br>
</body>
</html>