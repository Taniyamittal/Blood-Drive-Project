<%-- 
    Document   : InsertDonor
    Created on : 11 Mar, 2021, 8:20:52 PM
    Author     : panki
--%>

<%@page import="java.sql.*" import="java.util.*" import="java.text.SimpleDateFormat" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int bid=Integer.parseInt(request.getParameter("bid"));
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String email=request.getParameter("email");
            String mobile=request.getParameter("mobile");
            String dob=request.getParameter("dob");  
            String gen=request.getParameter("gen");
            String donationdate=request.getParameter("donationdate");
            String bgrp=request.getParameter("bgrp");
            int bqty=Integer.parseInt(request.getParameter("bqty"));
            String pass=request.getParameter("pass");
            /*  out.println(bid);
               out.println(fname);
               out.println(lname);
               out.println(email);
               out.println(mobile);
               out.println(dob);
               out.println(gen);
               out.println(donationdate);
               out.println(bgrp);
               out.println(bqty);
               out.println(pass);*/
                Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery("select max(blood_id) from blood ");
        int blood_id=0;
        if(rs.next())
            blood_id=rs.getInt(1)+1;
        rs=stmt.executeQuery("select add_id from donor where bloodbank_id="+bid+" ");
        int add_id=0;
       if(rs.next())
          add_id=rs.getInt(1);
     int i=stmt.executeUpdate("insert into blood(blood_group,Blood_quantity,Last_Donated) values('"+bgrp+"',"+bqty+",'"+donationdate+"') ");
      i=stmt.executeUpdate("insert into donor(first_name,last_name,password,email,gender,contact_no,add_id,bloodbank_id,blood_id,register_date,status,dob) values('"+fname+"','"+lname+"','"+pass+"','"+email+"','"+gen+"','"+mobile+"' ,"+add_id+","+bid+","+blood_id+",'"+donationdate+"',true,'"+dob+"') ");
      // out.println("Hi");
     rs=stmt.executeQuery("select stock_id,blood_quantity from stock where blood_group='"+bgrp+"' and bloodbank_id="+bid+" ");
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
