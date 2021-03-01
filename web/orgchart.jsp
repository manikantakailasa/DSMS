<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*"%>
<%!
    String userid;
    Connection con;
    ResultSet rs,rs1;
    Statement st;
%>
<%
    userid=(String) session.getAttribute("Id");
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
        st=con.createStatement( rs.TYPE_SCROLL_INSENSITIVE, rs.CONCUR_READ_ONLY);
        %>
        <style>
            .td1
            {
                height: 100px;
                width: 100px;
            }
        </style>
        <table style="border: 1px solid black;">
            <tr>
                <td class="td1" valign="bottom" align="center">
         <%
            rs1=st.executeQuery("select * from usercreation where id like '"+userid+"'");
            rs1.next();
            out.println("id:"+rs1.getString(1));
        %>
                </td>
            </tr>
        </table>
        <div style="width: 1px;background-color: black;height: 45px;" align="center" ></div>
        <hr width="80%" style=" -webkit-margin-before: 0;-webkit-margin-after: 0;border: 0;height: 1px;background: #333;background-image: linear-gradient(to right, #ccc, #333, #ccc);" >
        
        <table style="border-spacing: 0px;">
            <tr>
            
                <%
        rs=st.executeQuery("select * from usercreation where desgno = (select desgno from usercreation where id like '"+userid+"')-1");
        int size;
        rs.last();
        size = rs.getRow();
        rs.beforeFirst();
        while(size>0)
        {
            %>
            <td style="padding:0px 50px 0px 50px"><div style="width: 1px;background-color: black;height: 65px;" align="center" ></div></td>
            <%
                size--;
        }
        int i=0;
         %>
            </tr>
        </table>
         <table style="border-collapse: collapse;" border="1">
            <tr>
         <%
        while(rs.next())
        { 
        i++;%>
            <td class="td1" align="center" valign="bottom" onclick='return orgchart1(<%=i%>)'>
            <%out.println("id:"+rs.getString(1));out.println("name:"+rs.getString(2));
            out.println("<input type=\"hidden\" id=\""+i+"\" value='"+rs.getString(1)+"'");
            %>
                </td>
            <%
        }%>
        </tr>
        </table>
    <%}
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