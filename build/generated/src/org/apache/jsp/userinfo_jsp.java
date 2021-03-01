package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import oracle.jdbc.driver.*;

public final class userinfo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    String userid;
    Connection con;
    ResultSet rs;
    Statement st;

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

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write('\n');

    userid=(String) session.getAttribute("Id");
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
        st=con.createStatement();
        rs=st.executeQuery("select * from usercreation where id like '"+userid+"'");
        if(rs.next())
        {
      out.write("\n");
      out.write("        <head>        \n");
      out.write("</head>\n");
      out.write("<body ><table width=\"100%\"><tr><td align=\"center\"><div><img src=\"images/drdl.jpg\" width=\"50%\" height=\"50%\"></div></td></tr>\n");
      out.write("                <tr><td ><table width=\"100%\" style=\"text-align:left;background-color: #e2e2e2;padding:5px;  \"><colgroup width=\"50%,*\"></colgroup><tr><td>Username:</td><td> ");
out.println(rs.getString(2));
      out.write("</td></tr></table></td></tr>\n");
      out.write("                <tr><td ><table width=\"100%\" style=\"text-align:left;padding:5px;  \"><colgroup width=\"50%,*\"></colgroup><tr><td>    user id:</td><td>");
out.println(rs.getString(1));
      out.write("</td></tr></table></td></tr>\n");
      out.write("                <tr><td ><table width=\"100%\" style=\"text-align:left;background-color: #e2e2e2;padding:5px;  \"><colgroup width=\"50%,*\"></colgroup><tr><td> Designation:</td><td>");
out.println(rs.getString(3));
      out.write("</td></tr></table></td></tr>\n");
      out.write("           </table>\n");
      out.write(" </body></html>\n");
      out.write("       ");
}
    }
    catch (Exception e)
    {
        System.out.println(e);
    }
    finally
            {
                st.close();
                con.close();
            }

      out.write("    ");
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
