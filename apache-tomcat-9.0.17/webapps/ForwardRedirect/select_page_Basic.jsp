<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>

<HTML>
<HEAD>
<TITLE> �d�߭��u��� </TITLE>
</HEAD>
<BODY>
<%
       Context ctx = new javax.naming.InitialContext();
       DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/TestDB");
       Connection con =  ds.getConnection();
       Statement stmt = con.createStatement();
String empno = request.getParameter("empno");
       ResultSet rs = stmt.executeQuery("SELECT EMPNO ���u�s��,  ENAME ���u�m�W,  JOB ¾��, HIREDATE ���Τ��,  SAL �~�� from emp2 where empno="+empno);
System.out.println("empno="+empno);
            
       ResultSetMetaData rsmd = rs.getMetaData();
	     int numberOfColumns = rsmd.getColumnCount();
%>

 <table border="1" bordercolor="blue">

     <tr> 
       <% for (int i = 1; i <= numberOfColumns; i++) { %>
	         <th><%=rsmd.getColumnName(i)%></th>
	     <% } %>      
	   </tr>
   
   <% while (rs.next()) { %>
     <tr>
        <% for (int i = 1; i <= numberOfColumns; i++) { %> 
           <td><%=rs.getString(i)%></td>
        <% } %>
     </tr>
   <% } %>

 </table>

<%con.close(); %>

</BODY>
</HTML>