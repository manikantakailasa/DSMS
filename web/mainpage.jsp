
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
        <script type="text/javascript">
         function loginvalidate()
         {
           var id=document.loginform.username.value;
           var pass=document.loginform.password.value;
           $("#tempdiv").load("login.jsp",{"userid":id,"password":pass},function()
           {
           var status=document.getElementById("status").value;
           if(status==="false")
           {
            document.loginform.username.value="";
            document.loginform.password.value="";
            document.getElementById("statusspan").innerHTML="invalid login credentials";
           }
           else
           if (status==="true")
           window.location.assign("adminpage.jsp");
           else
           window.location.assign("userloginpage.jsp");
           });
           
         return false;
         }
         $(document).ready(function()
         {
             $("#menubar").load("menu1.jsp");
         });
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table
            {
                border-spacing: 2px;
                width: 100%;
                height: 400px;
            }
            body
            {
                margin: 0;
            }
             
            div#slider 
            { 
                overflow: hidden; 
            }
            div#slider figure img 
            { 
                width: 20%; 
                float: left; 
            }
            div#slider figure 
            { 
                position: relative;
                width: 500%;
                margin: 0;
                left: 0;
                text-align: left;
                font-size: 0;
                animation: 20s slidy infinite; 
            }
            @keyframes slidy 
            {
                0% { left: 0%; }
                20% { left: 0%; }
                25% { left: -100%; }
                45% { left: -100%; }
                50% { left: -200%; }
                70% { left: -200%; }
                75% { left: -300%; }
                95% { left: -300%; }
            }
        </style>     
    </head>
    <%
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

    %>
    <!--<script type="text/javascript" src="jquery.min.js"></script>-->
    <body>
        <table>
            <tr>
                <td colspan="2">
                    <div>
                        <%@include file="header1.html" %>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div id="menubar">
                        <script type="text/javascript">$("#menubar").load("menu1.jsp");</script>
                    </div>
                </td>
            </tr>
            <tr>
                <td width=80%>
                    <div id="slider">
                        <figure>
                            <img src="images/drdl.jpg" width=100% height="450px">
                            <img src="images/img4.jpg" width=100% height="450px">
                            <img src="images/img5.jpg" width=100% height="450px">
                            <img src="images/drdl.jpg" width=100% height="450px">
                        </figure>
                    </div>
                </td>
                <td>
                    <marquee direction="up" height=100% bgcolor="#ffffff">
                        <!--<image src="images/Untitle10.png" width=100%>-->
                        ->Today is holiday due to the elections in telangan
                    </marquee>
                </td>
                <tr>
                    <td colspan="2">
                        <%@include file="footer.html" %>                        
                    </td>
                </tr>
            </tr>
        </table>
                    <div id="tempdiv" style="visibility:hidden;display:none; "></div>
    </body>
</html>
