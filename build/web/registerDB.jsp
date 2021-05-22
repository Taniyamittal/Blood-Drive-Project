<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    String age = request.getParameter("age");    
    String gender = request.getParameter("gender");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String contact = request.getParameter("contactNo");
    String password = request.getParameter("password");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String bgroup = request.getParameter("bgroup");
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
    Statement st = con.createStatement();
       //queries
    String query1 = "select * from location where states = '"+state+"' and city = '"+city+"' ";
//    String query1 = "select * from location where states = 'UTTAR PRADESH' and city = 'Ghaziabad' ";
    //Getting location table data
    ResultSet rs = st.executeQuery(query1);
    int addid = 0;
    if(rs.next()) {
       addid = rs.getInt("add_id"); 
    }
    String query2 = "select * from bloodbank where add_id = "+addid+" ";
    int bloodbankid = 0;
    ResultSet rs1 = st.executeQuery(query2);
    if(rs1.next()) {
       bloodbankid = rs1.getInt("bloodbank_id");
//       out.println(bloodbankid);
    }
    int i = st.executeUpdate("insert into blood(blood_group,blood_quantity) values ('" + bgroup + "',"+0+")");
    String query3 = "select * from blood where blood_id = (select max(blood_id) from blood)";
    int bloodid = 0;
    ResultSet rs3 = st.executeQuery(query3);
    if(rs3.next()) {
        bloodid = rs3.getInt("blood_id");
    }
    i = st.executeUpdate("insert into donor(first_name, last_name, password, dob, email, gender, contact_no, add_id, bloodbank_id, blood_id, register_date,status) values ('" + fname + "','" + lname + "','" + password + "','" + age + "','" + email + "', '" + gender + "', '" + contact + "', "+addid+", "+bloodbankid+", "+bloodid+", CURRENT_DATE,false)");
    //executeUpdte returns the number of affected rows
    if (i > 0) {
        response.sendRedirect("login29.jsp");
    }
%>
