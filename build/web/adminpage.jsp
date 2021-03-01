<%-- 
    Document   : firstpage
    Created on : Feb 1, 2016, 10:07:30 AM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
                margin: 0;
            }
        </style>
                <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
        <script type="text/javascript">
            function newdeptcheck()
            {
                var name=document.newdeptform.newdepttxt.value;
                var id=document.newdeptform.deptidtxt.value;
                $("#tempdiv").load("newdeptdb.jsp",{"newdepttxt":name,"deptidtxt":id});
                alert("your registration has bean sucessfull");
                document.newdeptform.reset();
                return false;
            }
         function usrreg()
         {
              var id=document.userreg.idtxt.value;
              var name=document.userreg.nametxt.value;
              var desgno=document.userreg.desgtxt.value;
              var projno=document.userreg.projtxt.value;
              var email=document.userreg.mailtxt.value;
              var password=document.userreg.passtxt.value;
              var phone=document.userreg.phntxt.value;
              var addrs=document.userreg.addtxt.value;
              $("#tempdiv").load("userregdb.jsp",{"idtxt":id,"nametxt":name,"desgtxt":desgno,"projtxt":projno,"mailtxt":email,"passtxt":password,"phntxt":phone,"addtxt":addrs});
              alert("your registration has bean sucessfull");
              document.userreg.reset();
              return false;
         }
         function deptcheck()
         {
             var id=document.deptupdateform.idtxt.value;
             $("#tempdiv").load("checkdeptid.jsp",{"id":id},function()
          {
           var status=document.getElementById("status").value;
           if(status==="false")
           document.getElementById("statusspan").innerHTML="invalid department id";
           else
           $("#adminpage").load("deptupdateinfo.jsp",{"id":id});
          });
          return false;
         }
        function userupdate()
        {
          var uid=document.userupdateform.uid.value;
          $("#tempdiv").load("checkuserid.jsp",{"uid":uid},function()
          {
           var status=document.getElementById("status").value;
           if(status==="false")
           document.getElementById("statusspan").innerHTML="invalid user id";
           else
           $("#adminpage").load("userupdateinfo.jsp",{"uid":uid});
          });
          return false;
        }
        function deptnewinfo()
        {
            var id=document.deptreg.idtxt.value;
            var name=document.deptreg.nametxt.value;
            $("#tempdiv").load("deptregdbupdate.jsp",{"idtxt":id,"nametxt":name});
            $("#adminpage").load("dept_update.jsp");
            alert("user details has bean sucessfully updated");
            return false;
        }
         function usernewinfo()
         {
              var id=document.userreg2.idtxt.value;
              var name=document.userreg2.nametxt.value;
              var desgno=document.userreg2.desgtxt.value;
              var projno=document.userreg2.projtxt.value;
              var email=document.userreg2.mailtxt.value;
              var password=document.userreg2.passtxt.value;
              var phone=document.userreg2.phntxt.value;
              var addrs=document.userreg2.addtxt.value;
              $("#tempdiv").load("userregdbupdate.jsp",{"idtxt":id,"nametxt":name,"desgtxt":desgno,"projtxt":projno,"mailtxt":email,"passtxt":password,"phntxt":phone,"addtxt":addrs});
              $("#adminpage").load("user_update.jsp");
              alert("user details has bean sucessfully updated");
              return false;
         }
         function deptdelete()
         {
             var id=document.deptdeleteform.idtxt.value;
             $("#tempdiv").load("checkdept.jsp",{"id":id},function()
             {
                 var status=document.getElementById("status").value;
                 if  (status==="false"){
                     document.getElementById("statusspan").innerHTML="invalid given credentials";}
                 else
                     $("#adminpage").load("deptconfirm.jsp",{"id":id});
             });
             return false;
         }
         function deptblockinfo()
         {
              var id=document.deptreg1.idtxt.value;
              $("#tempdiv").load("deletingdept.jsp",{"id":id});
              $("#adminpage").load("deptdelete.jsp");
              alert("user details has bean sucessfully blocked");
              return false;
         }
         function blockfun()
         {
              var id=document.blockform.utxt.value;
              var pw=document.blockform.passtxt.value;
               $("#tempdiv").load("checkblock.jsp",{"uid":id,"pwd":pw},function()
               {
                 var status=document.getElementById("status").value;
                 if(status==="false")
                 document.getElementById("statusspan").innerHTML="invalid given credentials";
                 else
                 $("#adminpage").load("confirmblock.jsp",{"uid":id});
                });
          return false; 
             
         }
         function blockinfo()
         {
              var id=document.userreg3.idtxt.value;
              $("#tempdiv").load("deleteblock.jsp",{"uid":id});
              $("#adminpage").load("block.jsp");
              alert("user details has bean sucessfully blocked");
              return false;
         }
         function admininfo()
            {
                $("#admininfo").load("admininfo.jsp");
                $("#adminpage").load("userhome.jsp");
            }
            function resetpassword()
            {
              var p1=document.getElementById("oldpassword").value;
              var p2=document.getElementById("newpassword").value;
              var p3=document.getElementById("conpassword").value;
              $("#tempdiv").load("checkpass.jsp",{"old":p1},function()
              {
                  var st=document.getElementById("status").value;
                  if(st=="true")
                  {
                     if(p2!=p3)
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
        <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
    </head>
    <body style="overflow-x: hidden;width:100%;height:100%;" onload="return admininfo()">
        <%
            try
            {    
            String un=(String) session.getAttribute("username");
            if(un.equals("guest"))
            response.sendRedirect("mainpage.jsp");
            }
            catch(Exception e)
            {
              session.setAttribute("username","guest");
              response.sendRedirect("mainpage.jsp");
            }    
        %>
        <table style="min-height:630px;width:100%;">
            <tr>
                <td colspan="2">
                    <%@include file="header1.html" %>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <%@include file="menu2.jsp" %>
                </td>
            </tr>
            <tr>
                <td width="25%" id="admininfo" valign="top" style="height:100%;" >
                </td>
                <td valign="middle" align="center" style="height:100%;width:100%;">
                    <div id="adminpage"></div>
                </td>
            </tr>
        </table>
                <div id="tempdiv" style="visibility: hidden;display: none;"></div>
    </body>
</html>
