<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Core_import01.jsp</title></head>
<body>
<br><br><br><br><br><br><br><br><br><br>

<!-- ============================================================================================================== -->
<hr color=blue><h2>
<font color=blue>    ●1）import同專案內的網頁
</font></h2><br>
<div>                   <c:import url="/HelloJSTL.jsp" >
                         <c:param name="username" value="peter1" />
                        </c:import>
</div>                  


<!-- ============================================================================================================== -->
<hr color=black><h2>
<font color=black>   ●2A）import同一個伺服器內，其它專案的網頁 (第一種import方式)
</font></h2><br>
<div>                   <c:import url="http://localhost:8081/SL314_EL/Hello" >
                           <c:param name="name" value="peter1" />
                        </c:import>
</div>     



<hr color=black><h2>
<font color=black>   ●2B）import同一個伺服器內，其它專案的網頁 (第二種import方式)(<font color=red>註:</font>)
</font></h2><br>
<div>                   <c:import url="/Hello" context="/SL314_EL" >
                           <c:param name="name" value="peter1" />
                        </c:import>

<font color=red><b>     註:
</font>                 server.xml 或 context.xml 內必須有如下之 crossContext="true" 的註冊:<b>
                        &lt;Context ....... crossContext="true"&gt;
</b></div>                    


<!-- ============================================================================================================== -->
<hr color=blue><h2>
<font color=blue>    ●3）import不同伺服器的網頁
</font></h2><br>    
<div>                   <c:import url="https://tw.news.yahoo.com/" charEncoding="UTF-8" />
</div>

</body>
</html>