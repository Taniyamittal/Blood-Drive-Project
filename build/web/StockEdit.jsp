<%-- 
    Document   : StockEdit
    Created on : 14 Mar, 2021, 2:21:19 PM
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
         height: 100vh;
       
        }
        .donorform{
        padding: 30px;
        margin-top: 20px;
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
  font-size: 18px;
  display: inline-block;
}
.row input{
  width: 300px;
  outline: none;
  border: 1px solid #d5dbd9;
  font-size: 18px;
  padding: 8px 10px;
  border-radius: 3px;
  transition: all 0.3s ease;

}
.btn1{
  width: 200px;
  padding: 8px 10px;
  font-size: 18px;
  border:0;
  background: #c00606;
  color: #fff;
  cursor:pointer;
  border-radius: 3px;
  outline: none;
  margin-bottom: 60px;
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
        function validateForm() {
          var returnval=true;
          clearErrors();
          var bqty=document.forms['donorform1']["bqty"].value;
          var regex1=/^[a-zA-Z]*$/;
          var regex2=/^[0-9]*$/;
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
        int sid=Integer.parseInt(request.getParameter("sid"));
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery("select * from stock where stock_id="+sid+" ");
        if(rs.next())
        {
            %>
      <div class=open"> 
      <form name="donorform1" class="donorform" onsubmit="return validateForm() " action="StockEditAction.jsp" method="get">
      <h2>Stock Management Form</h2>
      <input type="hidden" name="bid" value="<%=request.getParameter("bid") %>">
      <input type="hidden" name="sid" value="<%=request.getParameter("sid") %>">
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

