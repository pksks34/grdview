<%-- 
    Document   : update
    Created on : Sep 27, 2015, 11:46:35 PM
    Author     : PRASHANT KUMAR SINGH
--%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%!
// mysql driver
String driver = "com.mysql.jdbc.Driver";
// the "url" to our DB, the last part is the name of the DB
String url = "jdbc:mysql://localhost:3306/miss";
// the default DB username and password may be the same as your control panel login
String name = "root";
String pass = "prashant";
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
try
{
// Test the DB connection by making an empty table
//String tableStr = "CREATE table test (testid int, name varchar(100))";
    String a=request.getParameter("userid");
    String b=request.getParameter("fname");
    String c=request.getParameter("lname");
    String d=request.getParameter("address");
String query="update pk set fname='"+b+"',lname='"+c+"',address='"+d+"' where userid="+a+"";
Class.forName( driver );

// initialize the Connection, with our DB info ...
Connection con = DriverManager.getConnection( url, name, pass );

Statement stat = con.createStatement();
stat.executeUpdate(query);
ResultSet rs=stat.executeQuery("select * from pk where userid="+a+"");
if(rs.next()){
    if(rs.getString(1).equals(a)){
        response.sendRedirect("signup.jsp");
    }
}
else{
    response.sendRedirect("signup.jsp");
}
%>

<%
// close connection
con.close();
}

catch (SQLException sqle)
{ out.println("<p> Error opening JDBC, cause:</p> <b> " + sqle + "</b>"); }

catch(ClassNotFoundException cnfe)
{ out.println("<p> Error opening JDBC, cause:</p> <b>" + cnfe + "</b>"); }

%>
    </body>
</html>
