package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mainpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header1.html");
    _jspx_dependants.add("/footer.html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <script type=\"text/javascript\" src=\"jquery-1.9.1.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("         function loginvalidate()\n");
      out.write("         {\n");
      out.write("           var id=document.loginform.username.value;\n");
      out.write("           var pass=document.loginform.password.value;\n");
      out.write("           $(\"#tempdiv\").load(\"login.jsp\",{\"userid\":id,\"password\":pass},function()\n");
      out.write("           {\n");
      out.write("           var status=document.getElementById(\"status\").value;\n");
      out.write("           if(status===\"false\")\n");
      out.write("           {\n");
      out.write("            document.loginform.username.value=\"\";\n");
      out.write("            document.loginform.password.value=\"\";\n");
      out.write("            document.getElementById(\"statusspan\").innerHTML=\"invalid login credentials\";\n");
      out.write("           }\n");
      out.write("           else\n");
      out.write("           if (status===\"true\")\n");
      out.write("           window.location.assign(\"adminpage.jsp\");\n");
      out.write("           else\n");
      out.write("           window.location.assign(\"userloginpage.jsp\");\n");
      out.write("           });\n");
      out.write("           \n");
      out.write("         return false;\n");
      out.write("         }\n");
      out.write("         $(document).ready(function()\n");
      out.write("         {\n");
      out.write("             $(\"#menubar\").load(\"menu1.jsp\");\n");
      out.write("         });\n");
      out.write("        </script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            table\n");
      out.write("            {\n");
      out.write("                border-spacing: 2px;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 400px;\n");
      out.write("            }\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("             \n");
      out.write("            div#slider \n");
      out.write("            { \n");
      out.write("                overflow: hidden; \n");
      out.write("            }\n");
      out.write("            div#slider figure img \n");
      out.write("            { \n");
      out.write("                width: 20%; \n");
      out.write("                float: left; \n");
      out.write("            }\n");
      out.write("            div#slider figure \n");
      out.write("            { \n");
      out.write("                position: relative;\n");
      out.write("                width: 500%;\n");
      out.write("                margin: 0;\n");
      out.write("                left: 0;\n");
      out.write("                text-align: left;\n");
      out.write("                font-size: 0;\n");
      out.write("                animation: 20s slidy infinite; \n");
      out.write("            }\n");
      out.write("            @keyframes slidy \n");
      out.write("            {\n");
      out.write("                0% { left: 0%; }\n");
      out.write("                20% { left: 0%; }\n");
      out.write("                25% { left: -100%; }\n");
      out.write("                45% { left: -100%; }\n");
      out.write("                50% { left: -200%; }\n");
      out.write("                70% { left: -200%; }\n");
      out.write("                75% { left: -300%; }\n");
      out.write("                95% { left: -300%; }\n");
      out.write("            }\n");
      out.write("        </style>     \n");
      out.write("    </head>\n");
      out.write("    ");

      String st="guest"; 
      try
      {
       st=(String) session.getAttribute("username");
       if(st.equals("guest"))
       {}    
      }
      catch(Exception e)
      {
        session.setAttribute("username","guest");
      }  

    
      out.write("\n");
      out.write("    <!--<script type=\"text/javascript\" src=\"jquery.min.js\"></script>-->\n");
      out.write("    <body>\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <div>\n");
      out.write("                        ");
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
      out.write("                height: 103px;\n");
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
      out.write("        <div id=\"head\"><div style=\"font-family: 'Abel', sans-serif;\"><h1 id=\"heading\" align=\"center\">DRDL<br>Defence Research and Development Laboratory</h1></div></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <div id=\"menubar\">\n");
      out.write("                        <script type=\"text/javascript\">$(\"#menubar\").load(\"menu1.jsp\");</script>\n");
      out.write("                    </div>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td width=80%>\n");
      out.write("                    <div id=\"slider\">\n");
      out.write("                        <figure>\n");
      out.write("                            <img src=\"images/drdl.jpg\" width=100% height=\"450px\">\n");
      out.write("                            <img src=\"images/img4.jpg\" width=100% height=\"450px\">\n");
      out.write("                            <img src=\"images/img5.jpg\" width=100% height=\"450px\">\n");
      out.write("                            <img src=\"images/drdl.jpg\" width=100% height=\"450px\">\n");
      out.write("                        </figure>\n");
      out.write("                    </div>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <marquee direction=\"up\" height=100% bgcolor=\"#ffffff\">\n");
      out.write("                        <!--<image src=\"images/Untitle10.png\" width=100%>-->\n");
      out.write("                        ->Today is holiday due to the elections in telangan\n");
      out.write("                    </marquee>\n");
      out.write("                </td>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\">\n");
      out.write("                        ");
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
      out.write("            div\n");
      out.write("            {\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("            p\n");
      out.write("            {\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <p style=\"background-color: #3A3A3A;padding: 8px\" >@ of manikanta</p>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("                        \n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("                    <div id=\"tempdiv\" style=\"visibility:hidden;display:none; \"></div>\n");
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
