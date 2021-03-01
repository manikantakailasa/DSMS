import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.text.SimpleDateFormat;


public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            // Apache Commons-Fileupload library classes
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload sfu  = new ServletFileUpload(factory);

            if (! ServletFileUpload.isMultipartContent(request)) {
                System.out.println("sorry. No file uploaded");
                return;
            }

             //parse request
            List items = sfu.parseRequest(request);
            
            FileItem  id = (FileItem) items.get(0);
            int DocID = Integer.parseInt(id.getString());
            
            FileItem  Fileno = (FileItem) items.get(1);
            String DocFileno =  Fileno.getString();
            
            FileItem  Filetype = (FileItem) items.get(3);
            String DocFileType =  Filetype.getString();
            
            FileItem  Filetacc = (FileItem) items.get(4);
            String DocFileAcc =  Filetacc.getString();
            
           FileItem  Filename = (FileItem) items.get(5);
            String DocFileName =  Filename.getString();
            
            FileItem  Preper = (FileItem) items.get(6);
            String DocPrePer =  Preper.getString();
            
            FileItem  date1 = (FileItem) items.get(8);   
           // java.util.Date javadate;
           // java.sql.Date sqldate;
           // SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            //javadate=format.parse(date1.getString());
          //  sqldate=new java.sql.Date(javadate.getTime());
            String date=date1.getString();
            
            FileItem conno1=(FileItem) items.get(9);
            int conno=Integer.parseInt(conno1.getString());
                     
            // get uploaded file
            FileItem file = (FileItem) items.get(7);    
             //Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
            con.setAutoCommit(false);

            String sql="update docdatabase set FileNumber=?,DocType=?,DocAccType=?,DocName=?,DocDate=?,DocPerName=?,DocID=?";
            if(file.getString()!=null)    
                sql=sql+",DocCopy=? where ControlNo=?";
            else
                 sql=sql+" where ControlNo=?";            
           PreparedStatement ps = con.prepareStatement(sql);
           
            ps.setInt(9,conno);
            ps.setInt(7, DocID);            
            ps.setString(1, DocFileno);
            ps.setString(2,DocFileType);
            if(DocFileAcc.equals("Public"))            
                ps.setInt(3, 1);            
            else
                ps.setInt(3, 0);  
            ps.setString(4, DocFileName);
           ps.setString(6,DocPrePer);
            ps.setString(5, date);     
           
            //size must be converted to int otherwise it results in error
            if(file.getString()!=null)            
            ps.setBinaryStream(8, file.getInputStream(), (int) file.getSize());
            ps.executeUpdate();
            con.commit();
            con.close();
           out.println(DocFileName+" is Added Successfully.");      
            out.println("<div style='width: 150px; height: 35px; background-color: gray; color: white; border-width: 5px; border-radius: 10px; text-align: center; line-height: 35px;'>");
            out.print("<p><a href='userloginpage.jsp' style='text-decoration: none; color: white; display: block;'>OK</a></div>");        
        }
        catch(Exception ex) {
            out.println( "Error --> " + ex.getMessage());
        }
    } 
}