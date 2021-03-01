<%-- 
    Document   : block
    Created on : Feb 23, 2016, 5:00:44 PM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form onsubmit="return blockfun()" name="blockform">
        <table cellpadding="6">
            <tr>
                <td>
                    id:-
                </td>
                <td>
                    <input  type="text" name="utxt" required onfocus='document.getElementById("statusspan").innerHTML=""'>
                </td>
            </tr>
            <tr>
                <td>
                    password :-
                </td>
                <td>
                    <input type="password" name="passtxt" required onfocus='document.getElementById("statusspan").innerHTML=""'>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="submit">
                </td>
            </tr>
        </table></form>
        <span id="statusspan" style="color:red;"></span>
    </body>
</html>
