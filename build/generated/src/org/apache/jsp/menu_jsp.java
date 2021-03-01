package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<link href=\"http://fonts.googleapis.com/css?family=Abel\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"menustyle.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <table width=\"220\" cellspacing=\"0\" cellpadding=\"0\" height=\"100%\">\n");
      out.write("    <tr>\n");
      out.write("         <ul id=\"nav\">\n");
      out.write("        <td bgcolor=\"#D8D8D8\" valign=\"top\">\n");
      out.write("       \n");
      out.write("        <li><a href=\"home.jsp\">&nbsp;&nbsp;Home</a>\n");
      out.write("        </li>\n");
      out.write("        <!--<li><a href=\"addCompanyDetails.jsp\">&nbsp;&nbsp;Add Company Details</a>     \n");
      out.write("                    </li>-->\n");
      out.write("        <!--<li><a href=\"modifyCompanyDetails.action\">&nbsp;&nbsp;Modify Company Details</a>\n");
      out.write("            <ul id = \"subMenu\">\n");
      out.write("            <li>Sub Menu 1\n");
      out.write("            </li>\n");
      out.write("            <li>Sub Menu 2\n");
      out.write("            </li>\n");
      out.write("            <li>Sub Menu 3  \n");
      out.write("            </li>\n");
      out.write("            <li>Sub Menu 4\n");
      out.write("            </li>\n");
      out.write("            </ul>\n");
      out.write("        </li>-->\n");
      out.write("         <li><a href=\"deleteCompanyDetails.action\">&nbsp;&nbsp;Delete Company Details</a>\n");
      out.write("         </li>\n");
      out.write("<li><a href=\"search.jsp\">&nbsp;&nbsp;Search</a>\n");
      out.write("</li>\n");
      out.write("<li><a href=\"viewAllDetails.action\">&nbsp;&nbsp;View All Details</a>\n");
      out.write("</li> </td>\n");
      out.write("        </ul>\n");
      out.write("               \n");
      out.write("        </tr>\n");
      out.write("    </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
