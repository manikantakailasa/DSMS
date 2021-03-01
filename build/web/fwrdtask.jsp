<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*"%>
<%!
    String userid;
    Connection con;
    Statement st;
    String from,to,date,msg;
%>
<%
    from=(String)request.getParameter("from1");
    to=(String)request.getParameter("to1");
    date=(String)request.getParameter("dat1");
    msg=(String)request.getParameter("msg1");
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
        st=con.createStatement();
        st.executeUpdate("insert into taskmonitor values('"+from+"','"+to+"','"+date+"','"+msg+"')");
        st.close();
        con.close();
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>