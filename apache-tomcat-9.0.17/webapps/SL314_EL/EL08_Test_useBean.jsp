<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>

<jsp:useBean id="customer" scope="session" class="com.customer.model.Customer" />
<jsp:setProperty name="customer" property="username" value="peter1"/>
<jsp:setProperty name="customer" property="addr" value="臺北市"/>
<html>
<head><title>Test_useBean.jsp</title></head>
<body>

<h3>&lt;jsp:getProperty&gt; 取值</h3>
姓名：<jsp:getProperty name="customer" property="username"/><br>
地址：<jsp:getProperty name="customer" property="addr"/>
<br>
<br>
<br>
<h3>&lt;%=bean.getXxxx()%&gt; 取值</h3>
姓名：<%=customer.getUsername()%><br>
地址：<%=customer.getAddr()%>
<br>
<br>
<br>
<h3>Tomcat5 開始新增(EL)的寫法-1</h3>
姓名：${customer.username}<br>
地址：${customer.addr}
<br>
<br>
<br>
<h3>Tomcat5 開始新增(EL)的寫法-2</h3>
姓名：${customer["username"]}<br>
地址：${customer["addr"]}
</body>
</html>