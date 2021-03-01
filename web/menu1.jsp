<%-- 
    Document   : menu1
    Created on : Feb 12, 2016, 11:23:18 AM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #sm
            {
                background-color: #5F5F5F;
                text-align: left;
                line-height: 30px;
                border-radius: 4px;
            }
            .button 
            {
                font-family:"Segoe UI",Arial,sans-serif;
                background-color: #5F5F5F; 
                border: none;
                color: whitesmoke;
                padding: 10px;
                width: 100px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 17px;
                border-radius: 2px;
                cursor: pointer;
            }
            .button1:hover
            {
                background-color: #000000;
                color: whitesmoke;
                box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            }
            .button span 
            {
                cursor: pointer;
                display: inline-block;
                position: relative;
                transition: 0.4s;
            }
            .button span:after 
            {
                content:'>';
                position: absolute;
                opacity: 0;
                top: 0;
                right: -20px;
                transition: 0.4s;
            }

            .button:hover span 
            {
                padding-right: 25px;
            }

            .button:hover span:after 
            {
                opacity: 1;
                right: 0;
            }
            .dropdown 
            {
                position: relative;
                display: inline-block;
            }
            .dropdown-content 
            {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }
            .lgn
            {
                position: absolute;
                right: 0;
                background-color: #f9f9f9;
                width: 300px;
                padding: 30px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
                text-align:center; 
            }
            .dropdown:hover .dropdown-content 
            {
                display: block;
            }
            .dropbtn 
            {
                background-color: #5F5F5F;
                color: white;
                padding: 10px;
                font-size: 17px;
                border: none;
                cursor: pointer;
            }
            .dropdown-content a 
            {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }           
            .dropdown-content a:hover 
            {
                background-color: #f1f1f1
            }
        </style>
    </head>
    <body onload="">
         <div id="sm">
            <button class="button button1"><span>home</span></button> 
            <div class="dropdown">
                <button class="button button1 dropbtn"><span>about</span></button>
                <div class="dropdown-content">
                    <a href="#">history</a>
                    <a href="#">awards</a>
                    <a href="#">achievements</a>
                </div>
            </div>
            <div class="dropdown" style="float:right" align="center">
             <%
                try
                {
                    String st=(String) session.getAttribute("username");
                    if(st.equals("guest"))
                    {
                     out.println("<button class=\"button button1 dropbtn\"><span>login</span></button>"
                                 +"<div class=\"dropdown-content lgn\" align=\"center\">"
                                 +" <form method=\"post\" onsubmit=\"return loginvalidate()\" name=\"loginform\">"
                                 +"  user id: <input type=\"text\" name=\"username\" required onfocus='document.getElementById(\"statusspan\").innerHTML=\"\";'><br>"
                                 +" password: <input type=\"password\" name=\"password\" required onfocus='document.getElementById(\"statusspan\").innerHTML=\"\";'><br>"
                                 +"<input type=\"submit\" name=\"submit\"><br>"
                                 +"  <span id=\"statusspan\" style=\"color:red;\"></span>"
                                +" </form></div>");    
                    }
                    else
                    {
                        out.println("<button class=\"button button1 dropbtn\" style=\"min-width:100px;\"><span>");    
                        out.println(st);
                        out.println("</span></button><div class=\"dropdown-content\"><a href=\"logout.jsp\">logout</a></div>");
                    
                    }    
                }
                catch(Exception e)
                {
                }    
             %>   
            </div>
        </div>
    </body>
</html>
