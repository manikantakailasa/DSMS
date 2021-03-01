<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*"%>
<%!
    String userid;
    Connection con;
    Statement st;
    String from,to,date,msg;
%>
<%
    from=(String)request.getParameter("from2");
    to=(String)request.getParameter("to2");
    date=(String)request.getParameter("dat2");
    msg=(String)request.getParameter("msg2");
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