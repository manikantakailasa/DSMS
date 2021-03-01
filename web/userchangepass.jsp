
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>        
    <form onsubmit="return resetpassword1()" name="formreset">
    <table>
        <tr><td>old password</td><td><input type="password" id="oldpassword" required onfocus="{$('#spantag').html('');}"></td></tr>
        <tr><td>new password</td><td><input type="password" id="newpassword" required onfocus="{$('#spantag').html('');}"></td></tr>
        <tr><td>confirm password</td><td><input type="password" id="conpassword" required onfocus="{$('#spantag').html('');}"></td></tr>
        <tr><td>
                <input type="submit" name="submit" >
            </td>
            <td><input type="reset" name="reset"></td></tr>
    </table>
        <span id="spantag"></span>    
    </form>
    </body>    
</head>
</html>
