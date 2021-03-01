<%-- 
    Document   : DMSMainMenu
    Created on : 31 Mar, 2016, 7:32:28 PM
    Author     : VENKATESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Main Menu</title>
        <style>
            



/* CSS Document */
*{
	margin:0px;
	padding:0px;
}
body
{
	background: -moz-linear-gradient(center left,lightblue,white)repeat scroll 0 0 white;	
}
.mainmenu
{
	 margin-top: 20px;
	margin-right:auto;
	margin-left: 80px;
        margin-right: 80px;
        background-color: greenyellow;
	height: 35px;
	border-radius:50px;
        text-align: center;
}

.mainmenu ul
{
	list-style:none;
	margin-left: 60px;
       
}

.mainmenu ul li
{	
        background-color: lightblue;
	border:1px solid white;
	width:150px;
	height:35px;
	text-align: center;
	line-height:35px;
	float:left;	
	position:relative;
	border-radius:50px;		
}

.mainmenu ul li a
{
	text-decoration:none;
	color:#663399;	
	display:block;
}

.mainmenu ul li a:hover
{
         background-color: lightcyan;
	border-radius:50px;
	color:#3366FF;
}
.mainmenu ul ul
{
	position: absolute;
	display:none;
	margin-left: 0px;
}
.mainmenu ul li:hover > ul
{
	display:block;
}

        </style>
    </head>
    <body>
        <div class="mainmenu">
            <ul>
                <li><a href="dms/Insert_Doc.jsp">Insert Document</a></li>
                <li><a href="dms/Update_Doc.jsp">Update Document</a></li>               
                <li><a href="dms/Retrieve_Doc.jsp">View Document</a></li>
            </ul>
        </div>
    </body>
</html>
