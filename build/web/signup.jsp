<%-- 
    Document   : signup
    Created on : Sep 27, 2015, 11:41:24 PM
    Author     : PRASHANT KUMAR SINGH
--%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery.js"></script>
    </head>
    <body>
        <%
            response.setIntHeader("Refresh",10);
            %>
        <table align="center">
            <tr>
            <td width="400px">
                <form id="myForm" method="post">
                    <p align="center">USER ID<input type="text" name="userid" value="" placeholder="user id" required="required" size="30"/></p>
                    <p align="center">FIRST NAME<input type="text" name="fname" value="" placeholder="First name" required="required" size="30"></p>
                    <p align="center">LAST NAME<input type="text" name="lname" value="" placeholder="Last name" required="required" size="30"></p>
            <p align="center">Address<textarea name="address" rows="8" cols="30">
                </textarea></p>
                <input type="button" name="first_btn" value="add" id="first_btn" style="margin-left: 5px; padding-left: 5px;">
                <input type="button" name="second_btn" value="edit" id="second_btn" style="margin-left: 10px; padding-left: 10px;">
              
                <input type="button" name="third_btn" value="delete" id="third_btn" style="margin-left: 10px; padding-left: 10px;">
            </form>
            </td>
            
           
            </tr>
        </table>
        <script>

$('#first_btn').click(function(){
    var form = document.getElementById("myForm")
    form.action = "insert.jsp";
    form.submit();
});

$('#second_btn').click(function(){
    var form = document.getElementById("myForm")
    form.action = "update.jsp";
    form.submit();
});
$('#third_btn').click(function(){
    var form = document.getElementById("myForm")
    form.action = "delete.jsp";
    form.submit();
});
</script>
        
       
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/miss"
     user="root"  password="prashant"/>
       
<sql:query dataSource="${snapshot}" var="result">
SELECT userid,fname,lname,address from pk;

</sql:query>
 
<table border="1" width="100%">
<tr>
    <th style="background-color: buttonface;">USER ID</th>
   <th style="background-color: buttonface;">FIRST NAME</th>
   <th style="background-color: buttonface;">LAST NAME</th>
   <th style="background-color: buttonface;">address</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
    <td style="background-color: beige;"><c:out value="${row.userid}"/></td>
   <td style="background-color: beige;"><c:out value="${row.fname}"/></td>
   <td style="background-color: beige;"><c:out value="${row.lname}"/></td>
   <td style="background-color: beige;"><c:out value="${row.address}"/></td>
</tr>
</c:forEach>
</table>
    </body>
</html>
