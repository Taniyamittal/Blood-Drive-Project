<%-- 
    Document   : button
    Created on : Mar 20, 2021, 4:11:40 PM
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
          
* {
  box-sizing: border-box;
}

body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background-image: linear-gradient(to bottom, #8abbda, #9db5dd, #b3aed9, #c8a7cd, #d7a1bc, #de97ad, #e38e9b, #e58686, #e87270, #e95d5a, #e74642, #e42828);
  //font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    height: 100%;
  background-repeat: no-repeat; 
  background-attachment: fixed;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  
}

/* Remove extra left and right margins, due to padding in columns */
.row {//margin: 0 -5px;
     display: flex;
  justify-content: center;
  flex-direction: row;
 // position: absolute;
  padding: 150px 0 90px 0;
  //top: 50%;
  //transform: translateY(-50%);
   // transform: translateX(-50%);
/*   margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);*/

}

 
.row:after {
  content: "";
  display: table;
  clear:  both;
  }

/* Style the counter cards */
.card {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); 
  padding: 16px;
  text-align: center;
  background-color: #f7dada;
  
}
.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #c00606;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.8;
}
*{
    padding: 0;
    margin: 0;
}
/* Responsive columns - one column layout (vertical) on small screens */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: compact;
    margin-bottom: 20px;
    
  }
  
}
        </style>
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
       
        
       <div id="head">
        <jsp:include page="header.jsp"/>
        </div> 
       <div class="row">
           
  <div class="column">
      
      <div class="card">
          <form action="update.jsp">
          <img src="Images/img_avatar.jpg" alt="avatar" style="width:100%">
          
        <Input type="hidden" name="did" value="<%=request.getParameter("did")%>"/>
        <p><button>Update Profile</button></p>
          </form> 
      </div>
  </div>
  <div class="column">
      <div class="card">
          <form action="donate.jsp">
          <img src="Images/do3.jpg" alt="donate again" style="width: 100%">
          <Input type="hidden" name="did" value="<%=request.getParameter("did")%>"/>
          <p><button>Donate Blood Again</button></p>
          </form>
      </div>
  </div>
   <div class="column">
      
      <div class="card">
          <form action="details1.jsp">
          <img src="Images/details4.jpg" alt="avatar" style="width:100%">
          
        <Input type="hidden" name="did" value="<%=request.getParameter("did")%>"/>
        <p><button>Blood Details</button></p>
          </form> 
      </div>
  </div>        
</div>
  <div id="foot">
        <jsp:include page="footer.jsp"/>
        </div>
        
    </body>
</html>
