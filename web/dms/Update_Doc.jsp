<%-- 
    Document   : Update_Doc
    Created on : 3 Apr, 2016, 10:48:19 PM
    Author     : VENKATESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <script type="text/javascript" src="../JavaScript/FileTypejavascript.js"></script>  
      <script language="javascript" type="text/javascript" src="../JavaScript/datetimepicker.js">
</script>
        <title>Insert Document</title>
        <style>
            *{
    margin: 0px;
    padding: 0px;
}
body
{
    background: activeborder;
}
.divMain
{
    background-color: lightcyan;
    margin-bottom: auto;
    margin-left: 80px;
    margin-right: 80px;
    margin-top: 10px;   
    border-color: yellow;
    border-width: 10px;
    border-radius: 10px;
    height:  550px;
}
.tableStylee
{
    width: 100%;    
    border-spacing: 15px;
    color:blue;   
}
.td1
{
    text-align: right;
    font-size: medium;
    width:400px;
}
.td2
{
    text-align: left;
    font-size: x-large;  
     height: 30px;
     background-color: blue;
     color:oldlace;
     text-align: center;
     font-weight: bolder;
}
.td3
{
    text-align: center;
    font-size: medium; 
}
.buttonclass{
    background-color:blue;
    font-size: medium;
    color:white;
    border-radius: 10px;
    width: 145px;
    height: 35px;
    
}

.combobox
{
    width: 200px;
    height: 25px;    
}

.textbox1
{
    width: 345px;
    height: 25px;   
}

.textbox2
{
    width: 200px;
    height: 25px;      
}
.file
{
    font-size:medium;
    color :red;
}
.tr
{
  background: -moz-linear-gradient(center top,red,white)repeat scroll 0 0 white;
  font-size: 18px;
  height: 30px;
  text-align: center;
}
.table
{
    background-color:burlywood;
    width: 100%;
    border-width: 1px;
    border-radius: 7px;
    color: darkblue;
    border-color: red;
    font-size: 15px;
}

        </style>
    </head>
    <body>  
        <div class="divMain" >           
          <div style="background: pink;">
            <form>
          <table class="tableStylee">
              <tr>
                  <td colspan="4" class="td2"> 
                            DOCUMENT UPDATE FORM
                    </td>               
                </tr>
              <tr>
                  <td>   
                      File No:
                     <select id="DFNo" name="DFNo" class="combobox" onchange="fileName()" >
                        <option>ALL</option>
                        <option>Project1</option>
                        <option>Project2</option>
                        <option>Project3</option>
                        <option>Project4</option>
                        <option>Project5</option>
                        <option>Project6</option>
                        <option>Project7</option>
                        <option>Project8</option>
                        <option>Project9</option>
                    </select>                      
                </td>
                   <td>   
                       Type :
                     <select name="DTY" class="combobox">
                          <option>ALL</option>
                        <option>MOM</option>
                        <option>LTR</option>
                        <option>DRW</option>
                        <option>DOC</option>
                        <option>FAX</option>
                        <option>ION</option>                        
                    </select> 
                </td>
                   <td>
                     Prepared Person:
                    <select name="DPP" class="combobox">
                         <option>ALL</option>
                        <option>Name1</option>
                        <option>Name2</option>
                        <option>Name3</option>
                        <option>Name4</option>
                        <option>Name5</option>
                        <option>Name6</option>                       
                    </select>
                </td>  
                <td colspan="3" style="text-align: center"><input type="submit" value="Retrieve" name="Retrieve" class="buttonclass"/></td></tr>
          </table>   
                  </form>
            
          </div>
          <%@page import="java.sql.*"%>
          
          <%!           
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
            String FileNo;
            String FileType;
            String pre;
            String AllFileNo;
            String AllFileType;
            String Allpre;
        %>
          
          <%
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
                    %>
                    <table class="table"><tr><td colspan="6" style="font-size: x-large; text-align:center;"> Update Table Selection </td></tr>
                        <tr class="tr">
                            <td>Doc No.</td>
                            <td>File No.</td>
                            <td>Doc Type</td>
                            <td>Doc Title</td>
                            <td>Doc Presented Name</td>
                            <td> Update </td>
                        </tr>
                    <%
                    int i=0;
                    while (rs.next())
                    { if(i==0){ %>
                        <tr style="text-align: center; background-color: white">
                            <td><%out.print(rs.getString("docid"));%></td>
                             <td><%out.print(rs.getString("FileNumber"));%></td>
                              <td><%out.print(rs.getString("DocType"));%></td>
                            <td><%out.print(rs.getString("DocName"));%></td>
                             <td><%out.print(rs.getString("docPerName"));%></td>
                            <td><a href="Update_Jsp.jsp?Dono=<%out.print(rs.getString("controlno"));%>">Update</a></td>
                            </tr>
                 <% i=1; } else {
                        %>
                         <tr style="text-align: center; background-color:pink">
                            <td><%out.print(rs.getString("docid"));%></td>
                             <td><%out.print(rs.getString("FileNumber"));%></td>
                              <td><%out.print(rs.getString("DocType"));%></td>
                            <td><%out.print(rs.getString("DocName"));%></td>
                             <td><%out.print(rs.getString("docPerName"));%></td>
                            <td><a href="Update_Jsp.jsp?Dono=<%out.print(rs.getString("controlno"));%>">Update</a></td>
                            </tr>
                 <% i=0;  }
                }
                    st.close();
                    con.close();%>
                    </table>
                    <%
                }
                catch (Exception e)
                {
                   System.out.println(e);
                }                 
            
          %>
          
        </div>
          
          
    </body>
</html>
