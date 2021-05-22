<%-- 
    Document   : AdminRequestAccepted
    Created on : 9 Mar, 2021, 8:53:24 PM
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
        <style>
             .content{
                padding: 40px 45px;
                height: 300px;
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
                padding:12px 15px;
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
                
                font-family:"Open Sans",sans-serif;
            }
            .donortable tr:nth-child(odd){
                background-color: #eeeeee;
            }
            .editbtn{
                font-family: "Roboto",sans-serif;
                font-size: 15px;
              
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
            <table class="donortable">
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Blood Group</th>
                    <th>Blood Quantity</th>
                    <th>Delete</th>
                </tr>
                <tr>
      <%
        try{
       
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
        Statement stmt=conn.createStatement();
        int bid=Integer.parseInt(request.getParameter("bid"));
        int i=0;
        ResultSet rs=stmt.executeQuery("select * from requester where bloodbank_id="+bid+" and status="+1+" ");
        while(rs.next())
        {
           i=i+1; 
        %>
        <td><%=i %></td>
        <td><%= rs.getString(2)%></td>
        <td><%= rs.getString(3)%></td>
        <td><%= rs.getString(7)%></td>
        <td><%= rs.getString(5)%></td>
        <td><%=rs.getInt(6) %></td>
        <td><a class="delbtn" href="AdminRequestDelete.jsp?req_id=<%=rs.getInt(1) %>&bid=<%=Integer.parseInt(request.getParameter("bid")) %>">Delete</a></td>
        
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

