<%-- 
    Document   : userloginpage
    Created on : Feb 26, 2016, 1:26:24 AM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
                margin: 0;
            }
        </style>
        <script type="text/javascript">
            function pass()
            {
                var p1=document.getElementById("qqqq").value;
                $("#userpage").load("prive1_doc.jsp",{"id":p1});
                
            }
            function priv_doc()
            {
                $("#userpage").load("prive_doc.jsp");
            }
            function changetask(i)
            {
                $("#userpage").load("changedp.jsp",{"id":i});
            }
            function changeupdt()
            {
                var p1=document.getElementById("x1").value;
                var p2=document.getElementById("x2").value;
                var p3=document.getElementById("x3").value;
                var p4=document.getElementById("x4").value;
                $("#userpage").load("chngtask.jsp",{"from2":p1,"to2":p2,"dat2":p3,"msg2":p4});
                alert("The change has bean updated");
                document.changeform.reset();
                return false;
            }
            function fwrdupdt()
            {
                var p1=document.getElementById("from1").value;
                var p2=document.getElementById("to1").value;
                var p3=document.getElementById("dat1").value;
                var p4=document.getElementById("msg2").value;
                $("#userpage").load("fwrdtask.jsp",{"from1":p1,"to1":p2,"dat1":p3,"msg1":p4});
                alert("The Task has bean sucessfully forwarded ");
                document.fwrdform.reset();
                return false;
            }
            function fwrdtask(i)
            {
                $("#userpage").load("fwrddp.jsp",{"id":i});
            }
            function newtask()
            {
                var p1=document.getElementById("fromid").value;
                var p2=document.getElementById("toid").value;
                var p3=document.getElementById("date").value;
                var p4=document.getElementById("msg").value;
                $("#userpage").load("newtask_db.jsp",{"from":p1,"to":p2,"date":p3,"msg":p4});
                alert("your Task has bean sucessfully assigned");
            }
            function orgchart()
            {
                $("#userpage").load("orgchart.jsp");
            }
            function orgchart1(i)
            {
                var id=document.getElementById(i).value;
                $("#userpage").load("innerchart.jsp",{"id":id});
            }
            function userinfo()
            {
                $("#userinfo").load("userinfo.jsp");
                taskmonitor();
                return home();
            }
            function home()
            {
                $("#userpage").load("userhome.jsp");
            }
            function taskmonitor()
            {
                $("#taskmonitor").load("taskmonitorcheck.jsp");
            }
            function resetpassword1()
            {
              var p1=document.getElementById("oldpassword").value;
              var p2=document.getElementById("newpassword").value;
              var p3=document.getElementById("conpassword").value;
              $("#tempdiv").load("checkpass.jsp",{"old":p1},function()
              {
                  var st=document.getElementById("status").value;
                  if(st==="true")
                  {
                     if(p2!==p3)
                     $("#spantag").html("<span style=\"color:red;\">invalid credentails</span>");
                     else
                     $("#tempdiv").load("resetpass.jsp",{"new":p2},function(){alert("password successfully changed");$("#oldpassword").val("");$("#newpassword").val("");$("#conpassword").val("");});    
                  }
                  else
                  $("#spantag").html("<span style=\"color:red;\">invalid credentails</span>");
              });
              return false;
            }
            function valid()
            {
                <%
                    response.setHeader("Cache-Control","no-cache");
                    response.setHeader("Cache-Control","no-store");
                    response.setHeader("Pragma","no-cache");
                    response.setDateHeader ("Expires", 0);
                    String username=(String) session.getAttribute("username");%>;
                var user="<%=username%>";
                if (user==="guest")
                {
                    window.location.assign("mainpage.jsp");
                }
            }
         setTimeout("valid()", 0);
        </script>
    </head>
    <%!
       String username;
       String userid;
    %>
    <%
        username=(String)session.getAttribute("username");
        userid=(String)session.getAttribute("Id");
    %>
    <body onload="userinfo();" >
        <table style="width:100%;">
            <tr>
                <td colspan="2">
                    <%@include file="header1.html"%>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                <%@include file="menu3.jsp" %>
                </td>
            </tr>
        </table>
        <table style="width:100%;height:100%;min-height:470px;  "  > 
            <tr><td width="25%" valign="top">
                    <div id="userinfo" ></div> 
                    <br>
                    <div id="taskmonitor"></div>
                </td>
                <td valign="middle" align="center" style="width:100%;">
                    <div id="userpage">
                    habfnimf
                    </div>
                </td>
            </tr>
        </table>
    </body>
</html>
