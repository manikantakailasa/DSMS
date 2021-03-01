package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Insert_005fDoc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

          
           
           int slr,Dono;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;  
            String FileNo;
            String FileType;   
        
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         \n");
      out.write("      <script language=\"javascript\" type=\"text/javascript\" src=\"../JavaScript/datetimepicker.js\">\n");
      out.write("</script>\n");
      out.write("<script type=\"text/javascript\" src=\"../JavaScript/FileTypejavascript.js\"></script> \n");
      out.write("        <title>Insert Document</title>\n");
      out.write("        <style>\n");
      out.write("            *{\n");
      out.write("    margin: 0px;\n");
      out.write("    padding: 0px;\n");
      out.write("}\n");
      out.write("body\n");
      out.write("{\n");
      out.write("    background: activeborder;\n");
      out.write("}\n");
      out.write(".divMain\n");
      out.write("{\n");
      out.write("    background-color: lightcyan;\n");
      out.write("    margin-bottom: auto;\n");
      out.write("    margin-left: 80px;\n");
      out.write("    margin-right: 80px;\n");
      out.write("    margin-top: 10px;   \n");
      out.write("    border-color: yellow;\n");
      out.write("    border-width: 10px;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    height:  550px;\n");
      out.write("}\n");
      out.write(".tableStylee\n");
      out.write("{\n");
      out.write("    width: 100%;    \n");
      out.write("    border-spacing: 15px;\n");
      out.write("    color:blue;   \n");
      out.write("}\n");
      out.write(".td1\n");
      out.write("{\n");
      out.write("    text-align: right;\n");
      out.write("    font-size: medium;\n");
      out.write("    width:400px;\n");
      out.write("}\n");
      out.write(".td2\n");
      out.write("{\n");
      out.write("    text-align: left;\n");
      out.write("    font-size: x-large;  \n");
      out.write("     height: 30px;\n");
      out.write("     background-color: blue;\n");
      out.write("     color:oldlace;\n");
      out.write("     text-align: center;\n");
      out.write("     font-weight: bolder;\n");
      out.write("}\n");
      out.write(".td3\n");
      out.write("{\n");
      out.write("    text-align: center;\n");
      out.write("    font-size: medium; \n");
      out.write("}\n");
      out.write(".buttonclass{\n");
      out.write("    background-color:blue;\n");
      out.write("    font-size: medium;\n");
      out.write("    color:white;\n");
      out.write("    border-radius: 10px;\n");
      out.write("    width: 145px;\n");
      out.write("    height: 35px;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write(".combobox\n");
      out.write("{\n");
      out.write("    width: 200px;\n");
      out.write("    height: 25px;    \n");
      out.write("}\n");
      out.write("\n");
      out.write(".textbox1\n");
      out.write("{\n");
      out.write("    width: 345px;\n");
      out.write("    height: 25px;   \n");
      out.write("}\n");
      out.write("\n");
      out.write(".textbox2\n");
      out.write("{\n");
      out.write("    width: 200px;\n");
      out.write("    height: 25px;      \n");
      out.write("}\n");
      out.write(".file\n");
      out.write("{\n");
      out.write("    font-size:medium;\n");
      out.write("    color :red;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>  \n");
      out.write("        \n");
      out.write("        \n");
      out.write("                   \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
   
            
                FileNo=request.getParameter("DFNo"); 
                FileType=request.getParameter("DTY"); 
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("select max(controlno) from docdatabase");
                    while(rs.next())
                    {
                        slr=rs.getInt(1);
                    }               
                    slr=slr+1;                         
                }
                catch (Exception e)
                {
                   System.out.println(e);
                }   
                
                
                  try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("select max(docid) from docdatabase where FileNumber='"+FileNo+"' and DocType='"+FileType+"'");
                    while(rs.next())
                    {
                        Dono=rs.getInt(1);
                    }               
                    Dono=Dono+1;                         
                }
                catch (Exception e)
                {
                   System.out.println(e);
                }   
                
                
               
        
      out.write("  \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div class=\"divMain\">  \n");
      out.write("          <form id=\"form1\" enctype=\"multipart/form-data\" action=\"../InsertServlet\" method=\"post\">\n");
      out.write("                    <table class=\"tableStylee\">                \n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" class=\"td2\"> \n");
      out.write("                            DOCUMENT INSERT FORM\n");
      out.write("                    </td>               \n");
      out.write("                </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"td1\">\n");
      out.write("                   \n");
      out.write("                </td>\n");
      out.write("                 <td>\n");
      out.write("                    \n");
      out.write("                </td>\n");
      out.write("            </tr>             \n");
      out.write("            <tr>\n");
      out.write("                <td class=\"td1\">\n");
      out.write("                    Document ID:\n");
      out.write("                </td>\n");
      out.write("                 <td>\n");
      out.write("                     <input  type=\"text\"  name=\"id\" class=\"textbox2\" value=\"");
      out.print(Dono);
      out.write("\" readonly=\"true\"/>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("                <tr>\n");
      out.write("                 <td class=\"td1\">\n");
      out.write("                    Document File Number:\n");
      out.write("                </td>\n");
      out.write("                 <td>                    \n");
      out.write("                     <select id=\"DFNo\" name=\"DFNo\" class=\"combobox\" onchange=\"fileName()\" >\n");
      out.write("                        <option>Select File Number</option>\n");
      out.write("                        <option>Project1</option>\n");
      out.write("                        <option>Project2</option>\n");
      out.write("                        <option>Project3</option>\n");
      out.write("                        <option>Project4</option>\n");
      out.write("                        <option>Project5</option>\n");
      out.write("                        <option>Project6</option>\n");
      out.write("                        <option>Project7</option>\n");
      out.write("                        <option>Project8</option>\n");
      out.write("                        <option>Project9</option>\n");
      out.write("                    </select>\n");
      out.write("                     <input  type=\"text\" id=\"DocFileNo\" name=\"DocFileNo\" size=\"65px\" class=\"textbox1\" placeholder=\"Selected Document File Name\" readonly=\"true\"/>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"td1\">\n");
      out.write("                    Document Type:\n");
      out.write("                </td>\n");
      out.write("                 <td>                    \n");
      out.write("                     <select name=\"DTY\" class=\"combobox\">\n");
      out.write("                        <option>MOM</option>\n");
      out.write("                        <option>LTR</option>\n");
      out.write("                        <option>DRW</option>\n");
      out.write("                        <option>DOC</option>\n");
      out.write("                        <option>FAX</option>\n");
      out.write("                        <option>ION</option>                        \n");
      out.write("                    </select>\n");
      out.write("                </td>\n");
      out.write("                 </tr>\n");
      out.write("                <tr>\n");
      out.write("                 <td class=\"td1\">\n");
      out.write("                    Document Accessibility Type: \n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    \n");
      out.write("                    <select id=\"Access\" name=\"Access\" class=\"combobox\" >                        \n");
      out.write("                        <option>Public</option>\n");
      out.write("                        <option>Private</option>                   \n");
      out.write("                    </select>                  \n");
      out.write("                                 \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"td1\">\n");
      out.write("                   Document Name:\n");
      out.write("                </td> \n");
      out.write("                <td>\n");
      out.write("                    <input  type=\"text\"  name=\"type\" size=\"65px\" class=\"textbox1\"/>\n");
      out.write("                </td>                 \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"td1\">\n");
      out.write("                   Document Prepared Person:\n");
      out.write("                </td> \n");
      out.write("                <td>\n");
      out.write("                    <select name=\"DPP\" class=\"combobox\">\n");
      out.write("                        <option>Name1</option>\n");
      out.write("                        <option>Name2</option>\n");
      out.write("                        <option>Name3</option>\n");
      out.write("                        <option>Name4</option>\n");
      out.write("                        <option>Name5</option>\n");
      out.write("                        <option>Name6</option>                       \n");
      out.write("                    </select>\n");
      out.write("                </td>  \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"td1\">\n");
      out.write("                   Upload Document:\n");
      out.write("                </td> \n");
      out.write("                <td>\n");
      out.write("                    <input type=\"file\"  name=\"photo\" class=\"file\"/>\n");
      out.write("                </td>  \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"td1\">\n");
      out.write("                   Document Date:\n");
      out.write("                </td> \n");
      out.write("                <td>\n");
      out.write("                    <input id=\"demo1\" maxlength=\"25\" name=\"date1\" readonly=\"readonly\" size=\"35\" \n");
      out.write("                    type=\"text\" /><a href=\"javascript:NewCal('demo1','ddmmmyyyy',true,24)\"><img \n");
      out.write("                    alt=\"Pick a date\" border=\"0\" src=\"../Image/calendar_64.gif\" \n");
      out.write("                    style=\"height: 27px; width: 24px\" /></a>\n");
      out.write("                </td>  \n");
      out.write("            </tr><tr>\n");
      out.write("            <td class=\"td1\">\n");
      out.write("                    Control No:\n");
      out.write("                </td>\n");
      out.write("                 <td>\n");
      out.write("                     <input  type=\"text\"  name=\"conid\" class=\"textbox2\" value=\"");
      out.print(slr);
      out.write("\" readonly=\"true\"/>\n");
      out.write("                </td> </tr>\n");
      out.write("            <tr>              \n");
      out.write("                <td class=\"td3\" colspan=\"2\">\n");
      out.write("                    <input type=\"submit\" value=\"Insert\" name=\"Insert\" class=\"buttonclass\"/>\n");
      out.write("                </td>  \n");
      out.write("            </tr>            \n");
      out.write("             \n");
      out.write("                \n");
      out.write("           \n");
      out.write("        </table>\n");
      out.write("        </form>        \n");
      out.write("                  </div>           \n");
      out.write("          \n");
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
