<%-- 
    Document   : insert
    Created on : Sep 27, 2015, 11:49:47 PM
    Author     : PRASHANT KUMAR SINGH
--%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%!
// mysql driver
String driver = "com.mysql.jdbc.Driver";
// the "url" to our DB, the last part is the name of the DB
String host = "jdbc:mysql://localhost:3306/miss";
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
String query="insert into pk values("+a+",'"+b+"','"+c+"','"+d+"')";
Class.forName( driver );

// initialize the Connection, with our DB info ...
Connection con = DriverManager.getConnection( host, name, pass );

Statement stat = con.createStatement();
stat.executeUpdate(query);
response.sendRedirect("signup.jsp");
%>

<p> success.... </p>

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
