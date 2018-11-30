<%-- 
    Document   : signin
    Created on : 20 Nov, 2018, 2:03:19 PM
    Author     : hp
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>{

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost","root","");
        Statement db = con.createStatement();
        db.execute("use test");
        String first_name =request.getParameter("first_name");
        String last_name =request.getParameter("last_name");
        String email =request.getParameter("email");
        String birthday =request.getParameter("birthday");
        String gender =request.getParameter("gender");
        String phone =request.getParameter("phone");
        String username =request.getParameter("username");
        String password =request.getParameter("password");
        
        PreparedStatement ps = con.prepareStatement("INSERT INTO login values(?,?,?,?,?,?,?,?);");
        ps.setString(1,first_name);
         ps.setString(2,last_name);
          ps.setString(3,email);
           ps.setString(4,birthday);
            ps.setString(5,gender);
             ps.setString(6,phone);
             ps.setString(7,username);
             ps.setString(8,password);
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
<%--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.SQLIntegrityConstraintViolationException" %>
<%
    String f_name = request.getParameter("first_name");    
    String l_name = request.getParameter("last_name");
    String birth= request.getParameter("birthday");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
    Statement st = con.createStatement();
    //ResultSet rs;
    try {
        st.executeUpdate("insert into login(first_name, last_name, birthday, gender, email, phone,username,password) values ('" + f_name + "','" + l_name + "','" + birth + "','" + gender + "','" + email + "', '" + phone + "','"+username+"','"+password+"')");
    
        //session.setAttribute("uname", user);
         //response.sendRedirect("welcome.jsp");
       out.print("Registration Successfull!"+"<a href='login.html'>Go to Login</a>");
    } catch (SQLIntegrityConstraintViolationException e) {
        out.println("<script>alert('User already Exists'); setTimeout(function(){window.location='mainpage.html'}, 1*1000);</script>");
        //response.sendRedirect("first.jsp");
    }
%>
--%>
