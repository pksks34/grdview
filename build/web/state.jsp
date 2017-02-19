<%-- 
    Document   : state
    Created on : Oct 3, 2015, 5:33:12 PM
    Author     : PRASHANT KUMAR SINGH
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%
    String driver="com.mysql.jdbc.Driver";
    String host="jdbc:mysql://localhost:3306/panel";
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
        <form>
            <select name="state">
                <option value="">select</option>
        <%
    try{
        
        Class.forName(driver);
        Connection con=DriverManager.getConnection(host,name,pass);
        Statement stat=con.createStatement();
        ResultSet rs=stat.executeQuery("select * from state");
    while(rs.next()){
       String a=rs.getString(2);
       System.out.println(a);
    
    %>
    <option value="<%=a%>"><%=a%></option>
    <%
    }
    con.close();
    }
    catch(SQLException sqle)
    {out.println("<p>Error opening JDBC,cause:</p><b>"+sqle+"</b>");}
    catch(ClassNotFoundException cnfe){
        out.println("<p>Error opening JDBC,cause:</p><b>"+cnfe+"</b>");
    }
    %>
            </select>
        </form>
    </body>
</html>
