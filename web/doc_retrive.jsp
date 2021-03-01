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
    int x=Integer.parseInt(id);
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
        st=con.createStatement();
        if (x==18)
        {
        rs=st.executeQuery("select * from docdatabase");
        }
        else
        {
        rs=st.executeQuery("select * from docdatabase where docacctype like 1");
        }
        %>
        <style>
            .nth:nth-child(even) 
            {
                background-color: #f2f2f2
            }
        </style>
        <table style="border: 1px solid black;" width="100%">
         <tr bgcolor="#3A3A3A" ><th style="padding: 10px;color: whitesmoke;">DOC_id</th><th style="padding: 10px;color: whitesmoke;">FileNumber</th><th style="padding: 10px;color: whitesmoke;">DOC Type</th><th style="padding: 10px;color: whitesmoke;">DOC Name</th><th style="padding: 10px;color: whitesmoke;">DOC pre Name</th><th style="padding: 10px;color: whitesmoke;">view</th></tr>
            <%
                while(rs.next())
                {
                    %>
                    
                    <tr class="nth">
                        <td style="padding: 10px"><%out.println(rs.getString(1));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(2));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(3));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(5));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(7));%></td>
                        <td><a href="../DisplayPDFServlet?Dono=<%out.print(rs.getString("controlno"));%>">View</a></td>
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