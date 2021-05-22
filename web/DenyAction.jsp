<%-- 
    Document   : AcceptAction
    Created on : 27 Mar, 2021, 7:43:02 PM
    Author     : panki
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.mail.Message.RecipientType"%>
<%@ page import="java.io.*,java.util.*,javax.mail.* "%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<%
    int bid=Integer.parseInt(request.getParameter("bid"));
    int rid=Integer.parseInt(request.getParameter("rid"));
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
    Statement stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery("select email from requester where req_id="+rid+" ");
    String emailto="";
    if(rs.next())
        emailto=rs.getString(1);
    rs=stmt.executeQuery("select email,password from bloodbank where bloodbank_id="+bid+" ");
    String emailfrom="";
    String pass="";
    if(rs.next())
    {
        emailfrom=rs.getString(1);
        pass=rs.getString(2);
    }
     Properties props = new Properties();
     props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", 465);
        props.put("mail.smtp.user", emailfrom);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.debug", "true");
        props.put("mail.smtp.socketFactory.port", 465);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false"); 
                   
                Session session1 = Session.getDefaultInstance(props, null);
                session1.setDebug(true);
                MimeMessage message = new MimeMessage(session1);
                message.setText("Your blood request has been Denied." );
                message.setSubject("Blood Request");
                message.setFrom(new InternetAddress( emailfrom));
                message.addRecipient( RecipientType.TO, new InternetAddress( emailto));
                message.saveChanges();
                Transport transport = session1.getTransport("smtp");
                transport.connect("smtp.gmail.com", emailfrom, pass);
                transport.sendMessage(message, message.getAllRecipients());
                transport.close();
                 out.println("Your password mailed to you");  
    int i=stmt.executeUpdate("delete from requester  where req_id="+rid+" ");
    if(i>0)
        response.sendRedirect("AdminRequestPending.jsp?bid="+bid+" ");
         
    
%>
