<%-- 
    Document   : AddDonor
    Created on : 11 Mar, 2021, 7:51:59 PM
    Author     : panki
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
  width: 200px;
  margin-right: 10px;
  font-size: 14px;
}
.row input{
  width: 300px;
  outline: none;
  border: 1px solid #d5dbd9;
  font-size: 15px;
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
        function getAge(DOB) {
            var today = new Date();
            var birthDate = new Date(DOB);
            var age = today.getFullYear() - birthDate.getFullYear();
            var m = today.getMonth() - birthDate.getMonth();
            if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
            age--;
            }    
            return age;
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
          var fname=document.forms['donorform1']["fname"].value;
          var lname=document.forms['donorform1']["lname"].value;
          var gen=document.forms['donorform1']["gen"].value;
          var pass=document.forms['donorform1']["pass"].value;
          var cpass=document.forms['donorform1']["cpass"].value;
          var bgrp=document.forms['donorform1']["bgrp"].value;
          var bqty=document.forms['donorform1']["bqty"].value;
          var dob=document.forms['donorform1']["dob"].value;
          var dot=document.forms['donorform1']["donationdate"].value;
          var regex1=/^[a-zA-Z]*$/;
          var regex2=/^[0-9]*$/;
          var regex3=/^\d{4}\-(0[1-9]|1[012])\-(0[1-9]|[12][0-9]|3[01])$/;
          if(regex1.test(fname)===false){
            seterror("fnameerror","*Please Enter Valid Name");
            returnval=false;
          }
           if(regex1.test(lname)===false){
            seterror("lnameerror","*Please Enter Valid Name");
            returnval=false;
          }
          if(regex3.test(dob)===false){
            seterror("doberror","*Please Enter Valid Date");
            returnval=false;
          }
          var enteredAge = getAge(dob);
            if( enteredAge < 18 || enteredAge>65 ) {
            seterror("doberror","*Please Enter Valid Date");
            returnval=false;
            }
         
          if(gen==="Select"){
            seterror("generror","*Please select your Gender");
            returnval=false;
          }
           if(regex3.test(dot)===false){
            seterror("donationerror","*Please Enter Valid Date");
            returnval=false;
          }
          if(checktoday(dot)===false){
             seterror("donationerror","*Please Enter Valid Date");
            returnval=false; 
          }
         
          if(pass!==cpass)
          {
            seterror("cpasserror","*Password and Confirm Password should be same");
            returnval=false;
          }
          if(bgrp==="Select"){
            seterror("bgrperror","*Please select your Blood Group");
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
         <div class="open"> 
    <form name="donorform1" class="donorform" onsubmit="return validateForm() " action="InsertDonor.jsp" method="get">
      <h2>Donor Registration Form</h2>
      <input type="hidden" name="bid" value="<%=request.getParameter("bid") %>">
      <div class="row">
        <label>First Name </label>
        <input type="text" name="fname" class="input" required>
        <div class="error" id="fnameerror"></div>
        </div>
        <div class="row">
          <label>Last Name </label>
          <input type="text" name="lname" class="input" required>
          <div class="error" id="lnameerror"></div>
          </div>
          <div class="row">
            <label>Email </label>
            <input type="email" name="email" class="input" required>
            <div class="error" id="emailerror"></div>
            </div>
            <div class="row">
              <label>Mobile Number </label>
              <input type="text" name="mobile" maxlength="10" class="input" required>
              <div class="error" id="mobileerror"></div>
              </div>
              <div class="row">
                <label>Date of Birth </label>
                <input type="text" name="dob" class="input" placeholder="yyyy-mm-dd" required >
                <div class="error" id="doberror"></div>
                </div>
                <div class="row">
                  <label>Gender</label>
                  <select name="gen" class="custom_select" >
                  <option class="select">Select</option>
                  <option class="select">Male</option>
                  <option class="select">Female</option>
                  </select>
                  <div class="error" id="generror"></div>
                  </div>
                  <div class="row">
                    <label>Donation Date</label>
                    <input type="text" name="donationdate" class="input" placeholder="yyyy-mm-dd"  required>
                    <div class="error" id="donationerror"></div>
                    </div>
                    <div class="row">
                      <label>Blood Group</label>
                      <select name="bgrp" class="custom_select">
                      <option class="select">Select</option>
                      <option class="select">A+</option>
                      <option class="select">A-</option>
                      <option class="select">B+</option>
                      <option class="select">B-</option>
                      <option class="select">AB+</option>
                      <option class="select">AB-</option>
                      <option class="select">O+</option>
                      <option class="select">O-</option>
                      </select>
                      <div class="error" id="bgrperror"></div>
                      </div>
                      <div class="row">
                        <label>Blood Quantity</label>
                        <input type="text" name="bqty" class="input" required>
                        <div class="error" id="bqtyerror"></div>
                        </div>
                    <div class="row">
                      <label>Password</label>
                      <input type="password" name="pass" class="input" required>
                      <div class="error" id="passerror"></div>
                      </div>
                      <div class="row">
                        <label>Confirm Password</label>
                        <input type="password" name="cpass" class="input" required>
                        <div class="error" id="cpasserror"></div>
                        </div>
                        <div >
                          <br />
                          <input type="submit" value="Submit" class="btn1" >
                          </div>
      </form>
     </div>
    </body>
    <jsp:include page="AdminFooter.html"/>
</html>
