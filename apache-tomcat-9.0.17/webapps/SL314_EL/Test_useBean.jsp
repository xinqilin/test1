<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>

<jsp:useBean id="customer" scope="session" class="com.customer.model.Customer" />
<jsp:setProperty name="customer" property="username" value="peter1"/>
<jsp:setProperty name="customer" property="addr" value="�O�_��"/>
<html>
<head><title>Test_useBean.jsp</title></head>
<body>

<h3>&lt;jsp:getProperty&gt; ����</h3>
�m�W�G<jsp:getProperty name="customer" property="username"/><br>
�a�}�G<jsp:getProperty name="customer" property="addr"/>
<br>
<br>
<br>
<h3>&lt;%=bean.getXxxx()%&gt; ����</h3>
�m�W�G<%=customer.getUsername()%><br>
�a�}�G<%=customer.getAddr()%>
</body>
</html>