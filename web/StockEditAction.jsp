<%-- 
    Document   : StockEditAction
    Created on : 14 Mar, 2021, 2:28:22 PM
    Author     : panki
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            int bid=Integer.parseInt(request.getParameter("bid"));
            int sid=Integer.parseInt(request.getParameter("sid"));
            int bqty=Integer.parseInt(request.getParameter("bqty"));
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
            Statement stmt=conn.createStatement();
            int i=stmt.executeUpdate("update stock set blood_quantity="+bqty+" where stock_id="+sid+" ");
            response.sendRedirect("AdminStock.jsp?bid="+bid+" ");
            
        %>
    </body>
</html>
