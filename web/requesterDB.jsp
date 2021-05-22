<%-- 
    Document   : requesterDB
    Created on : 21 Mar, 2021, 4:12:46 PM
    Author     : panki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%  
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String bgroup = request.getParameter("bgroup");
    String email = request.getParameter("email");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
//    out.println(state);
//    out.println(bgroup);
    int status = 0;
    String quantity = request.getParameter("quantity");
//    integer literal
    int quant = Integer.parseInt(quantity);
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
    Statement st = con.createStatement();
    //queries
    String query1 = "select * from location where states = '"+state+"' and city = '"+city+"' ";
    //Getting location table data
    ResultSet rs = st.executeQuery(query1);
    int addid = 0;
    if(rs.next()) {
       addid = rs.getInt("add_id"); 
    }
    String query2 = "select * from bloodbank where add_id = "+addid+" ";
    int bloodid = 0;
    ResultSet rs1 = st.executeQuery(query2);
    if(rs1.next()) {
       bloodid = rs1.getInt("bloodbank_id");
       out.println(bloodid);
    }
    int i = st.executeUpdate("insert into requester(first_name, last_name, status, blood_group, quantity, email, add_id, bloodbank_id) values ('" + fname + "','" + lname + "', " + status + " ,'" + bgroup + "', "+quant+", '" + email + "', "+addid+", "+bloodid+")");
    
    //executeUpdte returns the number of affected rows
    if (i > 0) {
        response.sendRedirect("home.jsp");
    } 
%>
