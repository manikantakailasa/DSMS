<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*"%>
<html>
<%!
    String userid;
    Connection con;
    ResultSet rs;
    Statement st;
%>
<%
    userid=(String) session.getAttribute("Id");
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
        st=con.createStatement();
        rs=st.executeQuery("select * from usercreation where id like '"+userid+"'");
        if(rs.next())
        {%>
        <head>        
</head>
<body ><table width="100%"><tr><td align="center"><div><img src="images/drdl.jpg" width="50%" height="50%"></div></td></tr>
                <tr><td ><table width="100%" style="text-align:left;background-color: #e2e2e2;padding:5px;  "><colgroup width="50%,*"></colgroup><tr><td>Username:</td><td> <%out.println(rs.getString(2));%></td></tr></table></td></tr>
                <tr><td ><table width="100%" style="text-align:left;padding:5px;  "><colgroup width="50%,*"></colgroup><tr><td>    user id:</td><td><%out.println(rs.getString(1));%></td></tr></table></td></tr>
                <tr><td ><table width="100%" style="text-align:left;background-color: #e2e2e2;padding:5px;  "><colgroup width="50%,*"></colgroup><tr><td> Designation:</td><td><%out.println(rs.getString(3));%></td></tr></table></td></tr>
           </table>
 </body></html>
       <%}
    }
    catch (Exception e)
    {
        System.out.println(e);
    }
    finally
            {
                st.close();
                con.close();
            }
%>    