<%-- 
    Document   : sample
    Created on : Feb 16, 2016, 7:10:33 PM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body align="center">
        <div align="center" style="height:100%;width:100%;padding-top:80px;">
            <div style="box-shadow:0px 0px 2px black;width: 70%;min-height: 85%;padding:20px;">
         <form method="post"  name="userreg" onsubmit="return usrreg()">
             <table align="center">
                <tr>
                    <td>
                        user Id:-
                    </td>
                    <td>
                        <input type="text" name="idtxt" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        Name:-
                    </td>
                    <td>
                        <input type="text" name="nametxt" required>                            
                    </td>
                </tr>
                <tr>
                    <td>
                        Designation no:-
                    </td>
                    <td>
                        <input type="text" name="desgtxt" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        project no:-
                    </td>
                    <td>
                        <input type="text" name="projtxt" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email:-
                    </td>
                    <td>
                        <input type="text" name="mailtxt" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        password:-
                    </td>
                    <td>
                        <input type="text" name="passtxt" required>
                    </td>                        
                </tr>
                <tr>
                    <td>
                        phone:-
                    </td>
                    <td>
                        +91<input type="text" name="phntxt" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        address:-
                    </td>
                    <td>
                        <textarea rows="4" cols="70" name="addtxt" required></textarea>
                    </td>
                </tr>
            </table>
            <input type="submit" name="submit" >
        </form>
        </div>
        </div>
    </body>    
</html>
