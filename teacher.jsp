<%-- 
    Document   : teacher
    Created on : 28 Nov, 2018, 11:34:07 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : student
    Created on : 28 Nov, 2018, 10:52:33 AM
    Author     : hp
--%>

<%@page import="java.sql.*"%>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost","root","");
        Statement db = con.createStatement();
        db.execute("use student");
        String tname =request.getParameter("tname");
        String cid =request.getParameter("cid");
        String password =request.getParameter("password");
        String mobno =request.getParameter("mobno");
           String email =request.getParameter("email");
        
        
        
        PreparedStatement ps = con.prepareStatement("INSERT INTO teacher values(?,?,?,?,?);");
        ps.setString(1, tname);
         ps.setString(2, cid);
          ps.setString(3, password);
           ps.setString(4, mobno);
            ps.setString(5, email);
        
             
             ps.execute();
             con.close();
    } 
    catch(ClassNotFoundException e) 
    {
        System.out.println(e);
    }
        
        %>


        <% 
            response.sendRedirect("teacher2.jsp");
            %>
    



 
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
