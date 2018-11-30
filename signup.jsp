<%-- 
    Document   : signin
    Created on : 20 Nov, 2018, 2:03:19 PM
    Author     : hp
--%>
<%--
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>{

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost","root","");
        Statement db = con.createStatement();
        db.execute("use main");
        String fname =request.getParameter("fname");
        String lname =request.getParameter("lname");
        String uname =request.getParameter("uname");
        String password =request.getParameter("password");

        String birthday =request.getParameter("birthday");
        String gender =request.getParameter("gender");
        String email =request.getParameter("email");
        String phone =request.getParameter("phone");
        
        
        PreparedStatement ps = con.prepareStatement("INSERT INTO signup values(?,?,?,?,?,?,?,?);");
        ps.setString(1,fname);
         ps.setString(2,lname);
          ps.setString(3,uname);
           ps.setString(4,password);
            ps.setString(5,birthday);
             ps.setString(6,gender);
             ps.setString(7,email);
             ps.setString(8,phone);
             ps.execute();
             con.close();
    } 
    catch(ClassNotFoundException e) 
    {
        System.out.println(e);
    }
        
        %>
   <%--
             
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP</title>
    </head>
    <body>
        <h1>signin successful!</h1>
    </body>
</html>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.SQLIntegrityConstraintViolationException" %>
<%
    String fname = request.getParameter("fname");    
    String lname = request.getParameter("lname");
     String uname = request.getParameter("uname");
    String password = request.getParameter("password");
    String birthday= request.getParameter("birthday");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
   
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/main","root","");
    Statement st = con.createStatement();
    //ResultSet rs;
    try {
        st.executeUpdate("insert into signup(fname, lname, uname,password,birthday, gender, email, phone) values ('" + fname + "','" + lname + "','" + uname + "','" + password + "','" + birthday + "', '" + gender + "','"+email+"','"+phone+"')");
    
        //session.setAttribute("uname", user);
         //response.sendRedirect("welcome.jsp");
       out.print("Registration Successfull!"+"<a href='login.html'>Go to Login</a>");
    } catch (SQLIntegrityConstraintViolationException e) {
        out.println("<script>alert('User already Exists'); setTimeout(function(){window.location='mainpage.html'}, 1*1000);</script>");
        //response.sendRedirect("first.jsp");
    }
%>