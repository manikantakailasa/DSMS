package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class firstpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header1.html");
    _jspx_dependants.add("/menu2.html");
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table width=100%>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    ");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("            #head\n");
      out.write("            {\n");
      out.write("                height: 130px;\n");
      out.write("                background: #3A3A3A;\n");
      out.write("                align-content: center;\n");
      out.write("                border-radius: 4px;\n");
      out.write("            }\n");
      out.write("            #heading\n");
      out.write("            {\n");
      out.write("                font-family: 'Abel', sans-serif;\n");
      out.write("                color: #3FA449;\n");
      out.write("                font-size: 2em;\n");
      out.write("                align-content: center;\n");
      out.write("                -webkit-margin-before: 0em;\n");
      out.write("                -webkit-margin-after: 0em;\n");
      out.write("                padding-top: 25px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"head\"><div style=\"font-family: 'Abel', sans-serif;\"><h1 id=\"heading\" align=\"center\">DRDL<br>Defence researcha and laboratory</h1></div></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    ");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("            #sm\n");
      out.write("            {\n");
      out.write("                background-color: #4D4D4D;\n");
      out.write("                text-align: left;\n");
      out.write("                line-height: 35px;\n");
      out.write("                border-radius: 4px;\n");
      out.write("            }\n");
      out.write("            .button \n");
      out.write("            {\n");
      out.write("                background-color: #4A4A4A; \n");
      out.write("                border: none;\n");
      out.write("                color: white;\n");
      out.write("                padding: 10px;\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-size: 16px;\n");
      out.write("                border-radius: 2px;\n");
      out.write("                -webkit-transition-duration: 0.4s; /* Safari */\n");
      out.write("                transition-duration: 0.4s;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .button1:hover\n");
      out.write("            {\n");
      out.write("                background-color: #ffffff;\n");
      out.write("                color: black;\n");
      out.write("                box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);\n");
      out.write("            }\n");
      out.write("            .button span \n");
      out.write("            {\n");
      out.write("                cursor: pointer;\n");
      out.write("                display: inline-block;\n");
      out.write("                position: relative;\n");
      out.write("                transition: 0.4s;\n");
      out.write("            }\n");
      out.write("            .button span:after \n");
      out.write("            {\n");
      out.write("                content: 'Â»';\n");
      out.write("                position: absolute;\n");
      out.write("                opacity: 0;\n");
      out.write("                top: 0;\n");
      out.write("                right: -20px;\n");
      out.write("                transition: 0.4s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button:hover span \n");
      out.write("            {\n");
      out.write("                padding-right: 25px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button:hover span:after \n");
      out.write("            {\n");
      out.write("                opacity: 1;\n");
      out.write("                right: 0;\n");
      out.write("            }\n");
      out.write("            .dropdown \n");
      out.write("            {\n");
      out.write("                position: relative;\n");
      out.write("                display: inline-block;\n");
      out.write("            }\n");
      out.write("            .dropdown-content \n");
      out.write("            {\n");
      out.write("                display: none;\n");
      out.write("                position: absolute;\n");
      out.write("                background-color: #f9f9f9;\n");
      out.write("                min-width: 160px;\n");
      out.write("                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("            }\n");
      out.write("            .lgn\n");
      out.write("            {\n");
      out.write("                position: absolute;\n");
      out.write("                right: 0;\n");
      out.write("                background-color: #f9f9f9;\n");
      out.write("                width: 600px;\n");
      out.write("                padding: 30px;\n");
      out.write("                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("                z-index: 1;\n");
      out.write("            }\n");
      out.write("            .dropdown:hover .dropdown-content \n");
      out.write("            {\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            .dropbtn \n");
      out.write("            {\n");
      out.write("                background-color: #4A4A4A;\n");
      out.write("                color: white;\n");
      out.write("                padding: 10px;\n");
      out.write("                font-size: 16px;\n");
      out.write("                border: none;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .dropdown-content a \n");
      out.write("            {\n");
      out.write("                color: black;\n");
      out.write("                padding: 12px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: block;\n");
      out.write("            }           \n");
      out.write("            .dropdown-content a:hover \n");
      out.write("            {\n");
      out.write("                background-color: #f1f1f1\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"sm\">\n");
      out.write("            <div class=\"dropdown\">\n");
      out.write("                <button class=\"button button1 dropbtn\"><span>home</span></button>\n");
      out.write("                <div class=\"dropdown-content\">\n");
      out.write("                    <a href=\"#\">Link 1</a>\n");
      out.write("                    <a href=\"#\">Link 2</a>\n");
      out.write("                    <a href=\"#\">Link 3</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"float:right\">\n");
      out.write("                <button class=\"button button1 dropbtn\"><span>home</span></button>\n");
      out.write("            </div>\n");
      out.write("            <button class=\"button button1\"><span>home</span></button>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td width=25%>\n");
      out.write("                    traverrsing\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    main page\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
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
