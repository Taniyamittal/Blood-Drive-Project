<%-- 
    Document   : AdminDonor
    Created on : 7 Mar, 2021, 5:56:04 PM
    Author     : panki
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%
   String userId = (String)session.getAttribute("checkid");
   response.setHeader("Cache-Control","no-cache");
   response.setHeader("Cache-Control","no-store");
   response.setHeader("Pragma","no-cache");
   response.setDateHeader ("Expires", 0);
    if(userId == null) {
      response.sendRedirect("AdminLogin.jsp");
   }
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>JSP Page</title>
        <style>
            .content{
                padding: 35px 30px;
                height: 70vh;
            }
            .headdonor{
                font-family: serif;
                font-size: 20px;
                font-weight: bold;
            }
            .btndonor{
                font-family:"Roboto",sans-serif;
                font-size: 16px;
                font-weight: bold;
                background: #c00606;
                color:white;
                width:100px;
                padding:8px;
                text-align: center;
                text-decoration: none;
                border-radius: 5px;
                cursor: pointer;
            }
            .donortable{
                width: 100%;
                text-align: center;
                background:#fafafa;
                border-collapse: collapse;
                border-spacing: 0;
                overflow: hidden;
            }
            .donortable th,td{
                padding:15px 10px;
            }
            .donortable td{
                font-family:"Roboto",sans-serif;
                font-size: 18px;
            }
            .donortable th{
                background: #c00606;
                color:#fafafa;
                font-family:"Roboto",sans-serif;
                height:30px;
            }
            .donortable td{
                 padding:12px 5px;
                font-family:"Open Sans",sans-serif;
            }
            .donortable tr:nth-child(odd){
                background-color: #eeeeee;
            }
            .editbtn{
                font-family: "Roboto",sans-serif;
                font-size: 18px;
              
                background: #1e90ff;
                width: 50px;
                padding:6px;
                text-align: center;
                text-decoration: none;
                color:#fff;
                border-radius: 3px;
                cursor: pointer;
                height: 20px;
                display:inline-block;
            }
            .delbtn{
               font-family: "Roboto",sans-serif;
                font-size: 18px;
               
                background: #1e90ff;
                width: 50px;
                padding:7px;
                text-align: center;
                text-decoration: none;
                color:#fff;
                border-radius: 3px;
                cursor: pointer;
                height: 20px;
                display:inline-block; 
            }
            .editbtn:hover,.delbtn:hover{
                color:black;
            }
            
        </style>
    </head>
    <body>
        <jsp:include page="AdminHeader.jsp"/>
        <div class="content">
          
            <label class="headdonor">Register a Donor</label>&nbsp;&nbsp;
            <a href="AddDonor.jsp?bid=<%=request.getParameter("bid") %>" class="btndonor">Add Donor</a>
            <br><br><br>
            <table class="donortable">
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Date Of Birth</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Contact No</th>
                    <th>Registration Date</th>
                    <th>Status</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <tr>
      <%
        try{
       
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
        Statement stmt=conn.createStatement();
        int bid=Integer.parseInt(request.getParameter("bid"));
        ResultSet rs=stmt.executeQuery("select * from donor where bloodbank_id="+bid+" ");
        int i=0;
        while(rs.next())
        {
            i=i+1;
        %>
        <td><%=i %></td>
        <td><%= rs.getString(2)%></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getDate(5)%></td>
        <td><%= rs.getString(6)%></td>
        <td><%= rs.getString(7)%></td>
        <td><%= rs.getString(10)%></td>
        <td><%=rs.getDate(8) %> </td>
        <td><%=rs.getBoolean(9)%> </td>
        <td><a class="editbtn" href="EditDonor.jsp?did=<%=rs.getInt(1) %>&bid=<%=Integer.parseInt(request.getParameter("bid")) %>">Edit</a></td>
        <td><a class="delbtn" href="DonorDelete.jsp?did=<%=rs.getInt(1) %>&bid=<%=Integer.parseInt(request.getParameter("bid")) %>">Delete</a></td>
        
                </tr>
                <%
        }
        }catch(Exception e){
            System.out.println(e);
        }
                %>
            </table>
        
           
        </div>
         <jsp:include page="AdminFooter.html"/>
    </body>
</html>
