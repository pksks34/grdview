<%-- 
    Document   : sign
    Created on : Dec 14, 2015, 11:06:19 AM
    Author     : PRASHANT KUMAR SINGH
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function validate(){
                var x=document.f1.pass.value;
                var y=document.f1.repass.value;
                if(x!=y){
                    document.getElementById("b").innerHTML="password not match";
                    return false;
                }
                else{
                    return true;
                }
            }
        </script>
    </head>
    <body>
        <form action="action.jsp" name="f1" onsubmit="return validate()">
            <p>Username:<input type="text" name="uname" value="" required="required"></p>
            <p>First name:<input type="text" name="fname" value="" required="required"></p>
            <p>Last name:<input type="text" name="lname" value="" required="required"></p>
            <p>Email:<input type="email" name="email" value="" required="required"></p>
            <p>Password:<input type="password" name="pass" value="" required="required"><span id="a"></span></p>
            <p>Re-Password:<input type="password" name="repass" value=""><span id="b"></span></p>
            <p><input type="submit" name="submit" value="submit"></p>
        </form>
    </body>
</html>
