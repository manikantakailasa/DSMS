<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.Date"%>
<style>
    .td2
    {
        padding-bottom: 5px;
        padding-top: 5px;
    }
</style>
<%!
    String userid;
    Connection con;
    ResultSet rs;
    Statement st;
%>
<%
    userid=(String) session.getAttribute("Id");

    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
        st=con.createStatement();
        rs=st.executeQuery("select * from taskmonitor where to_u like '"+userid+"'");
        String st=String.format("%tF",new Date());
        StringTokenizer str1=new StringTokenizer(st,"-");
        int y=Integer.parseInt(str1.nextToken());
        int m=Integer.parseInt(str1.nextToken());
        int d=Integer.parseInt(str1.nextToken());
        %>
        <table style="width: 100%;">
            <%
        while(rs.next())
        {
        String date=rs.getString(3);
        StringTokenizer str=new StringTokenizer(date,"-");
        int y2=Integer.parseInt(str.nextToken());
        int m2=Integer.parseInt(str.nextToken());
        int d2=Integer.parseInt(str.nextToken());
            if(m2==m)
            {
                if((d2-d)>=0)
                {
                %>
                <tr><td class="td2" <%if ((d2-d)<=3){%>style="background-color: red;color: #ffffff" <% }else {%> style="background-color: #e2e2e2" style=" text-align: center;padding: 9px;"<%}%>>task from <%out.println(""+rs.getString(1)+"");%>is last <%out.println(d2-d);%> days</td></tr>
            <%  }
            }
            else
            if(((m2-m)>=0))
              {    %>      
                <tr><td class="td2" style="background-color: #e2e2e2" style=" text-align: center;padding: 9px;">task from <%out.println(""+rs.getString(1)+"");%>is last <%out.println(m2-m);%> moths and <%if (m==1||m==3||m==5||m==7||m==8||m==10||m==12){out.println((31-d)+d2);}else{out.println((30-d)+d2);}%> days</td></tr>
         <%   }
        }
%></table>
<%
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
con.close();
%>