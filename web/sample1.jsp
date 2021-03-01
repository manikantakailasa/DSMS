/** Project Name:  Write a program in C/C++ (or any other language of your choice) that connects to a MySQL server and 
		  checks if the InnoDB plug-in is installed on it. If so, your program should print the total number of 
		  disk writes by MySQL.

 * Authuor:       Kailasa Manikanta
 * Date:	  11-04-2016
 */
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%!
    //variable for establishing the connection
    Connection con;
    Statement st;
    ResultSet rs;
    
%>
<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");//Load and Register MySQL Driver
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");/*to establish the connection to the database*/
        st=con.createStatement();//Creating Statement Object for executing SQL quries.
        rs=st.executeQuery("SHOW ENGINES");//Creating ResultSet object.
        if(rs.next())//checking Next Row is Available or not in ResultSet object.
        {
            if (rs.getString("Engine").equals("innoDB"))//checking the engine is euals to innoDB plugin or not 
            System.out.println("innoDB plug_in are installed in your system ");//printing message if the innoDB id installed in system
        }
        rs=st.executeQuery("SHOW GLOBAL STATUS");//creating the resultset for checking the status 
        while (rs.next())//checking Next Row is Available or not in ResultSet object.
        {
            if (rs.getString("Support").equals("DEFAULT") || rs.getString("Support").equals("YES"))//checking the innoDB is default or user installed
            {
                System.out.println(rs.getInt(2));//printing the status of the no of disk writes by mysql
            }
        }
        st.close();
        con.close();
    }
    catch (Exception e)
    {
        System.out.println(e+"innoDB plug_in is not instaled in your system");//printing the message if the innoDB is not installed in your System
    }
%>
    
    