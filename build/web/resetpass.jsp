<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*"%>
<%!
    String userid,oldp;
    Connection con;
    ResultSet rs;
    Statement st;
%>
<%
    userid=(String) session.getAttribute("Id");
    oldp=request.getParameter("new");
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
        st=con.createStatement();
        st.executeUpdate("update usercreation set password = '"+oldp+"' where id like '"+userid+"'  ");
    }
    catch(Exception e)
    {
     
    }
    finally
    {
        con.close();
    }
%>