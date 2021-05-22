<!DOCTYPE html>

<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>FAQ </title>
   
   <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet"  href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/7d45f4d6cd.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<header id="navbar">
     <div class="logo">
         <a href="#"><span class="bold">Blood</span>Drive</a>
     </div>
     <nav class="options">
          <a  href="home.jsp">Home</a>
          <a href="login29.jsp">Donor</a>
          <a href="searchIndex.jsp">Search</a>
          <a href="requester.jsp">Request</a>
          <a href="AdminLogin.jsp">Admin</a>
          <a href="about.jsp">About Us</a>
          <a class="current" href="faq.jsp">FAQ</a>
     </nav>
 </header>
  

<div class="container">
 <div class="accordion">
  <h2>Frequently Asked Questions</h2>
 
  
    <div class="accordion-item">
      <a>Why should I donate blood ?</a>
      <div class="content">
        <p>You have to donate blood yourself to find out. By Blood donation you greatly contribute towards a healthier, happier society by making available safe blood. Any one may need blood at any time may be ourselves or our near  ones. You also benefit in other ways by donating blood as it reduces the chances of ischemic heart diseases </p>
      </div>
    </div>
    <div class="accordion-item">
      <a>Are their any side effects of Blood donations ?</a>
      <div class="content">
        <p>There are no side effects of blood donation. The Blood bank staff ensures that your blood donation is a good experience as far as possible to enable you to become a repeat and a regular blood donor. There are a number of people who have donated   more tha25-100 times in their life time.</p>
      </div>
    </div>
    <div class="accordion-item">
      <a>Can I get any disease like AIDS or Hepatitis or any other disease by Blood donation ?</a>
      <div class="content">
        <p>As only sterile disposables are used to collect  blood and these disposables can be used only one time it eliminates any chances of acquiring any disease from blood donation.</p>
      </div>
    </div>
    <div class="accordion-item">
      <a>What are the eligibility criteria of blood donation ?</a>
      <div class="content">
        <p>he eligible donors  should be  between 18 to 60 years of age, having a healthy pattern of lifestyle  The body weight should be above 45 kgs.  The haemoglobin should be above 12.5 g%.</p>
      </div>
    </div>
    <div class="accordion-item">
      <a>How often can I donate Blood ?</a>
      <div class="content">
        <p>After every three ?four months you can donate blood.</p>
      </div>
    </div>
      <div class="accordian-item">
          <a>What should I eat before blood-donation ?</a>
          <div class="content">
              <p>Anything that you normally eat at home., Eat a  light snacks and a cold drink  before blood donation  is sufficient.</p>
          </div>
      </div>
      <div class="accordian-item">
          <a>How much  time does it take to donate blood ?</a>
          <div class="content">
              <p>You will be asked to fill a donor form. Your medical history will be taken by a medical personnel and  a small drop of blood to check blood group as well as  Hb for anemia. After  simple medical screening process and being found medically fit to donate, you will be sent to blood collection  room. The actual blood collection from the donor takes about 7-10 minutes followed by a little rest and refreshments.</p>
          </div>
      </div>
      <div class="accordian-item">
          <a>What happens to blood I donate ?</a>
          <div class="content">
              <p>Your blood in the blood bank is processed and within 6 hours of Blood collection It  is separated into components viz. Red Cells, White Cells, Plasma & Platelets. These Blood components are made available for the patients. By making blood components, all the useful parts of blood can be used and from one unit of blood four patients can be benefited.</p>
      </div>
  </div>
  
</div>
</div>
 


<script src='https://code.jquery.com/jquery-3.2.1.min.js'></script>
<script type="text/javascript">
    items = document.querySelectorAll(".accordion a");
    function toggleAccordion()
    {
        this.classList.toggle('active');
        this.nextElementSibling.classList.toggle('active');
    }
    items.forEach(item => item.addEventListener('click', toggleAccordion));
</script>
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
</body>
</html>
