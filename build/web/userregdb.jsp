<%@page import="java.sql.*" %>
        <%!
            String id;
            String name;
            String designation_no;
            String project_no;
            String emailid;
            String password;
            String phone;
            String address;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
            Boolean select=false;
            int i;
        %>
        <%
                id=request.getParameter("idtxt");
                name=request.getParameter("nametxt");
                designation_no=request.getParameter("desgtxt");
                project_no=request.getParameter("projtxt");
                emailid=request.getParameter("mailtxt");
                password=request.getParameter("passtxt");
                phone=request.getParameter("phntxt");
                address=request.getParameter("addtxt");
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    st.executeUpdate("insert into usercreation values('"+id+"','"+name+"','"+designation_no+"','"+project_no+"','"+emailid+"','"+password+"','"+phone+"','"+address+"')");
                    st.close();
                    con.close();
                }
                catch (Exception e)
                {
                    System.out.println(e);
                }
                out.println("alert(\"your registration has sucessfull\")");
                
 %>