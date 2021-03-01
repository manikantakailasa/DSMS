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
    oldp=request.getParameter("old");
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
        st=con.createStatement();
        rs=st.executeQuery("select * from usercreation where id like '"+userid+"' and  LOWER(password) like '"+oldp+"'  ");
        if(rs.next())
        out.println("<input type=\"hidden\" value=\"true\" id=\"status\">");  
        else
        out.println("<input type=\"hidden\" value=\"false\" id=\"status\">");       
    }
    catch(Exception e)
    { 
        out.println("<input type=\"hidden\" value=\"true\" id=\"status\">");  
    }
    finally
    {
        con.close();
    }
%>