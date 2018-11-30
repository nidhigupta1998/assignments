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
        String sname =request.getParameter("sname");
        String batch=request.getParameter("batch");
        String stream =request.getParameter("stream");
        String cname =request.getParameter("cname");
           String ccode =request.getParameter("ccode");
            String speriod =request.getParameter("speriod");
        
        
        
        PreparedStatement ps = con.prepareStatement("INSERT INTO assign values(?,?,?,?,?,?);");
        ps.setString(1, sname);
         ps.setString(2, batch);
          ps.setString(3, stream);
           ps.setString(4, cname);
            ps.setString(5, ccode);
            ps.setString(6, speriod);
        
             
             ps.execute();
             con.close();
    } 
    catch(ClassNotFoundException e) 
    {
        System.out.println(e);
    }
        
        %>


        <% 
            response.sendRedirect("assign2.jsp");
            %>
    



 
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
