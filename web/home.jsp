<%-- 
    Document   : home
    Created on : 21 Mar, 2021, 3:58:03 PM
    Author     : panki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>BloodDrive Project</title>
    <link rel="stylesheet" href="home.css">
    <script src="https://kit.fontawesome.com/7d45f4d6cd.js" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="box-area">
      <header id="navbar">
        <div class="logo">
          <a href="#"><span class="bold">Blood</span> DRIVE</a>
        </div>
        <nav class="options">
          <a class="current" href="home.jsp">Home</a>
          <a href="login29.jsp">Donor</a>
          <a href="searchIndex.jsp">Search</a>
          <a href="requester.jsp">Request</a>
          <a href="AdminLogin.jsp">Admin</a>
          <a href="about.jsp">About Us</a>
          <a href="faq.jsp">FAQ</a>
        </nav>
      </header>
      <div class="banner-area">
      </div>
      <div class="content">
        <h2>Donate Blood <i class="fas fa-tint"></i>,Save Life</h2>
        <a href="about.jsp" class="btn">Know More</a>
      </div>
        <div class="content-area">
          <div class="container">
            <div class="box box-1">
              <img src="Images/doctor.jpg" alt="Doctor" class="image">
              <div class="overlay">
                <h3>Why should one become a donor?</h3><br />
                <p>
                  Approximately 1000 donors are needed monthly to support the
                  needs of our patients.About 400 donors per month must be from
                  specialized processes, such as donating platelets to meet the
                  requests of oncology patients.
                </p>
              </div>
            </div>
            <div class="box box-2">
              <div class="overlay">
                <h3>When can someone donate blood?</h3><br />
                <p>
                  Have a Healthy lifestyle.
                  Should not have any infection.
                  Age between 18 and 64 years.
                  No tattoos or piercings for less than 1 year. Must not donate blood if you do not meet the minimum haemoglobin level for blood donation.
                </p>
              </div>
              <img src="Images/donate.jpg" alt="Donate blood" class="image">
            </div>
            <div class="box box-3">
              <img src="Images/Heart-transplant_Getty-Images.jpg" alt="heart" class="image">
              <div class="overlay">
                <h3>How often can one donate blood?</h3><br />
                <p>
                  Men between 18 & 30 years old, every 4 months & older than 30, every 3 months. Women between 18 & 30 years old, every 6 months & older than 30, 
                  every 4 months. Platelet apheresis donors may give every 7 days up to 24 times per year.
                </p>
              </div>
            </div>
          </div>

          <div class="content2">
            <div class="cards">
              <div class="card-1 card">
                <img src="Images/unnamed.png">
                <div class="middle">
                  <a href="login29.jsp" class="btn">Be A Donor</a>    
                </div> 
              </div>
              <div class="card-2 card">
                <img src="Images/know.gif">
                <div class="middle">
                  <a href="requester.jsp" class="btn">Request For Blood</a>
                </div>
              </div>
              <div class="card-3 card">
                <img src="Images/post-img.jpg">
                <div class="middle">
                  <a href="about.jsp" class="btn">Know More</a>
                </div>
              </div>
            </div>
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
        </div>


  </body>
</html>




