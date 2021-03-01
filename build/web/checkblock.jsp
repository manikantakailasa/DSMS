<%@page import="java.sql.*" %>
<%@page import="oracle.jdbc.driver.*" %>
        <%!
            String uid;
            String pwd;
            ResultSet rs,rs1;
            Connection con=null;            
            Statement st=null;
            Boolean select=false;
        %>
        <%  
                uid=request.getParameter("uid");
                pwd=request.getParameter("pwd");
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("select * from usercreation , higherauth where id like '"+uid+"' and pwd like '"+pwd+"'");
                    if (rs.next())
                    {  
                    out.println("<input type=\"hidden\" id=\"status\" value=\"true\">");
                    }
                    else
                    out.println("<input type=\"hidden\" id=\"status\" value=\"false\">");
                }
                catch (Exception e)
                {
                   System.out.println(e+"n,snfn,dsn,fn,");
                }        
                finally
                {
                    con.close();
                }    
            
        %>