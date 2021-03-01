<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*"%>
<%!
    Connection con;
    Statement st;
    ResultSet rs;
    String id;
%>
<%
    id=(String)session.getAttribute("Id");
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
        st=con.createStatement();
        rs=st.executeQuery("select * from taskmonitor where to_u like '"+id+"'");
        %>
        <style>
            .nth:nth-child(even) 
            {
                background-color: #f2f2f2
            }
        </style>
        <table style="border: 1px solid black;" width="100%">
         <tr bgcolor="#3A3A3A" ><th style="padding: 10px;color: whitesmoke;">From_id</th><th style="padding: 10px;color: whitesmoke;">To_id</th><th style="padding: 10px;color: whitesmoke;">Last Date</th><th style="padding: 10px;color: whitesmoke;">Message</th></tr>
            <%
                while(rs.next())
                {
                    %>
                    
                    <tr class="nth" onclick='return fwrdtask(<%=rs.getString(2)%>)'>
                        <td style="padding: 10px"><%out.println(rs.getString(1));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(2));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(3));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(4));%></td>
                        </tr>
                    
                    <%}
                    con.close();
                    %>
</table>
<%
    }
    catch (Exception e)
    {
        System.out.println(e);
    }
    
%>