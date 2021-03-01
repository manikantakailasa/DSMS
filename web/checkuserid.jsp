<%@page import="java.sql.*" %>
<%@page import="oracle.jdbc.driver.*" %>
        <%!
            String uid;
            String password;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
            Boolean select=false;
        %>
        <%  
                uid=request.getParameter("uid");
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("select * from usercreation where id='"+uid+"'");
                    if (rs.next())    
                    out.println("<input type=\"hidden\" id=\"status\" value=\"true\">");
                    else
                    out.println("<input type=\"hidden\" id=\"status\" value=\"false\">");
                    st.close();
                    con.close();
                }
                catch (Exception e)
                {
                   System.out.println(e);
                }  
               finally
                {
                    con.close();
                }
            
        %>