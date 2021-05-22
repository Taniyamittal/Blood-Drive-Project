<%-- 
    Document   : AdminHeader
    Created on : 7 Mar, 2021, 5:16:52 PM
    Author     : panki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <style>
    *{
      margin:0;
      padding: 0;
    }
    body{
      font-family: 'Open Sans',sans-serif;
      font-weight: 400;
      font-size: 16px;
    }
    a{
      text-decoration: none;
    }
    header{
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 30px 50px;
      background-color: #c00606;
      height: 50px;
    }
    .bold {
    font-weight:900
  }
    .heading{
      cursor: pointer;
      font-size: 25px;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
     
      font-weight: bolder;
      color: white;
      letter-spacing:5px;
    }
    .nav-area{
      list-style: none;
    }
    .nav-area li{
      display: inline-block;
      padding: 0 15px;
      text-transform: uppercase;
    }
    .nav-area li a{
      transition: .3s;
      color: #fff;
      font-family: sans-serif;
      font-weight: bold;
      font-size: 16px;
    }
    .nav-area li a:hover{
      color:black;
    }
    .btn-area{
      cursor: pointer;
      color: #fff;
      font-size: 20px;
      padding: 10px 30px;
      border-radius: 5px;
      background: white;
    }
    .btn a{
      color: #c00606;
      transition: .3s;
      font-family: sans-serif;
      font-weight: bold;
    }
    .btn a:hover{
      color:black;
    }
    .bold {
    font-weight:900
  }

    </style>
  </head>
  <body>
    <header>
        
        <div class="heading"><span class="bold">Blood</span> DRIVE</div>
      <nav>
        <ul class="nav-area">
          
          <li><a href="AdminDonor.jsp?bid=<% out.println(request.getParameter("bid")); %>">Donors</a></li>
          <li><a href="AdminRequestPending.jsp?bid=<% out.println(request.getParameter("bid")); %>">Request Pending</a></li>
          <li><a href="AdminRequestAccepted.jsp?bid=<% out.println(request.getParameter("bid")); %>">Request Accepted</a></li>
          <li><a href="AdminStock.jsp?bid=<% out.println(request.getParameter("bid")); %>">Stocks</a></li>
        </ul>
      </nav>
      <div class="btn">
      <a  class="btn-area" href="AdminLogout.jsp" >Logout</a>  </div>
    </header>
    
  </body>
</html>
<%
  //  int uname=Integer.parseInt(request.getParameter("id"));
   // out.println(uname);
       
   %>

