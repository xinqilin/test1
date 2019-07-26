<%@page contentType="text/html;charset=utf-8"  language="java" import="java.sql.*" errorPage=""%> 
<%@page import="org.json.JSONObject"%>
<%
//取得前端送來的資料
String jsonStr = request.getParameter("jsonStr");
JSONObject member = new JSONObject( jsonStr );

out.print( member.getString("memName"));

// //關閉ResultSet物件 	
// rs.close();
// //關閉Statement物件    
// stmt.close();
// //關閉Connection物件 	 
// conn.close(); 
%>   


