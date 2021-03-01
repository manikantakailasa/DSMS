<%-- 
    Document   : dept_update
    Created on : Feb 20, 2016, 3:32:14 PM
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
    <form method="post" onsubmit="return deptcheck()" name="deptupdateform">
        <table cellpadding="8">
                <tr>
                    <td>
                        department Id:-
                    </td>
                    <td>
                        <input type="text" name="idtxt">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                    <input type="submit" name="submit" >
                    </td>
                </tr>
            </table>
         </form>
        <span id="statusspan" style="color:red;"></span>
    </body>
    <%@page import="java.sql.*" %>
        <%!
            String id;
            String name;
            ResultSet rs;
            Connection con;            
            Statement st;
            Boolean select=false;
        %>
        <%
                try
                {
                    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                    con=DriverManager.getConnection("jdbc:odbc:DSMS","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("xxxxxxxxxxxxxxxxxx");
                    if (rs.next())
                    {
                        select=true;
                    }
                    st.close();
                    con.close();
                }
                catch (Exception e)
                {
                    select=false;
                }
        %>
</html>
