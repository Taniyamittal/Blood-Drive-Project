<%-- 
    Document   : EditDonorAction
    Created on : 12 Mar, 2021, 7:06:01 PM
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
            int did=Integer.parseInt(request.getParameter("did"));
            String donationdate=request.getParameter("dt");
            out.println(donationdate.length());
             out.println(donationdate);
            String blood_id=request.getParameter("blood_id");
            int bqty=Integer.parseInt(request.getParameter("bqty"));
            String bgrp=request.getParameter("bgrp");
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
            Statement stmt=conn.createStatement();
            int i=stmt.executeUpdate("update blood set blood_quantity="+bqty+",last_donated='"+donationdate+"' where blood_id="+blood_id+" ");
            int t=stmt.executeUpdate("update donor set status=true where did="+did+" ");
            ResultSet rs=stmt.executeQuery("select stock_id,blood_quantity from stock where blood_group='"+bgrp+"' and bloodbank_id="+bid+" ");
            int qty=0;
            int stock=0;
            if(rs.next())
            {
                stock=rs.getInt(1);
                qty=rs.getInt(2);
            }
            qty=qty+bqty;
            i=stmt.executeUpdate("update stock set blood_quantity="+qty+" where stock_id="+stock+" ");
            response.sendRedirect("AdminDonor.jsp?bid="+bid+" ");
     %>
    </body>
</html>
