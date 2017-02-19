<%-- 
    Document   : action
    Created on : Dec 14, 2015, 11:28:36 AM
    Author     : PRASHANT KUMAR SINGH
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%
    String driver="com.mysql.jdbc.Driver";
    String host="jdbc:mysql://localhost:3306/test";
    String name="root";
    String pass="prashant";
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
     String a=request.getParameter("uname");
    String b=request.getParameter("fname");
    String c=request.getParameter("lname");
    String d=request.getParameter("email");
    String e=request.getParameter("pass");
    String f=request.getParameter("repass");
String query="insert into my values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')";
Class.forName( driver );

// initialize the Connection, with our DB info ...
Connection con = DriverManager.getConnection(host, name, pass );

Statement stat = con.createStatement();
stat.executeUpdate(query);
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
