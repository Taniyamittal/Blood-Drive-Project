<%-- 
    Document   : EditDonor
    Created on : 12 Mar, 2021, 4:41:06 PM
    Author     : panki
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%
   String userId = (String)session.getAttribute("checkid");
   response.setHeader("Cache-Control","no-cache");
   response.setHeader("Cache-Control","no-store");
   response.setHeader("Pragma","no-cache");
   response.setDateHeader ("Expires", 0);
    if(userId == null) {
      response.sendRedirect("AdminLogin.jsp");
   }
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
         .open{
         padding: 35px 30px;
         height: 750px;
       
        }
        .donorform{
        padding: 20px;
        }

.donorform h2{
  font-size: 24px;
  font-weight: 700;
  margin-bottom: 25px;
  color:#c00606;
  text-transform: uppercase;

}
.row{
  margin-bottom: 15px;
  display: flex;
  align-items: center;
}
.row label{
  width: 150px;
  margin-right: 10px;
  font-size: 14px;
  display: inline-block;
}
.row input{
  width: 300px;
  outline: none;
  border: 1px solid #d5dbd9;
  font-size: 17px;
  padding: 8px 10px;
  border-radius: 3px;
  transition: all 0.3s ease;


}
.custom_select{
  position: relative;
  width: 320px;
  height: 37px;
  border: 1px solid #d5dbd9;
}
.btn1{
  width: 200px;
  padding: 8px 10px;
  font-size: 15px;
  border:0;
  background: #c00606;
  color: #fff;
  cursor:pointer;
  border-radius: 3px;
  outline: none;
}
.error{
  color:#c00606;
  font-weight: bold;
}

        </style>
      <script type="text/javascript">
        function clearErrors(){
         errors = document.getElementsByClassName('error');
         for(let item of errors)
         {
             item.innerHTML = "";
         }
        }
        function seterror(id, error){
          document.getElementById(id).innerHTML = error;
        }
         function checktoday(DOT){
            var today = new Date();
            var birthDate = new Date(DOT);
            if(today>= birthDate)
                return true;
            return false;
        }
        function validateForm() {
            
          var returnval=true;
          clearErrors();
          var bqty=document.forms['donorform1']["bqty"].value;
          var dt=document.forms['donorform1']["dt"].value;
          var regex1=/^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
          var regex2=/^[0-9]*$/;
          if(regex1.test(dt)===false){
            seterror("dterror","*Please Enter Valid Date");
            returnval=false;
          }
           if(checktoday(dt)===false){
             seterror("dterror","*Please Enter Valid Date");
            returnval=false; 
          }
         
          if(regex2.test(bqty)===false){
            seterror("bqtyerror","*Please Enter Valid Blood Quantity");
            returnval=false;
          }
          return returnval;
        }
      </script>
    </head>
    <jsp:include page="AdminHeader.jsp"/>
    <body>
        <%
        int bid=Integer.parseInt(request.getParameter("bid"));
        int did=Integer.parseInt(request.getParameter("did"));
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery("select * from donor where did="+did+" ");
        if(rs.next())
        {
            %>
      <div class=open"> 
      <form name="donorform1" class="donorform" onsubmit="return validateForm() " action="EditDonorAction.jsp" method="get">
      <h2>Donor Registration Form</h2>
      <input type="hidden" name="bid" value="<%=request.getParameter("bid") %>">
      <input type="hidden" name="did" value="<%=request.getParameter("did") %>">
      <div class="row">
      <b><label>First Name </label></b>
      <input type="text" name="fname" class="input" value="<%=rs.getString(2)%>" readonly>
      <div class="error" id="fnameerror"></div>
       </div>
       <div class="row">
      <b><label>Last Name </label></b>
      <input type="text" name="lname" class="input" value="<%=rs.getString(3)%>" readonly>
      <div class="error" id="lnameerror"></div>
       </div> 
         <%
        }
        rs=stmt.executeQuery("select * from donor where did="+did+" ");
        int blood_id=0;
        if(rs.next())
            blood_id=rs.getInt(13);
       // out.println(blood_id);
        rs=stmt.executeQuery("select * from blood where blood_id="+blood_id+" ");
        while(rs.next())
        {
    %>
     
    <input type="hidden" name="blood_id" value="<%=rs.getInt(1) %>">
        <div class="row">
      <b><label>Blood Group</label></b>
      <input type="text" name="bgrp" class="input" value="<%=rs.getString(2)%>" readonly>
       </div>
        <br />
        <div class="row">
      <b><label>Blood Quantity</label></b>
      
      <input type="text" name="bqty" class="input" value="<%=rs.getInt(3)%>" required >
      <div class="error" id="bqtyerror"></div>
       </div>
        <br />
        <div class="row">
      <b><label>Last Donated</label></b>
      <% String dt=rs.getString(4);  
         if(dt==null)
             dt="";
      %>
      <input type="text" name="dt" class="input" value="<%=dt%>" placeholder="yyyy-mm-dd" required >
       <div class="error" id="dterror"></div>
        </div>
        <br />
        <input type="submit" value="Submit" class="btn1" >
        </div>
         <%
        }
        %>
      </form>
     </div>
    </body>
   
    <jsp:include page="AdminFooter.html"/>
</html>

