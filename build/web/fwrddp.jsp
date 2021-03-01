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
  rs=st.executeQuery("select * from taskmonitor where to_u like '"+id+"'");
  if(rs.next())
  {
      %>
      <form name="fwrdform" onsubmit="return fwrdupdt()">
      <table border="1" width="100%">
          <tr><td>from:</td><td><input type="text" id="from1" value="<%=id%>" readonly></td></tr>
          <tr><td>to:</td><td><input type="text" id="to1"></td></tr>
          <tr><td>date</td><td><input type="date" id="dat1"></td></tr>
          <tr><td>message</td><td><input type="text" id="msg2" value="<%=rs.getString(4)%>"</td></tr>
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