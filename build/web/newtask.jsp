<%-- 
    Document   : newtask
    Created on : Mar 7, 2016, 1:48:19 PM
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
        <form method="post" name="newtaskform" onsubmit="return newtask()">
        <table>
            <tr><td>user id:</td><td><input type="text" id="fromid" value='<%=session.getAttribute("Id")%>' required readonly></td></tr>
            <tr><td>To:</td><td><input type="text" id="toid" required></td></tr>
            <tr><td>Up to date:</td><td><input type="date" id="date" required></td></tr>
            <tr><td>message</td><td><input type="textarea" id="msg" required></td></tr>
            <tr><td><input type="submit" name="submit"></td><td><input type="reset" name="reset"></td></tr>
        </table>
        </form>
    </body>
</html>
