<%-- 
    Document   : DonorDelete
    Created on : 9 Mar, 2021, 1:47:13 PM
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
     //   out.println(bid);
    //    out.println(did);
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
        Statement stmt=conn.createStatement();
      //  int bid=Integer.parseInt(request.getParameter("bid"));
        ResultSet rs=stmt.executeQuery("select * from donor where bloodbank_id="+bid+" ");
        int blood_id=0;
        if(rs.next())
            blood_id=rs.getInt(13);
        out.println(blood_id);
       // int i=stmt.executeUpdate("delete from blood where blood_id="+blood_id+" ");
        
          int i=stmt.executeUpdate("delete from donor where did="+did+"");
        //  i=stmt.executeUpdate("delete from blood where blood_id="+blood_id+" ");
          response.sendRedirect("AdminDonor.jsp?bid="+bid+" ");
        }catch(Exception e){out.println(e);}
        %>
        
    </body>
</html>
