<%-- 
    Document   : login
    Created on : 31 Oct, 2018, 2:37:21 PM
    Author     : hardeep
--%>



<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%


       String uname=request.getParameter("uname");
       String password=request.getParameter("password");
      
       
              Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/main", "root", "");
    Statement st=conn.createStatement();
    ResultSet rs;
            rs= st.executeQuery("Select uname,password from signup where uname='"+uname+"' and password ='"+password+"'");
     
                
if(rs.next())
{
    session.setAttribute("uname", uname);
    response.sendRedirect("stud from.html");
}

else
{
    out.println("Invalid Password<a href='index.jsp>Try again</a>");
}

    
%>
    

