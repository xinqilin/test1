<%@page contentType="text/html;charset=utf-8"  language="java" import="java.sql.*" errorPage=""%> 
<%@page import="org.json.JSONObject"%>
<%
//取得前端送來的資料 
int empno = Integer.parseInt(request.getParameter("empno"));

//載入JDBC驅動程式類別 
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr", "123456"); 
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sample","root", "root");   
  
//建立PreparedStatement物件 
PreparedStatement stmt = conn.prepareStatement("select * from emp where empno = ?");

//代入資料    
stmt.setInt(1, empno);

//執行PreparedStatement
ResultSet rs = stmt.executeQuery();
  
//取回一筆資料
if(rs.next()){
	//將資料轉成JSONObject		 
	JSONObject emp = new JSONObject();
	emp.put("ENAME",rs.getString("ENAME"));
	emp.put("JOB",rs.getString("JOB"));
	emp.put("HIREDATE",rs.getString("HIREDATE"));
	  
	//輸出JSONObject
	out.print( emp);
}else{
	out.print( "{}");
}

//關閉ResultSet物件 	
rs.close();
//關閉Statement物件    
stmt.close();
//關閉Connection物件 	 
conn.close(); 
%>   


