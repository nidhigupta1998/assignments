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
        String name =request.getParameter("name");
        String cid =request.getParameter("cid");
        String password =request.getParameter("password");
        String fname =request.getParameter("fname");
        String mname =request.getParameter("mname");
        String batch =request.getParameter("batch");
        String email =request.getParameter("email");
        
        
        PreparedStatement ps = con.prepareStatement("INSERT INTO student1 values(?,?,?,?,?,?,?);");
        ps.setString(1, name);
         ps.setString(2, cid);
          ps.setString(3, password);
           ps.setString(4, fname);
            ps.setString(5, mname);
             ps.setString(6, batch);
             ps.setString(7, email);
             
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
        <%response.sendRedirect("student2.jsp");
        %>
    </body>
</html>
