<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>

<%
    Object account = session.getAttribute("account");                  // �q session�����X (key) account����
    if (account == null) {                                             // �p�� null, �N��user���n�J�L , �~���H�U�u�@
      session.setAttribute("location", request.getRequestURI());       //*�u�@1 : �P�ɰO�U�ثe��m , �H�K��login.html�n�J���\�� , ��������ɦܦ�����(���t�XLoginHandler.java)
      response.sendRedirect(request.getContextPath()+"/login.html");   //*�u�@2 : �и�user�h�n�J����(login.html) , �i��n�J
      return;
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>select_page2_protected.jsp</title>
</head>
<body>

	<br>
	<table border='1' cellpadding='5' cellspacing='0' width='400'>
		<tr bgcolor='#CCCCFF' align='center' valign='middle' height='20'>
			 <td>   
			       <h3> �O�@������ - select_page2_protected.jsp      </h3> 
				     <h3> �w��:<font color=red> ${account} </font>�z�n </h3>
			 </td>
		</tr>
	</table>
	<b> <br>
	<br>                �H�U�d��....
	</b>
	
</body>
</html>
