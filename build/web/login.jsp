<%@page import="java.sql.*" %>
<%@page import="oracle.jdbc.driver.*" %>
        <%!
            String userid;
            String username;
            String password;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
        %>
        <%  
                userid=request.getParameter("userid");
                password=request.getParameter("password");
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("select * from usercreation where id='"+userid.toLowerCase()+"' and password='"+password.toLowerCase()+"'");
                    if (rs.next())
                    { 
                    session.setAttribute("username",rs.getString(2));
                    session.setAttribute("Id",rs.getString(1));
                    username=rs.getString(1);
                    if (username.equals("12"))
                    {
                        out.println("<input type=\"hidden\" id=\"status\" value=\"true\">");
                    }
                    else
                    {
                    out.println("<input type=\"hidden\" id=\"status\" value=\"true1\">");
                    }
                    }
                    else
                    out.println("<input type=\"hidden\" id=\"status\" value=\"false\">");
                    st.close();
                    con.close();
                }
                catch (Exception e)
                {
                   System.out.println(e);
                }        
            
        %>