package org.apache.jsp.dms;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Retrieve_005fDoc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/dms/DMSMainMenu.jsp");
  }

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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"../StyleSheets/Insertcss.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("        <link href=\"../StyleSheets/TableStylee.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("      <script type=\"text/javascript\" src=\"../JavaScript/FileTypejavascript.js\"></script>  \n");
      out.write("      <script language=\"javascript\" type=\"text/javascript\" src=\"../JavaScript/datetimepicker.js\">\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("        <title>Insert Document</title>\n");
      out.write("    </head>\n");
      out.write("    <body>  \n");
      out.write("        <div class=\"divMain\" >   \n");
      out.write("            \n");
      out.write("          ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"> \n");
      out.write("        <title>Main Menu</title>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("/* CSS Document */\n");
      out.write("*{\n");
      out.write("\tmargin:0px;\n");
      out.write("\tpadding:0px;\n");
      out.write("}\n");
      out.write("body\n");
      out.write("{\n");
      out.write("\tbackground: -moz-linear-gradient(center left,lightblue,white)repeat scroll 0 0 white;\t\n");
      out.write("}\n");
      out.write(".mainmenu\n");
      out.write("{\n");
      out.write("\t margin-top: 20px;\n");
      out.write("\tmargin-right:auto;\n");
      out.write("\tmargin-left: 80px;\n");
      out.write("        margin-right: 80px;\n");
      out.write("        background-color: greenyellow;\n");
      out.write("\theight: 35px;\n");
      out.write("\tborder-radius:50px;\n");
      out.write("        text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".mainmenu ul\n");
      out.write("{\n");
      out.write("\tlist-style:none;\n");
      out.write("\tmargin-left: 60px;\n");
      out.write("       \n");
      out.write("}\n");
      out.write("\n");
      out.write(".mainmenu ul li\n");
      out.write("{\t\n");
      out.write("        background-color: lightblue;\n");
      out.write("\tborder:1px solid white;\n");
      out.write("\twidth:150px;\n");
      out.write("\theight:35px;\n");
      out.write("\ttext-align: center;\n");
      out.write("\tline-height:35px;\n");
      out.write("\tfloat:left;\t\n");
      out.write("\tposition:relative;\n");
      out.write("\tborder-radius:50px;\t\t\n");
      out.write("}\n");
      out.write("\n");
      out.write(".mainmenu ul li a\n");
      out.write("{\n");
      out.write("\ttext-decoration:none;\n");
      out.write("\tcolor:#663399;\t\n");
      out.write("\tdisplay:block;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".mainmenu ul li a:hover\n");
      out.write("{\n");
      out.write("         background-color: lightcyan;\n");
      out.write("\tborder-radius:50px;\n");
      out.write("\tcolor:#3366FF;\n");
      out.write("}\n");
      out.write(".mainmenu ul ul\n");
      out.write("{\n");
      out.write("\tposition: absolute;\n");
      out.write("\tdisplay:none;\n");
      out.write("\tmargin-left: 0px;\n");
      out.write("}\n");
      out.write(".mainmenu ul li:hover > ul\n");
      out.write("{\n");
      out.write("\tdisplay:block;\n");
      out.write("}\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"mainmenu\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"dms/Insert_Doc.jsp\">Insert Document</a></li>\n");
      out.write("                <li><a href=\"dms/Update_Doc.jsp\">Update Document</a></li>               \n");
      out.write("                <li><a href=\"dms/Retrieve_Doc.jsp\">View Document</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("   <br>\n");
      out.write("          <div style=\"background: pink;\"> \n");
      out.write("              <form onsubmit=\"return retrivefun()\">\n");
      out.write("          <table class=\"tableStylee\">\n");
      out.write("              <tr>\n");
      out.write("                  <td colspan=\"4\" class=\"td2\"> \n");
      out.write("                            DOCUMENT RETRIEVE FORM\n");
      out.write("                    </td>               \n");
      out.write("                </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>   \n");
      out.write("                      File No:\n");
      out.write("                     <select  id=\"DFNo1\" class=\"combobox\" onchange=\"fileName()\" >\n");
      out.write("                        <option>ALL</option>\n");
      out.write("                        <option>Project1</option>\n");
      out.write("                        <option>Project2</option>\n");
      out.write("                        <option>Project3</option>\n");
      out.write("                        <option>Project4</option>\n");
      out.write("                        <option>Project5</option>\n");
      out.write("                        <option>Project6</option>\n");
      out.write("                        <option>Project7</option>\n");
      out.write("                        <option>Project8</option>\n");
      out.write("                        <option>Project9</option>\n");
      out.write("                    </select>                      \n");
      out.write("                </td>\n");
      out.write("                   <td>   \n");
      out.write("                       Type :\n");
      out.write("                     <select id=\"DTY1\" class=\"combobox\">\n");
      out.write("                          <option>ALL</option>\n");
      out.write("                        <option>MOM</option>\n");
      out.write("                        <option>LTR</option>\n");
      out.write("                        <option>DRW</option>\n");
      out.write("                        <option>DOC</option>\n");
      out.write("                        <option>FAX</option>\n");
      out.write("                        <option>ION</option>                        \n");
      out.write("                    </select> \n");
      out.write("                </td>\n");
      out.write("                   <td>\n");
      out.write("                     Prepared Person:\n");
      out.write("                    <select id=\"DPP1\" class=\"combobox\">\n");
      out.write("                         <option>ALL</option>\n");
      out.write("                        <option>Name1</option>\n");
      out.write("                        <option>Name2</option>\n");
      out.write("                        <option>Name3</option>\n");
      out.write("                        <option>Name4</option>\n");
      out.write("                        <option>Name5</option>\n");
      out.write("                        <option>Name6</option>                       \n");
      out.write("                    </select>\n");
      out.write("                </td>  \n");
      out.write("                <td colspan=\"3\" style=\"text-align: center\"><input type=\"submit\" value=\"Retrieve\" name=\"Retrieve\" class=\"buttonclass\"/></td></tr>\n");
      out.write("          </table>   \n");
      out.write("                  </form>\n");
      out.write("          </div>\n");
      out.write("          <div id=\"Re\" style=\"width: 100%; border: 3px;\">\n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("            \n");
      out.write("        </div>\n");
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
