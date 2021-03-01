<%@page import="java.sql.*" %>



        <%!
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
        %>


<%
    
                try
                {  
                    String id=request.getParameter("id");
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("select * from department where id like '"+id+"'");
                    rs.next();
                    out.println("<form onsubmit=\"return deptnewinfo()\" name=\"deptreg\"><table ><tr><td>Name:-</td><td><input type=\"text\" name=\"nametxt\" value=\""+rs.getString(2)+"\"></td></tr>"
                                    +"<tr><td colspan=2><input type=\"hidden\" name=\"idtxt\" value=\""+rs.getString(1)+"\"></td></tr>"
                                    +"<tr><td colspan=2 align=center><input type=\"submit\" value=\"submit\"></td></tr></table></form>");
                            
                    st.close();
                    con.close();
                    
                }
                catch (Exception e)
                {
                    out.println("");
                }    
%>