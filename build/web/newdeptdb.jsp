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
                name=request.getParameter("newdepttxt");
                id=request.getParameter("deptidtxt");
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    st.executeUpdate("insert into department values('"+name+"','"+id+"')");
                    st.close();
                    con.close();
                }
                catch (Exception e)
                {
                    System.out.println(e);
                }
                out.println("alert(\"your registration has sucessfull\")");
        %>