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
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("select * from usercreation where id like '"+uid+"' ");
                    if (rs.next())
                    {  
                    st.executeUpdate("insert into blockedusers select * from usercreation where id like '"+uid+"'");
                    st.executeUpdate("delete usercreation where id like '"+uid+"' ");
                    }
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