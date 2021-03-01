<%-- 
    Document   : Insert_Doc
    Created on : 1 Apr, 2016, 11:29:43 PM
    Author     : VENKATESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         
      <script language="javascript" type="text/javascript" src="../JavaScript/datetimepicker.js">
</script>
<script type="text/javascript" src="../JavaScript/FileTypejavascript.js"></script> 
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
        </style>
    </head>
    <body>  
        
        
         <%@page import="java.sql.*" %>          
        <%!          
           
           int slr,Dono;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;  
            String FileNo;
            String FileType;   
        %>
        <%   
            
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
                
                
               
        %>  
        
        
        
        
        <div class="divMain">  
          <form id="form1" enctype="multipart/form-data" action="../InsertServlet" method="post">
                    <table class="tableStylee">                
                <tr>
                    <td colspan="2" class="td2"> 
                            DOCUMENT INSERT FORM
                    </td>               
                </tr>
            <tr>
                <td class="td1">
                   
                </td>
                 <td>
                    
                </td>
            </tr>             
            <tr>
                <td class="td1">
                    Document ID:
                </td>
                 <td>
                     <input  type="text"  name="id" class="textbox2" value="<%=Dono%>" readonly="true"/>
                </td>
            </tr>
                <tr>
                 <td class="td1">
                    Document File Number:
                </td>
                 <td>                    
                     <select id="DFNo" name="DFNo" class="combobox" onchange="fileName()" >
                        <option>Select File Number</option>
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
                     <input  type="text" id="DocFileNo" name="DocFileNo" size="65px" class="textbox1" placeholder="Selected Document File Name" readonly="true"/>
                </td>
            </tr>
            <tr>
                <td class="td1">
                    Document Type:
                </td>
                 <td>                    
                     <select name="DTY" class="combobox">
                        <option>MOM</option>
                        <option>LTR</option>
                        <option>DRW</option>
                        <option>DOC</option>
                        <option>FAX</option>
                        <option>ION</option>                        
                    </select>
                </td>
                 </tr>
                <tr>
                 <td class="td1">
                    Document Accessibility Type: 
                </td>
                <td>
                    
                    <select id="Access" name="Access" class="combobox" >                        
                        <option>Public</option>
                        <option>Private</option>                   
                    </select>                  
                                 
                </td>
            </tr>
            <tr>
                <td class="td1">
                   Document Name:
                </td> 
                <td>
                    <input  type="text"  name="type" size="65px" class="textbox1"/>
                </td>                 
            </tr>
            <tr>
                <td class="td1">
                   Document Prepared Person:
                </td> 
                <td>
                    <select name="DPP" class="combobox">
                        <option>Name1</option>
                        <option>Name2</option>
                        <option>Name3</option>
                        <option>Name4</option>
                        <option>Name5</option>
                        <option>Name6</option>                       
                    </select>
                </td>  
            </tr>
            <tr>
                <td class="td1">
                   Upload Document:
                </td> 
                <td>
                    <input type="file"  name="photo" class="file"/>
                </td>  
            </tr>
            <tr>
                <td class="td1">
                   Document Date:
                </td> 
                <td>
                    <input id="demo1" maxlength="25" name="date1" readonly="readonly" size="35" 
                    type="text" /><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img 
                    alt="Pick a date" border="0" src="../Image/calendar_64.gif" 
                    style="height: 27px; width: 24px" /></a>
                </td>  
            </tr><tr>
            <td class="td1">
                    Control No:
                </td>
                 <td>
                     <input  type="text"  name="conid" class="textbox2" value="<%=slr%>" readonly="true"/>
                </td> </tr>
            <tr>              
                <td class="td3" colspan="2">
                    <input type="submit" value="Insert" name="Insert" class="buttonclass"/>
                </td>  
            </tr>            
             
                
           
        </table>
        </form>        
                  </div>           
          
    </body>
</html>
