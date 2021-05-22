<%-- 
    Document   : AdminRequestDelete
    Created on : 9 Mar, 2021, 9:16:10 PM
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
        int req_id=Integer.parseInt(request.getParameter("req_id"));
     //   out.println(bid);
    //    out.println(did);
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
        Statement stmt=conn.createStatement();
      //  int bid=Integer.parseInt(request.getParameter("bid"));
       // int i=stmt.executeUpdate("delete from blood where blood_id="+blood_id+" ");
        
          int i=stmt.executeUpdate("delete from requester where req_id="+req_id+"");
        //  i=stmt.executeUpdate("delete from blood where blood_id="+blood_id+" ");
          response.sendRedirect("AdminRequestAccepted.jsp?bid="+bid+" ");
        }catch(Exception e){out.println(e);}
        %>
    </body>
</html>
