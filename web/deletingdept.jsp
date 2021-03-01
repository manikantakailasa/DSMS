<%@page import="java.sql.*" %>
<%@page import="oracle.jdbc.driver.*" %>
        <%!
            String id;
            ResultSet rs,rs1;
            Connection con=null;            
            Statement st=null;
            Boolean select=false;
        %>
        <%  
                id=request.getParameter("id");
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("select * from department where id like '"+id+"' ");
                    if (rs.next())
                    {  
                    st.executeUpdate("delete usercreation where id like '"+id+"' ");
                    }
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