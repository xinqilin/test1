<%@page contentType="text/html;charset=utf-8"%> 
<%@page import="org.json.JSONObject"%>
<%
  /*
  建立json物件:emp,內含ename屬性(值:Linsanity)及phone屬性,
  其中phone屬性為一個json物件,內含屬性 O (值:  ),屬性 H (值:  ), 屬性 M (值: )
  */
  JSONObject emp = new JSONObject();
  emp.put("ename", "Linsanity");

  JSONObject phone = new JSONObject();
  phone.put("O","034257387");
  phone.put("H","03168168");
  phone.put("M","0933168168"); 

  emp.put("phone", phone);

  out.print(emp);
%>
