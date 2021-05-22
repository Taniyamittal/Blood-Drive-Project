<%-- 
    Document   : details
    Created on : Apr 4, 2021, 10:41:31 PM
    Author     : hp laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <%
   String userId = (String)session.getAttribute("checkid");
   response.setHeader("Cache-Control","no-cache");
   response.setHeader("Cache-Control","no-store");
   response.setHeader("Pragma","no-cache");
   response.setDateHeader ("Expires", 0);
    if(userId == null) {
      response.sendRedirect("login29.jsp");
   }
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            
.login-page {
/*  width: 360px;*/
  padding: 8% 0 0;
  margin: auto;
}
/*div {
        margin-bottom: 10px;
}*/
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

 button {
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #c00606;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  opacity: 0.8;
}

label {
        display: inline-block;
        width: 150px;
        text-align: left;
        font-weight: bold;
      }
input {
        padding: 15px;
        background: #f2f2f2;
        border: 0;
        box-sizing: border-box;
        margin: 0 0 15px;
}
*{
    padding: 0;
    margin: 0;
}
body {
  background-image: linear-gradient(to bottom, #8abbda, #9db5dd, #b3aed9, #c8a7cd, #d7a1bc, #de97ad, #e38e9b, #e58686, #e87270, #e95d5a, #e74642, #e42828);
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    height: 100%;
  background-repeat: no-repeat; 
  background-attachment: fixed;
  overflow-x: hidden;
}
        </style>
    </head>
    <body>
         
       <div id="head">
        <jsp:include page="header.jsp"/>
        </div>
       <form method="get"> 
     <div class="login-page">
            <div class="form">
       <input type="hidden" name="did" value="<%=request.getParameter("did")%>" />
      
        <%@ page import ="java.sql.*" %>
        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
    Statement st = con.createStatement();
        String id=request.getParameter("did");
        int id1=Integer.parseInt(id);
        String s="select * from donor where did="+id1+"";
        ResultSet rs=st.executeQuery(s);
        if(rs.next()){
        String bid=rs.getString("bloodbank_id");
        int b=Integer.parseInt(bid);
        String id2=rs.getString("blood_id");
        int id3=Integer.parseInt(id2);
        String add=rs.getString("add_id");
        int id4=Integer.parseInt(add);
        
        String s1="select * from bloodbank where bloodbank_id="+b+"";
        ResultSet rs1=st.executeQuery(s1);
        if(rs1.next())
        {
        
        String bname=rs1.getString("bname");
        %>
        <div>
        <label for="bname">Blood Bank Name</label>
        <input type='text' value="<%=bname%>" readonly="" />
        </div>
        <% } 
        
        String s2="select * from blood where blood_id="+id3+"";
        ResultSet rs2=st.executeQuery(s2);
        if(rs2.next()){
           String qty=rs2.getString("blood_quantity");
           int q=Integer.parseInt(qty);%>
           <div>
           <label for="no">Blood Quantity</label>
           <input type='number' value="<%=q%>" readonly="" />
           </div>
        <% }
        String s3="Select * from location where add_id="+id4+"";
        ResultSet rs3=st.executeQuery(s3);
        if(rs3.next()){
            String cty=rs3.getString("city"); %>
            <div>
            <label for="ct">City</label>
            <input type="text" value="<%=cty%>" readonly=""/>
            </div>
        <%
        String sta=rs3.getString("states");%>
        <div>
        <label for="st">State</label>
         <input type="text" value="<%=sta%>" readonly="" />
        </div>
        <button name="done">Done</button>
        <% }
        if(request.getParameter("done")!=null)
        {
            response.sendRedirect("button.jsp?did="+id1+"");
        }
        }
        %>
        
       
       
             </div>
         </div>     
      <div id="foot">
        <jsp:include page="footer.jsp"/>
        </div>
        </form>
    </body>
</html>
