<%-- 
    Document   : deptdelete
    Created on : Feb 25, 2016, 6:30:39 PM
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
        <form onsubmit="return deptdelete()" name="deptdeleteform">
            <table cellpadding="8">
                <tr>
                    <td>
                        department id:-
                    </td>
                    <td>
                        <input type="text" name="idtxt" required onfocus='document.getElementById("statusspan").innerHTML=""'>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="submit">
                    </td>
                </tr>
            </table>
        </form>
        <span id="statusspan" style="color:red;"></span>
    </body>
</html>
