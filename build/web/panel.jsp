<%-- 
    Document   : panel
    Created on : Oct 4, 2015, 10:50:24 PM
    Author     : PRASHANT KUMAR SINGH
--%>
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
        <script type="text/javascript" src="jquery.js"></script>
    </head>
    <body>
         <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/panel"
     user="root"  password="prashant"/>
         <sql:query dataSource="${snapshot}" var="result">
SELECT * from desh;
         </sql:query>

         <sql:query dataSource="${snapshot}" var="result">
             SELECT * from state WHERE countryid=${param['countryid']};
</sql:query>
             <form>
        <select name="countryid" id="countrylist" onclick="jQuery('#statelist').load('?countryid='+jQuery(this).val(),'#statelist');">
            <c:forEach items="${countrys}" var="country">
                <option value="${country.countryid}">${country.countryname}</option>
            </c:forEach>
        </select>
        <select name="stateid" id="statelist">
            <c:forEach items="${states}" var="state">
                <option value="${state.stateid}">${state.statename}</option>
            </c:forEach>
        </select>
                 <button>Finish</button>
             </form>
    </body>
</html>
