<%@page import="java.sql.*" %>
        <%!
            String id;
            String name;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
            Boolean select=false;
        %>
        <%
                id=request.getParameter("idtxt");
                name=request.getParameter("nametxt");
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    st.executeUpdate("delete department where id='"+id+"'");
                    st.executeUpdate("insert into department values('"+id+"','"+name+"')");
                    st.close();
                    con.close();
                  
                }
                catch (Exception e)
                {
                    select=false;
                }
                finally
                {
                    con.close();
                }
                out.println("alert(\"your registration has sucessfull\")");
                
 %>