<%@page import="java.sql.*" %>
<%@page import="oracle.jdbc.driver.*" %>
<%!
    String id;
    Connection con;
    Statement st;
    ResultSet rs;
%>
<%
  id=request.getParameter("id"); 
  try
  {
  Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
  st=con.createStatement();
  rs=st.executeQuery("select * from taskmonitor where from_u like '"+id+"'");
  if(rs.next())
  {
      %>
      <form name="changeform" onsubmit="return changeupdt()">
      <table border="1" width="100%">
          <tr><td>from:</td><td><input type="text" id="x1" value="<%=id%>" readonly></td></tr>
          <tr><td>to:</td><td><input type="text" id="x2" value="<%=rs.getString(2)%>"></td></tr>
          <tr><td>date</td><td><input type="date" id="x3" value="<%=rs.getString(3)%>"></td></tr>
          <tr><td>message</td><td><input type="text" id="x4" value="<%=rs.getString(4)%>"</td></tr>
          <tr><td colspan="2"><input type="submit" value="submit"</td></tr>
      </table>
      </form>
      
 <% }
con.close();
}
catch (Exception e)
{
System.out.println(e);
}
%>