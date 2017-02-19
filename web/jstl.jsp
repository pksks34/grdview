<%-- 
    Document   : jstl
    Created on : Oct 4, 2015, 2:49:37 PM
    Author     : PRASHANT KUMAR SINGH
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<sql:setDataSource driver="mysql.jdbc.driver.Driver" url="jdbc:mysql://localhost:3306/panel" user="root" password="prashant" var="db" scope="request" />
<sql:query dataSource="${db}" var="countrys" sql="SELECT * FROM desh" />
<sql:query dataSource="${db}" var="states" sql="SELECT * FROM state WHERE countryid=${param['countryid']}" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
        <select name="countryid" id="countrylist" onclick="jQuery('#statelist').load('?countryid='+jQuery(this).val(),'#statelist');">
            <c:forEach items="${countrys}" var="country">
                <option value="${country.id}">${country.name}</option>
            </c:forEach>
        </select>
        <select name="stateid" id="statelist" onclick="jQuery('#citylist').load('?cityid='+jQuery(this).val(),'#citylist');">
            <c:forEach items="${states}" var="state">
                <option value="${state.id}">${state.name}</option>
            </c:forEach>
        </select>
       
        <button>Finish</button>
        </form>
    </body>
</html>
