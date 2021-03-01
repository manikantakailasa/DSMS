<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            #sm
            {
                background-color: #3A3A3A;
                text-align: left;
                line-height: 35px;
                border-radius: 4px;
            }
            .button 
            {
                background-color: #3A3A3A; 
                border: none;
                color: whitesmoke;
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                border-radius: 2px;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
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
                content: '>';
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
            }
            .lgn
            {
                position: absolute;
                right: 0;
                background-color: #f9f9f9;
                width: 600px;
                padding: 30px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }
            .dropdown:hover .dropdown-content 
            {
                display: block;
            }
            .dropbtn 
            {
                background-color: #3A3A3A;
                color: white;
                padding: 10px;
                font-size: 16px;
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
    <body onload="return adminhome()">
        <div id="sm">
            <button class="button button1" onclick='{$("#adminpage").html("<img src=\"images/drdl.jpg\" width=\"100%\" height=\"100%\">");}'><span>home</span></button> 
            <div class="dropdown">
                <button class="button button1 dropbtn"><span>userInfo</span></button>
                <div class="dropdown-content">
                    <a onclick='{$("#adminpage").load("usr_reg.jsp");}'>register</a>
                    <a onclick='{$("#adminpage").load("user_update.jsp");}'>update</a>
                    <a onclick='{$("#adminpage").load("block.jsp");}'>block</a>
                    <a onclick='{$("#adminpage").load("allusers.jsp");}'>All users</a>
                </div>
            </div>
            <div style="float:right" class="dropdown">
                <button class="button button1 dropbtn" style="min-width:100px;"><span>
                        <%
                        String un=(String) session.getAttribute("username");    
                        out.println(""+un);
                        %>
                    </span></button>
                <div class="dropdown-content">
                    <a href="logout.jsp">logout</a>
                </div>    
            </div>
            <div class="dropdown">
                <button class="button button1 dropbtn"><span>department</span></button>
                <div class="dropdown-content">
                    <a onclick='{$("#adminpage").load("new_dept.jsp");}'>new department</a>
                    <a onclick='{$("#adminpage").load("dept_update.jsp");}'>update</a>
                    <a onclick='{$("#adminpage").load("deptdelete.jsp");}'>delete</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="button button1 dropbtn"><span>designation</span></button>
                <div class="dropdown-content">
                    <a href="#">new designation</a>
                    <a href="#">update</a>
                    <a href="#">delete</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="button button1 dropbtn"><span>settings</span></button>
                <div class="dropdown-content">
                    <a onclick='{$("#adminpage").load("adminchangepass.jsp");}'>change password</a>
                </div>
            </div>
            <button class="button button1"><span>organization chart</span></button> 
        </div>
    </body>
</html>

