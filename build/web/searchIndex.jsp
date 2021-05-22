<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <link rel="stylesheet" href="search.css" />
        <link rel="stylesheet" href="navigation.css" />
        <script src="https://kit.fontawesome.com/7d45f4d6cd.js" crossorigin="anonymous"></script>
    </head>
    <body>
       <header id="navbar">
        <div class="logo">
          <a href="#"><span class="bold">Blood</span> DRIVE</a>
        </div>
        <nav class="options">
          <a href="home.jsp">Home</a>
          <a href="login29.jsp">Donor</a>
          <a class="current" href="searchIndex.jsp">Search</a>
          <a href="requester.jsp">Request</a>
          <a href="AdminLogin.jsp">Admin</a>
          <a href="about.jsp">About Us</a>
          <a href="faq.jsp">FAQ</a>
        </nav>
       </header>
       <div id="page-container"> 
       <div class="container">
        <h1 align="center">Search blood banks near you</h1>
        <form action="searchIndex.jsp" method="POST">
        <div class="options">
        <div class="info">
            <label for="state">Search by state name: </label>
            <!--<select name="state" id="state" onchange="this.form.submit();">-->
            <select name="state" id="state">
            <option value="0">Select state</option>
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
                            <option value="<%=rs.getString("states")%>"><%=rs.getString("states")%></option>
                            <%
                        }
                    } 
                    catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </select>
        </div>
        <div class="info">
            <label for="bgroup">Search by blood group: </label>
            <select name="bgroup" id="state">
            <option value="0">Select blood group</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
            </select>
        </div>
        </div>    
        <div class="info btn">
             <button type="submit" value="submit" onchange="this.form.submit();">Submit</button>   
        </div>
        </form>
       </div>    

        <div id="items">
            <ul>

                <%
                try 
                {
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
                        Statement st = con.createStatement();
//                        String query = "select * from location where states = 'UTTAR PRADESH' ";
//                        String query = "select * from location where states = '"+request.getParameter("state")+"' ";
                          String query = "select * from bloodbank inner join location on bloodbank.add_id = location.add_id inner join stock on bloodbank.bloodbank_id = stock.bloodbank_id where location.states = '"+request.getParameter("state")+"' and stock.blood_group = '"+request.getParameter("bgroup")+"' ";

//                        Getting location table data
                        ResultSet rs = st.executeQuery(query);
                        while(rs.next()) {
                           %>
                           <li>
                            <table id="data">
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Contact</th>
                                <th>City</th>
                                <th>Blood Quantity</th>
                           </tr> 
                           <tr>
                           <td><%=rs.getString("bname")%></td>
                           <td><%=rs.getString("email")%></td>
                           <td><%=rs.getString("contact")%></td>
                           <td><%=rs.getString("city")%></td>
                           <td><%=rs.getString("blood_quantity")%></td>
                           </tr>
                            </table>
                           </li>
                           <%
                        }
                }
                catch (Exception ex)
                {
                    ex.printStackTrace();
                }
               %>
            </ul>
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
    </body>
</html>
