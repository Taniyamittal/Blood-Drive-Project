<%-- 
    Document   : update
    Created on : Mar 12, 2021, 7:51:08 PM
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
#sc-edprofile {
  background: #f0f0f0;
  width: 400px;
  margin: 0 auto;
  margin-top: 100px;
  margin-bottom: 2%;
  transition: opacity 1s;
  -webkit-transition: opacity 1s;
  
}

#sc-edprofile h1 {
  background: #c00606;
  padding: 6% 4%;
  font-size: 140%;
  font-weight: 300;
  text-align: center;
  color: #fff;
}

div#sc-edprofile .sc-container {
  background: #ffffff;
  padding: 6% 4%;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

div#sc-edprofile input[type="email"],
div#sc-edprofile input[type="text"],
div#sc-edprofile input[type="password"],div#sc-edprofile input[type="password"],div#sc-edprofile input[type="date"],div#sc-edprofile input[type="number"]{
  width: 92%;
  background: #fff;
  margin-bottom: 4%;
  border: 1px solid #ccc;
  padding: 4%;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  font-size: 95%;
  color: #555;
}
div#sc-edprofile input[type="submit"] {
  width: 100%;
  background: #c00606;
  border: 0;
  padding: 4%;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  font-size: 100%;
  color: #fff;
  cursor: pointer;
  transition: background .3s;
  -webkit-transition: background .3s;
}

div#sc-edprofile input[type="submit"]:hover {
  opacity: 0.8;
}


body {
  background: linear-gradient(to top, #c00606 0%, #f7dada 100%);
  height: 100%;
  background-repeat: no-repeat;
  background-attachment: fixed;
 overflow-x: hidden;
 font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
*{
    padding: 0;
    margin: 0;
}

        </style>
        
<script>
 
  var check = function() {
     var today = new Date();
        var nowyear = today.getFullYear();
        var nowmonth = today.getMonth();
        var nowday = today.getDate();
        var b = document.getElementById('d').value;
        var birth = new Date(b);

        var birthyear = birth.getFullYear();
        var birthmonth = birth.getMonth();
        var birthday = birth.getDate();

        var age1 = nowyear - birthyear;
        var age_month = nowmonth - birthmonth;
        var age_day = nowday - birthday;
     var email=document.getElementById('mail').value;
     var phone = document.getElementById('contactNo').value;
     var password = document.getElementById('password').value;
       var cpassword = document.getElementById('cpassword').value;
     var phoneno = /^\d{10}$/;
     var re=/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
     var c=0;
  if(email.length >=1)
        {
            if(!re.test(email.trim())) {
                document.getElementById('message1').style.color = 'red';
                 document.getElementById('message1').innerHTML = " **Email is not valid";
                 c=c+1;
            }
            else 
            {
                document.getElementById('message1').innerHTML = "";
            }

        }
        else 
        {
            document.getElementById('message1').style.color = 'red';
            document.getElementById('message1').innerHTML = " **Please fill the email field";
            c=c+1;
        }
if(password.length < 4) {
    document.getElementById('epassword').style.color = 'red';
            document.getElementById('epassword').innerHTML = " **Password must be of atleast 4 characters";
            c=c+1;
        }
        else if (password.length > 15) {
             document.getElementById('epassword').style.color = 'red';
            document.getElementById('epassword').innerHTML = " **Password must be less than 16 characters";
            c=c+1;
        }
        else{
            document.getElementById('epassword').innerHTML = "";
        }
         
        //Confirm Password field validation 
        if(cpassword.length < 1)
        {
             document.getElementById('ecpassword').style.color = 'red';
            document.getElementById('ecpassword').innerHTML = " **Please fill the confirm password field";
            c=c+1;
        }
        else if(password !== cpassword)
        {
           document.getElementById('ecpassword').style.color = 'red';
            document.getElementById('ecpassword').innerHTML = " **Passwords do not match";
            c=c+1;          
        }
        else 
        {
            document.getElementById('ecpassword').innerHTML = "";
        }
        
  if(document.getElementById('f').value=='')
       {
           document.getElementById('fn').style.color = 'red';
           document.getElementById('fn').innerHTML = " **Please fill the first name field";
           c=c+1;
       }
       else 
       {
           document.getElementById('fn').innerHTML = "";
       }
       if(document.getElementById('l').value=='')
       {
           document.getElementById('ln').style.color = 'red';
           document.getElementById('ln').innerHTML = " **Please fill the last name field";
           c=c+1;
       }
       else 
       {
           document.getElementById('ln').innerHTML = "";
       }
       if(phone.length >=1)
       {
            if(!phone.match(phoneno))
            {
                document.getElementById('econtact').style.color = 'red';
                document.getElementById('econtact').innerHTML = " **Please Enter valid contact number";
                c=c+1;
            }
            else 
            {
                
                document.getElementById('econtact').innerHTML = "";
            }
       }
       else if(phone.length == 0)
       {
           document.getElementById('econtact').style.color = 'red';
           document.getElementById('econtact').innerHTML = " **Please fill the contact number field";
           c=c+1;
       }
       else 
       {
           document.getElementById('econtact').innerHTML = "";
       }
       if(document.getElementById('d').value=='')
       {
           document.getElementById('age').style.color = 'red';
           document.getElementById('age').innerHTML = " **Please fill the date name field";
           c=c+1;
       }
       else 
       {
           document.getElementById('age').innerHTML = "";
       }
       if (age1 > 65) {
            document.getElementById('age').style.color = 'red';
            document.getElementById('age').innerHTML = " **Age cannot be more than 65 Years.Please enter correct age";
            return false;
        }
        if (age_month < 0 || (age_month == 0 && age_day < 0)) {
                    age1 = parseInt(age1) - 1;
        }
        if ((age1 == 18 && age_month <= 0 && age_day <= 0) || age1 < 18) {
            document.getElementById('age').style.color = 'red';
            document.getElementById('age').innerHTML = " **Age should be more than 18 years.Please enter a valid Date of Birth";
            return false;
        }
    
       
       
       if(c > 0)
           return false;
       alert("Your profile have been successfully updated!");
 }
</script>

    </head>
    
    <body>
        
        <div id="head">
        <jsp:include page="header.jsp"/>
        </div>
        <form method="get">
        <div id="sc-edprofile">
  <h1>Edit Profile</h1>
  <div class="sc-container">
     <%@ page import ="java.sql.*" %> 
    <%
        Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
    Statement st = con.createStatement();
        String id=request.getParameter("did");
        int id1=Integer.parseInt(id);
        String s2="select * from donor where did="+id1+"";
        ResultSet rs2=st.executeQuery(s2);
        if(rs2.next()){
    %>
    
      <input type="email" placeholder="Email Address" name="email" value="<%=rs2.getString("email")%>" id="mail" />
      <span id='message1'></span>
    
      <input type="password" placeholder="Password" name="pass" required="" id="password"/>
      <span id='epassword'></span>
      <input type="password" placeholder="Confirm Password" name="pass1" required="" id="cpassword"/>
      <span id='ecpassword'></span>
      <input type="text" placeholder="First Name" name="fname" id='f' value="<%=rs2.getString("first_name")%>"/>
      <span id='fn'></span>
      <input type="text" placeholder="Last Name" name="sname" id='l' value="<%=rs2.getString("last_name")%>"/>
      <span id='ln'></span>
      <input type="date" placeholder="Date Of Birth" name="dob" id='d' value="<%=rs2.getString("dob")%>" />
      <span id='age'></span>
      <input type="number" placeholder="Contact No." name="cno" id='contactNo' value="<%=rs2.getString("contact_no")%>"/>
      <span id='econtact'></span>
      <%
        }
    %> 
      
    <Input type="hidden" name="did" value="<%=request.getParameter("did")%>"/>
    <input type="submit" value="Submit" name="r" onclick="return check()"/> 
    <%
            if(request.getParameter("r")!=null)
    {
    String emailid = request.getParameter("email");    
    String pwd = request.getParameter("pass");
    String pwd1=request.getParameter("pass1");
    String fn=request.getParameter("fname");
    String sn=request.getParameter("sname");
    String age=request.getParameter("dob");
      
    String cn=request.getParameter("cno");
    String rs="Update donor set first_name='"+fn+"',last_name='"+sn+"',email='"+emailid+"',password='"+pwd+"',contact_no='"+cn+"',dob='"+age+"' where did="+id1+"";
     st.executeUpdate(rs);
     
      response.sendRedirect("button.jsp?did="+request.getParameter("did")+" ");
     

    }

%>
    
   
    
  </div>
</div>
        </form>
        
        
<div id="foot">
        <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
