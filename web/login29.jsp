

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            @import url(https://fonts.googleapis.com/css?family=Roboto:300);
body {
  background-image: linear-gradient(to bottom, #8abbda, #9db5dd, #b3aed9, #c8a7cd, #d7a1bc, #de97ad, #e38e9b, #e58686, #e87270, #e95d5a, #e74642, #e42828);
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    height: 100%;
  background-repeat: no-repeat; 
  background-attachment: fixed;
  overflow-x: hidden;
}
.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
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
.form input {
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
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

.form .message a {
  color: #c00606;
  text-decoration: none;
}

#sc-edprofile {
  
  width: 360px;
}
#sc-edprofile h1 {
  background: #c00606;
  padding: 6% 4%;
  font-size: 140%;
  font-weight: 300;
  text-align: center;
  color:  #FFFFFF;
}

*{
    padding: 0;
    margin: 0;
}
        </style>
        </head>
    <body>
        
        <div id="head1">
        <jsp:include page="loginhead.jsp"/>
        </div>
        
        <div class="login-page">
            <div id="sc-edprofile">
  <h1>Donor login</h1>
  </div>
  <div class="form">
    
      <form class="login-form" method="post" action="login12.jsp">
        <input type="email" placeholder="Email" required="" name="email"/>
      <input type="password" placeholder="Password" required="" name="password"/>
      <button>Login</button>
      
      <p class="message">Not registered? <a href="register.jsp">Create an account</a></p>
    </form>
  </div>
 </div>
        
        <div id="foot">
        <jsp:include page="footer.jsp"/>
        </div>
</body>

</html>

