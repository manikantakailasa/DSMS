<%-- 
    Document   : dept_reg
    Created on : Feb 20, 2016, 3:13:49 PM
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
         <table align="center">
                <tr>
                    <td>
                        dept Id:-
                    </td>
                    <td>
                        <input type="text" name="idtxt">
                    </td>
                </tr>
                <tr>
                    <td>
                        Name:-
                    </td>
                    <td>
                        <input type="text" name="nametxt">                            
                    </td>
                </tr>
            </table>
        <form method="post">
            <input type="submit" name="submit" >
        </form>
    </body>
    <%@page import="java.sql.*" %>
    <%!
            String id;
            String name;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
            Boolean select=false;
    %>
    <%
                id=request.getParameter("idtxt");
                name=request.getParameter("nametxt");
                if (id!=null&&name!=null)
            {
                try
                {
                    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                    con=DriverManager.getConnection("jdbc:odbc:DSMS","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("xxxxxxxxxx");
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
                if (select==true)
                {
                   out.println("dept inserted"); 
                }
                
            }
    %>
</html>
