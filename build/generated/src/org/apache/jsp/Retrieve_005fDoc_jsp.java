package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Retrieve_005fDoc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

           
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
            String FileNo;
            String FileType;
            String pre;
            String AllFileNo;
            String AllFileType;
            String Allpre;
        
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
      out.write("        <link href=\"../StyleSheets/Insertcss.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("        <link href=\"../StyleSheets/TableStylee.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("      <script type=\"text/javascript\" src=\"../JavaScript/FileTypejavascript.js\"></script>  \n");
      out.write("      <script language=\"javascript\" type=\"text/javascript\" src=\"../JavaScript/datetimepicker.js\">\n");
      out.write("</script>\n");
      out.write("\n");
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
      out.write("            .tr\n");
      out.write("{\n");
      out.write("  background: -moz-linear-gradient(center top,red,white)repeat scroll 0 0 white;\n");
      out.write("  font-size: 18px;\n");
      out.write("  height: 30px;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write(".table\n");
      out.write("{\n");
      out.write("    background-color:burlywood;\n");
      out.write("    width: 100%;\n");
      out.write("    border-width: 1px;\n");
      out.write("    border-radius: 7px;\n");
      out.write("    color: darkblue;\n");
      out.write("    border-color: red;\n");
      out.write("    font-size: 15px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>  \n");
      out.write("        <div class=\"divMain\" >   \n");
      out.write("          <div style=\"background: pink;\"> \n");
      out.write("              <form>\n");
      out.write("          <table class=\"tableStylee\">\n");
      out.write("              <tr>\n");
      out.write("                  <td colspan=\"4\" class=\"td2\"> \n");
      out.write("                            DOCUMENT RETRIEVE FORM\n");
      out.write("                    </td>               \n");
      out.write("                </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>   \n");
      out.write("                      File No:\n");
      out.write("                     <select id=\"DFNo\" name=\"DFNo\" class=\"combobox\" onchange=\"fileName()\" >\n");
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
      out.write("                     <select name=\"DTY\" class=\"combobox\">\n");
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
      out.write("                    <select name=\"DPP\" class=\"combobox\">\n");
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
      out.write("            ");
      out.write("\n");
      out.write("          \n");
      out.write("          ");

              System.out.println("ansdbfj");
             FileNo=request.getParameter("DFNo");
             FileType=request.getParameter("DTY");
             pre=request.getParameter("DPP");
              AllFileNo="ALL";
             AllFileType="ALL";
             Allpre="ALL";
              try
                {
                    int p=0;
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                     con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    String sql="select * from docdatabase";  
                    
                     if(FileNo!=null)
                     {   
                         if(!FileNo.equals(AllFileNo))
                         {                      
                            sql=sql+" where FileNumber='"+FileNo+"'";
                            p=1;     
                         }
                     }
                     if((!FileType.equals(AllFileType)) && FileType!=null)
                    {
                        if(p==0)
                        {
                            sql=sql+" where Doctype='"+FileType+"'";
                            p=1;
                        }
                        else
                            sql=sql+" and Doctype='"+FileType+"'";
                    }
                      if((!pre.equals(Allpre)) && pre!=null)
                    {
                         if(p==0)
                            sql=sql+" where docpername='"+pre+"'";
                         else
                              sql=sql+" and docpername='"+pre+"'";
                    }                       
                    rs=st.executeQuery(sql);
                   
                    
      out.write("\n");
      out.write("                    <table class=\"table\"><tr><td colspan=\"6\" style=\"font-size: x-large; text-align:center;\"> Update Table Selection </td></tr>\n");
      out.write("                        <tr class=\"tr\">\n");
      out.write("                            <td>Doc No.</td>\n");
      out.write("                            <td>File No.</td>\n");
      out.write("                            <td>Doc Type</td>\n");
      out.write("                            <td>Doc Title</td>\n");
      out.write("                            <td>Doc Presented Name</td>\n");
      out.write("                            <td> View </td>\n");
      out.write("                        </tr>\n");
      out.write("                    ");

                    int i=0;
                    while (rs.next())
                    { if(i==0){
      out.write("\n");
      out.write("                        <tr style=\"text-align: center; background-color: white\">\n");
      out.write("                            <td>");
out.print(rs.getString("docid"));
      out.write("</td>\n");
      out.write("                             <td>");
out.print(rs.getString("FileNumber"));
      out.write("</td>\n");
      out.write("                              <td>");
out.print(rs.getString("DocType"));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString("DocName"));
      out.write("</td>\n");
      out.write("                             <td>");
out.print(rs.getString("docPerName"));
      out.write("</td>\n");
      out.write("                            <td><a href=\"../DisplayPDFServlet?Dono=");
out.print(rs.getString("controlno"));
      out.write("\">View</a></td>\n");
      out.write("                        </tr>\n");
      out.write("                 ");
 i=1; }else {
                        
      out.write("\n");
      out.write("                         <tr style=\"text-align: center; background-color:pink\">\n");
      out.write("                            <td>");
out.print(rs.getString("docid"));
      out.write("</td>\n");
      out.write("                             <td>");
out.print(rs.getString("FileNumber"));
      out.write("</td>\n");
      out.write("                              <td>");
out.print(rs.getString("DocType"));
      out.write("</td>\n");
      out.write("                            <td>");
out.print(rs.getString("DocName"));
      out.write("</td>\n");
      out.write("                             <td>");
out.print(rs.getString("docPerName"));
      out.write("</td>\n");
      out.write("                            <td><a href=\"../DisplayPDFServlet?Dono=");
out.print(rs.getString("controlno"));
      out.write("\">View</a></td>\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                    ");
i=0;}}
                    st.close();
                    con.close();
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                    ");

                }
                catch (Exception e)
                {
                   System.out.println(e);
                }                 
           
          
      out.write("\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("        \n");
      out.write("          \n");
      out.write("          \n");
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
