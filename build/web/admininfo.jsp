<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*"%>
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
        <style>
        .hgh 
        {
          height: 100px;
        }
        .th1,.td1
        {
            height: 20px;
            padding: 4px;
            border-bottom: 1px solid #ddd;
        }
        .tr1:nth-child(even)
        {
            background-color: #e2e2e2;
        }
        </style>
        <table align="top" width="100%">
            <tr class="tr1">
                <td colspan="2" class="hgh td1" style="text-align: center">
                    image
                </td>
            </tr>
            <tr class="tr1">
                <th style="text-align: left" class="th1">
                    Username:
                </th>
                <td class="td1">
            <%out.println(rs.getString(2));%>
                </td>
            </tr>
            <tr class="tr1">
                <th style="text-align: left" class="th1">
                    user id:
                </th>
                <td class="td1">
            <%out.println(rs.getString(1));%>
                </td>
            </tr>
            <tr class="tr1">
                <th style="text-align: left" class="th1">
                    Designation:
                </th>
                <td class="td1">
            <%out.println(rs.getString(3));%>
                </td>
            </tr>
        </table>
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