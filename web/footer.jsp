

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
       #main-footer {
    text-align: center;
    padding: 1rem;
    background: #222;
    color: #f4f4f4;
    width: 100%;
}

#main-footer h3 {
  font-size: 1.6rem;
  margin: 0 90px 20px 90px;
  border-bottom: #555 dotted 1px;
}

#main-footer .footer-content {
  display: flex;
  justify-content: space-around;
  padding: 15px 180px;
  text-align:start;
}


#main-footer .footer {
  margin: 0 80px;
}

#main-footer .footer-content .footer p{
  margin-bottom: 10px;
}

#main-footer .footer-content  .email .icon {
  padding: 4px;
  background:#c72727;
  font-weight: 700;
  width: 218px;
} 

#main-footer .footer-content  .phone .icon {
  padding: 4px;
  background:#f4f4f4;
  color: #c72727;
  font-weight: 900;
} 

#main-footer .footer-content .icon i {
  margin-right: 10px;
}

#main-footer .socials i{
  color: #f4f4f4;
  margin-bottom: 10px;
  font-size: 1.5rem;
  height: 2rem;
  width: 70px;
  border-bottom: #555 dotted 1px;
  text-align: center;
}

#main-footer .socials i:hover {
  color:#f44336;
}

#main-footer .footer-bottom {
  display: inline-block;
  background: #333;
  padding: 10px 400px;
}
        </style>
    </head>
    <body>
        <script src="https://kit.fontawesome.com/7d45f4d6cd.js" crossorigin="anonymous"></script>
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
