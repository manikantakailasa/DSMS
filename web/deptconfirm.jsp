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
                    out.println("<form onsubmit=\"return deptblockinfo()\" name=\"deptreg1\"><table cellpadding=\"8\"><tr><td>name:-</td><td><input type=\"text\" name=\"idtxt\" value=\""+rs.getString(1)+"\" readonly></td></tr>"
                                    +"<tr><td colspan=2><input type=\"hidden\" name=\"nametxt\" value=\""+rs.getString(2)+"\"></td></tr>"
                                    +"<tr><td colspan=2 align=center><input type=\"submit\" value=\"submit\"><input type=\"button\" value=\"cancle\" onclick=\"$('#adminpage').load('deptdelete.jsp');\"></td></tr></table></form>");
                    st.close();
                    con.close();
                    
                }
                catch (Exception e)
                {
                    out.println("");
                }    
  
        
                
                
                
                






%>