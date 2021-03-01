<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*"%>
<html>
    <head>
        <title>TODO supply a title</title>
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
                width: 190px;
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
                color: white;
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
    <body>
        <div id="sm">
            <button class="button button1" style="width: 100px;" onclick='{$("#userpage").load("userhome.jsp");}'><span>home</span></button>
            <div class="dropdown">
                <button class="button button1"><span>document security</span></button>
                    <div class="dropdown-content">
                        <a onclick='{$("#userpage").load("dms/Insert_Doc.jsp");}'>Insert docs</a>
                        <a onclick='{$("#userpage").load("dms/Update_Doc.jsp");}'>Update docs</a>
                        <a onclick='{$("#userpage").load("doc_retrive.jsp");}'>Retrieve docs</a>
                    </div>
            </div>
            <button class="button button1" onclick="return orgchart()"><span>organization chart</span></button>
            <button class="button button1" onclick=""><span>business processing</span></button>
            <div class="dropdown">
                <button class="button button1"><span>task monitering</span></button>
                    <div class="dropdown-content">
                        <a onclick='{$("#userpage").load("tasks.jsp");}'>Tasks</a>
                        <a onclick='{$("#userpage").load("newtask.jsp");}'>new task</a>
                        <a onclick='{$("#userpage").load("forwardtask.jsp");}'>forward task</a>
                        <a onclick='{$("#userpage").load("changetask.jsp");}'>change task</a>
                    </div>
            </div>
            <div class="dropdown">
                <button class="button button1" style="width: 100px;"><span>setting</span></button>
                    <div class="dropdown-content">
                    <a onclick='{$("#userpage").load("userchangepass.jsp");}'>change password</a>
                    </div>
            </div>
            <%!
    Connection con;
    Statement st;
    ResultSet rs;
    String id;
%>
            <%
                try
    {
        id=(String)session.getAttribute("Id");
    int x=Integer.parseInt(id);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
        st=con.createStatement();
        rs=st.executeQuery("select * from acess");
        while (rs.next())
        {
            if (x==rs.getInt(1))
            {
                %>
                <button class="button button1" onclick="return priv_doc()" style="width: 100px;"><span>priv_doc</span></button>
                <%
            }
        }
    }
                catch (Exception e)
                {
                    
                }
            %>
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
        </div>
    </body>
</html>
