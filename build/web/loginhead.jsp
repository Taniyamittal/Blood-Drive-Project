

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            a {
    text-decoration: none;
  }
  li {
    list-style: none;
  }

  .bold {
    font-weight:900
  }

#navbar {
    display: flex;
    justify-content: space-between;
    background-color:#c00606;
    width: 100%;
    z-index: 12;
    padding: 1rem;
    position: fixed;
    top: 0;
    left: 0;
    box-shadow: 0 1px 20px rgba(0,0,0,0.7);  
  }
  #navbar a {
    color: #f4f4f4;
    font-size: 1.2rem;
    font-weight: 500;
  }

  #navbar .logo a {
    font-size: 2rem;
    align-self: center;
    letter-spacing: 2px;
  }

  #navbar .options {
    display: flex;
    align-items: center;
  }

  #navbar .options a {
    font-size: 1.2rem;
    padding: 12px 20px;
    margin: 0 5px;
  }

  #navbar .options a.current {
    background: #9c0606;
    border-radius: 5px;
    color: #ccc;
  }

  #navbar .options a:hover {opacity: 0.8;
  }
        </style>
    </head>
    <body>
        <header id="navbar">
        <div class="logo">
          <a href="#"><span class="bold">Blood</span> DRIVE</a>
        </div>
        <nav class="options">
          <a  href="home.jsp">Home</a>
          <a class="current" href="login29.jsp">Donor</a>
          <a href="searchIndex.jsp">Search</a>
          <a href="requester.jsp">Request</a>
          <a href="AdminLogin.jsp">Admin</a>
          <a href="about.jsp">About Us</a>
          <a href="faq.jsp">FAQ</a>
        </nav>
      </header>
    </body>
</html>

