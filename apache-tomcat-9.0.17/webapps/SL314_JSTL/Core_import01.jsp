<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Core_import01.jsp</title></head>
<body>
<br><br><br><br><br><br><br><br><br><br>

<!-- ============================================================================================================== -->
<hr color=blue><h2>
<font color=blue>    ��1�^import�P�M�פ�������
</font></h2><br>
<div>                   <c:import url="/HelloJSTL.jsp" >
                         <c:param name="username" value="peter1" />
                        </c:import>
</div>                  


<!-- ============================================================================================================== -->
<hr color=black><h2>
<font color=black>   ��2A�^import�P�@�Ӧ��A�����A�䥦�M�ת����� (�Ĥ@��import�覡)
</font></h2><br>
<div>                   <c:import url="http://localhost:8081/SL314_EL/Hello" >
                           <c:param name="name" value="peter1" />
                        </c:import>
</div>     



<hr color=black><h2>
<font color=black>   ��2B�^import�P�@�Ӧ��A�����A�䥦�M�ת����� (�ĤG��import�覡)(<font color=red>��:</font>)
</font></h2><br>
<div>                   <c:import url="/Hello" context="/SL314_EL" >
                           <c:param name="name" value="peter1" />
                        </c:import>

<font color=red><b>     ��:
</font>                 server.xml �� context.xml ���������p�U�� crossContext="true" �����U:<b>
                        &lt;Context ....... crossContext="true"&gt;
</b></div>                    


<!-- ============================================================================================================== -->
<hr color=blue><h2>
<font color=blue>    ��3�^import���P���A��������
</font></h2><br>    
<div>                   <c:import url="https://tw.news.yahoo.com/" charEncoding="UTF-8" />
</div>

</body>
</html>