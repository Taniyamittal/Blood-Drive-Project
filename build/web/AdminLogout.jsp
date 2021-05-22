<%-- 
    Document   : AdminLogout
    Created on : 3 May, 2021, 11:30:10 AM
    Author     : panki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
            session.setAttribute("checkid",null);
            session.invalidate();
            response.sendRedirect("home.jsp");
        %>
    </body>
</html>
