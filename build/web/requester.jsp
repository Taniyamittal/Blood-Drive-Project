<%-- 
    Document   : requester
    Created on : 21 Mar, 2021, 4:11:27 PM
    Author     : panki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request</title>
    <script src="https://kit.fontawesome.com/7d45f4d6cd.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="requester.css">
    <link rel="stylesheet" href="navigation.css">
    <link rel="stylesheet" href="footer.css">
</head>
<body>
    <header id="navbar">
        <div class="logo">
          <a href="#"><span class="bold">Blood</span> DRIVE</a>
        </div>
        <nav class="options">
          <a href="home.jsp">Home</a>
          <a href="login29.jsp">Donor</a>
          <a href="searchIndex.jsp">Search</a>
          <a class="current" href="requester.jsp">Request</a>
          <a href="AdminLogin.jsp">Admin</a>
          <a href="about.jsp">About Us</a>
          <a href="faq.jsp">FAQ</a>
        </nav>
    </header>
    <div id="regForm">
    <div class="register">
       <form id="form" class="form" action="requesterDB.jsp" onsubmit="return validate()">
        <h2>Request for blood <i class="fas fa-tint"></i></h2>
        <div class="info">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" placeholder="example@gmail.com">
            <span id="eemail" class="error"></span>
        </div>
        <div class="info">
            <label for="fname">First Name</label>
            <input type="text" name="fname" id="fname">
            <span id="efname" class="error"></span>
        </div>
        <div class="info">
            <label for="lname">Last Name</label>
            <input type="text" name="lname" id="lname">
            <span id="elname" class="error"></span>
        </div>
        <div class="info">
            <label for="bgroup">Blood Group</label>
            <select name="bgroup" id="bgroup">
                <option value="">None</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
            </select>
            <span id="ebgroup" class="error"></span>
        </div>
        <div class="info">
            <label for="quantity">Quantity</label>
            <input type="number" placeholder="Quantity of blood" name="quantity" id="quantity">
            <span id="equantity" class="error"></span>
        </div>
        <div class="info">
            <label for="state">State</label>
            <select name="state" id="state">
            <option value="">None</option>
                <%
                    try {
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
                        Statement st = con.createStatement();
                        String query = "select distinct(states) from location";
                        //Getting location table data
                        ResultSet rs = st.executeQuery(query);
                        //Getting states names
                        while(rs.next()) {
                            %>
                            <option><%=rs.getString("states")%></option>
                            <%
                        }
                    } 
                    catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </select>
            <span id="estate" class="error"></span>
        </div>
        <div class="info">
            <label for="city">City</label>
            <select name="city" id="city">
            <option value="">None</option>
                <%
//                 String s = request.getParameter("states"); 
                 try {
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
                        Statement st = con.createStatement();
//                        String query = "select * from location where states='"+s+"' ";
                        //Getting location table data
                        String query = "select * from location";
                        ResultSet rs = st.executeQuery(query);
                        //Getting states names
                        while(rs.next()) {
                            %>
                            <option><%=rs.getString("city")%></option>
                            <%
                        }
                    } 
                    catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </select>
            <span id="ecity" class="error"></span>
        </div>
        <button type="submit">Submit</button>
       </form>
    </div>
       <footer id="main-footer">
            <h3>BloodDrive</h3>
            <div class="footer-content">
              <ul class="socials footer">
                <li><a href="http://facebook.com" target="_blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="http://twitter.com" target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="http://youtube.com" target="_blank"><i class="fa fa-youtube"></i></a></li>
              </ul>
              <div class="email footer">
                <p>Please email us regarding any questions, comments or concerns you may have.</p>
                <p class="icon"><i class="fas fa-envelope"></i>blooddrive@gmail.com</p>
              </div>
              <div class="phone footer">
                <p>Please call us regarding any questions, comments or concerns you may have.</p>
                <p class="icon"><i class="fa fa-phone"></i>+91 1234765001</p>
              </div>
            </div>
            <div class="footer-bottom">
              <p>
                copyright &copy;2020 bloodDrive
              </p>
            </div>
          </footer>
    </div>
        <script type="text/javascript">

    function validate() {
   
       var email = document.getElementById('email').value;
       var fname = document.getElementById('fname').value;
       var lname = document.getElementById('lname').value;
       var bgroup = document.getElementById('bgroup').value;
       var quantity = document.getElementById('quantity').value;
       var state = document.getElementById('state').value;
       var city = document.getElementById('city').value;
       
       var re = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
      
       var c = 0;
        //Email validation
        if(email.length >=1)
        {
            if(!re.test(email.trim())) {
                 document.getElementById('eemail').innerHTML = " **Email is not valid";
                 c = c + 1;
            }
            else 
            {
                document.getElementById('eemail').innerHTML = "";
            }

        }
        else 
        {
            document.getElementById('eemail').innerHTML = " **Please fill the email field";
            c = c + 1;
        }
       
       //First Name validation
       if(fname=="")
       {
           document.getElementById('efname').innerHTML = " **Please fill the first name field";
           c = c + 1;
       }
       else 
       {
           document.getElementById('efname').innerHTML = "";
       }
       
       //Last Name validation
       if(lname=="")
       {
           document.getElementById('elname').innerHTML = " **Please fill the last name field";
           c = c + 1;
       }
       else 
       {
           document.getElementById('elname').innerHTML = "";
       }
       
       //Blood group validation
       if(bgroup == "")
       {
           document.getElementById('ebgroup').innerHTML = " **Please choose blood group from the list";
           c = c + 1;
       }
       else 
       {
           document.getElementById('ebgroup').innerHTML = "";
       }
       
       //Quantity validation
       if(quantity == "")
       {
           document.getElementById('equantity').innerHTML = " **Please fill the quantity field";
           c = c + 1;
       }
       else 
       {
           document.getElementById('equantity').innerHTML = "";
       }
        
       //State validation
       if(state == "")
       {
           document.getElementById('estate').innerHTML = " **Please choose your state from the list";
           c = c + 1;
       }
       else 
       {
           document.getElementById('estate').innerHTML = "";
       }
       
       //City validation
       if(city == "")
       {
           document.getElementById('ecity').innerHTML = " **Please choose your city from the list";
           c = c + 1;
       }
       else 
       {
           document.getElementById('ecity').innerHTML = "";
       }
       
       if(c > 0)
           return false;
       alert('Your request has been successfully submitted.');
    }
    </script>
</body>
</html>
