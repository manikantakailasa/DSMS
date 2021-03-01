<%-- 
    Document   : user_update
    Created on : Feb 20, 2016, 2:50:44 PM
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
       <form onsubmit="return userupdate()" name="userupdateform">
            <table method="post" cellpadding="10">
                <tr>
                    <td>
                        user Id:-
                    </td>
                    <td>
                        <input type="text" name="uid" onfocus='document.getElementById("statusspan").innerHTML=""'>
                    </td>
                </tr>
             <tr><td colspan="2" align="center"> <input type="submit" value="submit"></td></tr> 
            </table>
       </form>  
        <span id="statusspan" style="color:red;"></span>
    </body>
</html>
