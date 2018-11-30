<%@ page language="java" import="java.sql.*" %>


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
    
    
    
    
<%
   try{
        String uid=request.getParameter("cancel");
    Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
             //    ----- Connection Established ------

         PreparedStatement pst=con.prepareStatement("select name from student1 where name=?");
                pst.setString(1,uid);
         ResultSet rs=pst.executeQuery();
         if(rs.next())
         {
               
                pst=con.prepareStatement("delete from student1 where name=?");
                        pst.setString(1,uid);
                if((pst.executeUpdate()) > 0)
                {
                        out.println("<br><br><br><br><center><h1>    "+uid+" DATA is DELETED  </h1></center> ");
                }
                else
                {
                        out.println("<br><br><br><br><center><h1>    "+uid+" CANNOT CANCEL THE DATA. </h1></center>  ");
                }
         }
         
       }catch(Exception e)
       {
          out.println(e);
       }
%>



<p>
<center>
      "Student Data has been cancelled ! Please <a href='cancel.html'>delete another data </a> if you want !!
</center>

</body>


