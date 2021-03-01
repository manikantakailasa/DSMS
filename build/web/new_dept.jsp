<%-- 
    Document   : new_dept
    Created on : Feb 25, 2016, 12:05:55 PM
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
        <form onsubmit="return newdeptcheck()" name="newdeptform">
            <table cellpadding="10" align="center">
                <tr>
                    <td>
                        department name:-
                    </td>
                    <td>
                        <input type="text" name="newdepttxt" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        department id:-
                    </td>
                    <td>
                        <input type="text" name="deptidtxt" required>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="submit">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
