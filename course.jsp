<%-- 
    Document   : student
    Created on : 28 Nov, 2018, 10:52:33 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost","root","");
        Statement db = con.createStatement();
        db.execute("use student");
        String cname =request.getParameter("cname");
        String ccode =request.getParameter("ccode");
        String speriod =request.getParameter("speriod");
        String stream =request.getParameter("stream");
        
        
        
        PreparedStatement ps = con.prepareStatement("INSERT INTO course values(?,?,?,?);");
        ps.setString(1, cname);
         ps.setString(2, ccode);
          ps.setString(3, speriod);
           ps.setString(4, stream);
        
             
             ps.execute();
             con.close();
    } 
    catch(ClassNotFoundException e) 
    {
        System.out.println(e);
    }
        
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            response.sendRedirect("course2.jsp");
            %>
    </body>
</html>
