<%@page import="java.sql.*" %>
<%@page import="oracle.jdbc.driver.*" %>
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
        rs=st.executeQuery("select * from taskmonitor where from_u like '"+id+"'");
        %>
        <style>
            .nth2:nth-child(odd) 
            {
                background-color: #f2f2f2
            }
        </style>
        <table>
            <tr bgcolor="#3A3A3A"><th style="padding: 10px;color: whitesmoke;">From user</th><th style="padding: 10px;color: whitesmoke;">To user</th><th style="padding: 10px;color: whitesmoke;">Date</th><th style="padding: 10px;color: whitesmoke;">Message</th></tr>
                <%
                    while(rs.next())
                    {
                        %>
            <tr class="nth" onclick='return changetask(<%=rs.getString(1)%>)'>
                        <td style="padding: 10px"><%out.println(rs.getString(1));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(2));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(3));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(4));%></td>
            </tr>
                        <%
                    }
                %>
        </table>
        <%
        
    }
    catch (Exception e)
    {
        System.out.println(e);
    }
%>
