
<%@page import="java.sql.*" %>


     <%
         try{
  String url="jdbc:mysql://localhost:3306/student";
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection(url,"root","");
        String query="select * from student1";
        Statement st=conn.createStatement();
        ResultSet Rs=st.executeQuery(query);
%>

   
<html>
<head>
    <head>
	<style>
body {
    background: #FFFF99;
    font-family: Arial, Helvetica, sans-serif;
    margin: 0;
}

/* Style the header */
.header {
    padding: 80px;
    text-align: center;
    background: #1abc9c;
    color: white;
}

/* Increase the font size of the h1 element */
.header h1 {
    font-size: 40px;
}

/* Style the top navigation bar */
.navbar {
    overflow: hidden;
    background-color: #333;
}

/* Style the navigation bar links */
.navbar a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
    float: right;
}

/* Change color on hover */
.navbar a:hover {
    background-color: #ddd;
    color: black;
}
</style>
</head>
<style>button
		{
			border-radius: 5px;
			background-color: crimson;
			color: white;
			font-size: 20px;
			padding: 3px 3px 3px 3px;
			margin: 0px 5px 5px 0px;
		}</style>

<title>view student data</title>
</head>
 
     
     
     
     
<h2 align="center" >Student Data</h2>


<div class="limiter">
		<div class="container-table100">
			
		<div class="wrap-table100">
				<div class="table100">

    
<table border="2" align=center>
   
<thead>
<tr bgcolor="#222104">
<FONT FACE="Impact" COLOR="#FFFF99">
<th><font size="3" COLOR="#FFFF99">Name</th>
<th><font size="3" COLOR="#FFFF99">College Id</th>
<th><font size="3" COLOR="#FFFF99">Fathers name</th>
<th><font size="3" COLOR="#FFFF99">Mothers name</th>
<th><font size="3" COLOR="#FFFF99">Batch</th>
<th><font size="3" COLOR="#FFFF99">Email</th>
</FONT>
<%
while(Rs.next())
{
%><tr bgcolor="#e9beca">
        

   <td><%out.println(Rs.getString(1));%></td>
   <td><%out.println(Rs.getString(2));%></td>
  <td><%out.println(Rs.getString(3));%></td>
  <td><%out.println(Rs.getString(4));%></td>
  <td><%out.println(Rs.getString(5));%></td>
  <td><%out.println(Rs.getString(6));%></td>
 
   </tr>
</table>
                                </div>
                        </div>
                </div>
</div>

             
<% 
  }
%>

</thead>
</body>
</html>

<%
}
catch(Exception e){out.println(e.getMessage());}

%>

 


 
