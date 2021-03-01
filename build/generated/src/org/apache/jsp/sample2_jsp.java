package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sample2_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width\" />\n");
      out.write("\n");
      out.write("    <title>Material Charts</title>\n");
      out.write("    \n");
      out.write("    <link rel=\"icon\" href=\"favicon.png\" type=\"image/png\"/>\n");
      out.write("\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    <script src=\"js/jquery.js\"></script>\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/example.css\">\n");
      out.write("    <script src=\"js/example.js\"></script>\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/material-charts.css\">\n");
      out.write("    <script src=\"js/material-charts.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"title\">Material Charts</div>\n");
      out.write("        </div>\n");
      out.write("        <section>\n");
      out.write("            <div class=\"section-title getting-started\">Getting Started</div>\n");
      out.write("            <div class=\"getting-started-instructions\">\n");
      out.write("                <p>Download the JavaScript and CSS files from the <code>css</code> and <code>js</code> directories in the <a href=\"https://github.com/jacobnisnevich/material-charts/\">GitHub repository</a>. Include them in your HTML project as:</p>\n");
      out.write("                <pre>&lt;link rel=\"stylesheet\" href=\"css/material-charts.css\"&gt;</pre><br>\n");
      out.write("                <pre>&lt;script src=\"js/material-charts.js\"&gt;&lt;/script&gt;</pre>\n");
      out.write("                <p><b>jQuery</b> must be included for this library to work.</p>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <section>\n");
      out.write("            <div class=\"section-title examples\">Examples</div>\n");
      out.write("            <div class=\"subsection\">\n");
      out.write("                <div class=\"subsection-title\">Bar Charts</div>\n");
      out.write("                <div class=\"example-container clearfix\">\n");
      out.write("                    <div class=\"example-code\">\n");
      out.write("                        <pre>\n");
      out.write("var exampleBarChartData = {\n");
      out.write("    \"datasets\": {\n");
      out.write("        \"values\": [5, 10, 30, 50, 20],\n");
      out.write("        \"labels\": [\n");
      out.write("            \"Apples\", \n");
      out.write("            \"Oranges\", \n");
      out.write("            \"Berries\", \n");
      out.write("            \"Peaches\", \n");
      out.write("            \"Bananas\"\n");
      out.write("        ], \"color\": \"blue\"\n");
      out.write("    },\n");
      out.write("    \"title\": \"Example Bar Chart\",\n");
      out.write("    \"height\": \"300px\",\n");
      out.write("    \"width\": \"500px\",\n");
      out.write("    \"background\": \"#FFFFFF\",\n");
      out.write("    \"shadowDepth\": \"1\"\n");
      out.write("};\n");
      out.write("\n");
      out.write("MaterialCharts.bar(\"#bar-chart-example\", exampleBarChartData)                         \n");
      out.write("                        </pre>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"example-chart\">\n");
      out.write("                        <div id=\"bar-chart-example\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"subsection\">\n");
      out.write("                <div class=\"subsection-title\">Pie Charts</div>\n");
      out.write("                <div class=\"example-container clearfix\">\n");
      out.write("                    <div class=\"example-code\">\n");
      out.write("                        <pre>\n");
      out.write("var examplePieChartData = {\n");
      out.write("    \"datasets\": {\n");
      out.write("        \"values\": [5, 30, 5, 20, 40],\n");
      out.write("        \"labels\": [\n");
      out.write("            \"Apples\", \n");
      out.write("            \"Oranges\", \n");
      out.write("            \"Berries\", \n");
      out.write("            \"Peaches\", \n");
      out.write("            \"Bananas\"\n");
      out.write("        ],\n");
      out.write("    },\n");
      out.write("    \"title\": \"Example Pie Chart\",\n");
      out.write("    \"height\": \"300px\",\n");
      out.write("    \"width\": \"500px\",\n");
      out.write("    \"background\": \"#FFFFFF\",\n");
      out.write("    \"shadowDepth\": \"1\"\n");
      out.write("};\n");
      out.write("\n");
      out.write("MaterialCharts.pie(\"#pie-chart-example\", examplePieChartData)\n");
      out.write("                        </pre>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"example-chart\">\n");
      out.write("                        <div id=\"pie-chart-example\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <div class=\"footer clearfix\">\n");
      out.write("            <div class=\"copyright\">© 2015 Jacob Nisnevich</div>\n");
      out.write("            <div class=\"github-link\">\n");
      out.write("            <a href=\"https://github.com/jacobnisnevich/material-charts/\"><img src=\"github-logo.png\" /></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
