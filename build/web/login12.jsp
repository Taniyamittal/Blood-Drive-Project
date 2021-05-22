

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
<%
    String emailid = request.getParameter("email");    
    String pwd = request.getParameter("password");
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select did from donor where email='" + emailid + "' and password='" + pwd + "'");
    if (rs.next()) {
        //session.setAttribute("emailid", emailid);
        session.setAttribute("checkid", "1");
       // String id=rs.getString("did");
       // session.setAttribute("id",id);
       // out.println("welcome " + emailid);
        //out.println("<a href='logout.jsp'>Log out</a>");
       response.sendRedirect("button.jsp?did="+rs.getInt("did")+" ");
    } else {
        response.sendRedirect("login29.jsp");
       // out.println("welcome1 " + emailid);
    }
%>
    </body>
</html>

