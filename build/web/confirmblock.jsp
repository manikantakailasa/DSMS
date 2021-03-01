<%@page import="java.sql.*" %>



        <%!
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
        %>


<%
    
                try
                {  
                    String uid=request.getParameter("uid");
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("select * from usercreation where id like '"+uid+"'");
                    rs.next();
                    out.println("<form onsubmit=\"return blockinfo()\" name=\"userreg3\"><table ><tr><td>Name:-</td><td><input type=\"text\" name=\"nametxt\" value=\""+rs.getString(2)+"\" readonly></td></tr>"
                                    +"<tr><td>Designation no:-</td><td><input type=\"text\" name=\"desgtxt\" value=\""+rs.getString(3)+"\" readonly></td></tr>"
                                    +"<tr><td>project no:-</td><td><input type=\"text\" name=\"projtxt\" value=\""+rs.getString(4)+"\" readonly></td></tr>"
                                    +"<tr><td>Email:-</td><td><input type=\"text\" name=\"mailtxt\" value=\""+rs.getString(5)+"\" readonly></td></tr>"
                                    +"<tr><td>password:-</td><td><input type=\"text\" name=\"passtxt\" value=\""+rs.getString(6)+"\" readonly></td></tr>"
                                    +"<tr><td>phone:-</td><td>+91<input type=\"text\" name=\"phntxt\" value=\""+rs.getString(7)+"\" readonly></td></tr>"
                                    +"<tr><td>address:-</td><td><textarea cols=70 rows=4 name=\"addtxt\" readonly>"+rs.getString(8)+"</textarea></td></tr>"
                                    +"<tr><td colspan=2><input type=\"hidden\" name=\"idtxt\" value=\""+rs.getString(1)+"\"></td></tr>"
                                    +"<tr><td colspan=2 align=center><input type=\"submit\" value=\"submit\"><input type=\"button\" value=\"cancle\" onclick=\"$('#adminpage').load('block.jsp');\"></td></tr></table></form>");
                            
                    st.close();
                    con.close();
                    
                }
                catch (Exception e)
                {
                    out.println("");
                }    
  
        
                
                
                
                






%>