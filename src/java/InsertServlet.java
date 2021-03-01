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
//import java.text.SimpleDateFormat;


public class InsertServlet extends HttpServlet {
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
            String dates=date1.getString();
            
            FileItem Slrno =(FileItem)items.get(9);
            int Slr=Integer.parseInt(Slrno.getString());
           // java.util.Date javadate;
            //java.sql.Date sqldate=new java.sql.Date(date1.getString());
            //SimpleDateFormat format=new SimpleDateFormat("dd-mon-yyyy HH:mm:ss");
           // out.print(date1);
            //javadate=format.parse(date1.getString());          
            //javadate=SimpleDateFormat..parse(date1.getString());
            //out.print(javadate);
           // sqldate=new java.sql.Date(javadate.getTime());
                     
            // get uploaded file
            FileItem file = (FileItem) items.get(7);    
             //Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
            con.setAutoCommit(false);

           PreparedStatement ps = con.prepareStatement("insert into docdatabase values(?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, DocID);            
            ps.setString(2, DocFileno);
            ps.setString(3,DocFileType);
            if(DocFileAcc.equals("Public"))            
                ps.setInt(4, 1);            
            else
                ps.setInt(4, 0);  
            ps.setString(5, DocFileName);
           ps.setString(7,DocPrePer); 
            ps.setString(6, dates);            
             //size must be converted to int otherwise it results in error
            ps.setBinaryStream(8, file.getInputStream(), (int) file.getSize());
            ps.setInt(9,Slr);         
          
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