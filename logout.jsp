


<%

if(session != null)
    session.invalidate();
request.getRequestDispatcher("login.html").forward(request,response);
%>
<script>
    alert("logged out success");
    location='login.html';
    </script>