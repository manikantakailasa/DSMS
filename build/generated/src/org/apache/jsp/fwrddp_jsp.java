package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import oracle.jdbc.driver.*;

public final class fwrddp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    String id;
    Connection con;
    Statement st;
    ResultSet rs;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write('\n');

  id=request.getParameter("id"); 
  System.out.println(id);
  try
  {
  Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost1522/xe","system","mani");
  st=con.createStatement();
  rs=st.executeQuery("select * from taskmonitor where to_u like '"+id+"'");
  if(rs.next())
  {
      
      out.write("\n");
      out.write("      <table>\n");
      out.write("          <tr><td>from:</td><td><input type=\"text\" value=\"");
      out.print(id);
      out.write("\" readonly></td></tr>\n");
      out.write("          <tr><td>to:</td><td><input type=\"text\"></td></tr>\n");
      out.write("          <tr><td>date</td><td><input type=\"date\"></td></tr>\n");
      out.write("          <tr><td>message</td><td><input type=\"text\" value=\"");
      out.print(rs.getString(4));
      out.write("\"</td></tr>\n");
      out.write("      </table>\n");
      out.write(" ");
 }
}
catch (Exception e)
{
System.out.println(e);
}
con.close();

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
