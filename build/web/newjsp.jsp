
<%@page import="javax.mail.Message.RecipientType"%>
<%@ page import="java.io.*,java.util.*,javax.mail.* "%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", 465);
        props.put("mail.smtp.user", "harwanibm@gmail.com");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.debug", "true");
        props.put("mail.smtp.socketFactory.port", 465);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false"); 
                   
                Session session1 = Session.getDefaultInstance(props, null);
                session1.setDebug(true);
                MimeMessage message = new MimeMessage(session1);
                message.setText("Your password is " );
                message.setSubject("Password for your account");
                message.setFrom(new InternetAddress("bloodbank21234@gmail.com"));
                message.addRecipient( RecipientType.TO, new InternetAddress("taniyamittal2000@gmail.com"));
                message.saveChanges();
                Transport transport = session1.getTransport("smtp");
                transport.connect("smtp.gmail.com", "bloodbank21234@gmail.com", "blood@123");
                transport.sendMessage(message, message.getAllRecipients());
                transport.close();
                 out.println("Your password mailed to you");         
         
       
%>