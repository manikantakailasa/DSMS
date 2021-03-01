<%-- 
    Document   : Update_Jsp
    Created on : 5 Apr, 2016, 2:38:59 PM
    Author     : VENKATESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <%@page import="java.sql.*" %>          
        <%!          
           
            int DocId;
            String fileNumber;
            String DocType;
            String Access;
            String DocName;
            String date;
            String DocPerName;  
            Blob b;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null; 
          
            
           
        %>
        <%                  
            int Controlno=Integer.parseInt(request.getParameter("Dono")); 
          
           // request.setAttribute("venki",docid);
            
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                    st=con.createStatement();
                    rs=st.executeQuery("select * from docdatabase where Controlno='"+Controlno+"'");
                        if (rs.next())
                        { 
                          DocId=rs.getInt(1);
                          fileNumber=rs.getString(2);
                          DocType=rs.getString(3);
                          if(rs.getInt(4)==1)
                              Access="Public";
                          else
                              Access="Private";
                          DocName=rs.getString(5);
                          date=rs.getString(6);
                          DocPerName=rs.getString(7);
                          b=rs.getBlob("doccopy");
                        }
                         
                }
                catch (Exception e)
                {
                   System.out.println(e);
                } 
                
              
                
               
        %>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../StyleSheets/Insertcss.css" rel="stylesheet" type="text/css" media="screen" />
      <script type="text/javascript" src="../JavaScript/FileTypejavascript.js"></script>  
      <script language="javascript" type="text/javascript" src="../JavaScript/datetimepicker.js">
</script>
        <title>Update Document</title>
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
        <div class="divMain">           
          <%@include file="DMSMainMenu.jsp" %>   <br>
          <form id="form1" enctype="multipart/form-data" action="../UpdateServlet" method="post">
                    <table class="tableStylee">                
                <tr>
                    <td colspan="2" class="td2"> 
                            DOCUMENT UPDATE FORM
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
                     <input  type="text"  name="id" class="textbox2" value="<%=DocId%>"/>
                </td>
            </tr>
                <tr>
                 <td class="td1">
                    Document File Number:
                </td>
                 <td>                    
                     <select id="DFNo" name="DFNo" class="combobox" onchange="fileName()" >
                        <option>Select File Number</option>
                        <% for(int i=1;i<10;i++){
                           String options="Project"+i;
                           if(options.equals(fileNumber))
                           {%>
                           <option selected="true" onselect="fileName()"><%=options%></option>
                           <%}else{%>
                               <option><%=options%></option>
                          <% }
                        }%>                      
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
                         <%if(DocType.equals("MOM")){%>
                         <option selected="true">MOM</option>
                         <%}else{%>
                            <option>MOM</option>
                        <%}if(DocType.equals("LTR")){%>
                        <option selected="true">LTR</option>
                         <%}else{%>
                            <option>LTR</option>
                         <%}if(DocType.equals("DRW")){%>
                        <option selected="true">DRW</option>
                           <%}else{%>
                             <option>DRW</option>
                         <%}if(DocType.equals("DOC")){%>
                        <option selected="true">DOC</option>
                         <%}else{%>
                           <option>DOC</option>
                         <%}if(DocType.equals("FAX")){%>
                        <option selected="true">FAX</option>
                         <%}else{%>
                         <option>FAX</option>
                         <%}if(DocType.equals("ION")){%>
                        <option selected="true">ION</option>  
                         <%}else{%>
                          <option>ION</option>  
                          <%}%>
                    </select>
                </td>
                 </tr>
                <tr>
                 <td class="td1">
                    Document Accessibility Type: 
                </td>
                <td>
                    
                    <select id="Access" name="Access" class="combobox">  
                        <%if(Access.equals("Public")){%>
                        <option selected="true">Public</option>
                          <%}else{%>
                          <option>Public</option>  
                        <%}if(Access.equals("Public")){%>
                        <option selected="true">private</option>
                        <%}else{%>
                        <option>private</option>  
                        <%}%>
                    </select>                  
                                 
                </td>
            </tr>
            <tr>
                <td class="td1">
                   Document Name:
                </td> 
                <td>
                    <input  type="text"  name="type" size="65px" class="textbox1" value="<%=DocName%>"/>
                </td>                 
            </tr>
            <tr>
                <td class="td1">
                   Document Prepared Person:
                </td> 
                <td>
                    <select name="DPP" class="combobox" value="<%=DocPerName%>">
                       <% for(int i=1;i<10;i++){
                           String options="Name"+i;
                           if(options.equals(DocPerName))
                           {%>
                           <option selected="true"><%=options%></option>
                           <%}else{%>
                               <option><%=options%></option>
                          <% }}%>                  
                    </select>
                </td>  
            </tr>
            <tr>
                <td class="td1">
                   Upload Document:
                </td> 
                <td>
                    <input type="file"  name="photo" class="file"/>
                    <a href="../DisplayPDFServlet?Dono=<%out.print(rs.getString("Controlno"));%>">Click to View the Document</a>
                </td>  
            </tr>
            <tr>
                <td class="td1">
                   Document Date:
                </td> 
                <td>
                    <input id="demo1" maxlength="25" name="date1" readonly="readonly" size="35" 
                           type="text" value="<%=date%>"/><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img 
                    alt="Pick a date" border="0" src="../Image/calendar_64.gif" 
                    style="height: 27px; width: 24px" /></a>
                </td>  
            </tr>
            <tr>
            <td class="td1">
                    Control No:
                </td>
                 <td>
                     <input  type="text"  name="Dono" class="textbox2" value="<%=Controlno%>" readonly="true"/>
                </td> </tr>
            <tr>              
                <td class="td3" colspan="2">
                    <input type="submit" value="Update" name="Insert" class="buttonclass"/>
                </td>  
            </tr>
        </table>
        </form>
        </div>  
          
      
          
    </body>
</html>
