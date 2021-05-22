<%-- 
    Document   : AdminStock
    Created on : 9 Mar, 2021, 7:51:52 PM
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
                height: 500px;
            }
            .donortable{
                width: 85%;
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
                height: 30px;
            }
            .donortable td{
                
                font-family:"Open Sans",sans-serif;
            }
            .donortable tr:nth-child(odd){
                background-color: #eeeeee;
            }
            .editbtn{
                font-family: "Roboto",sans-serif;
                font-size: 18px;
              
                background: #1e90ff;
                width: 70px;
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
            <center>
            <table class="donortable">
                <tr>
                    <th>ID</th>
                    <th>Blood Group</th>
                    <th>Blood Quantity</th>
                    <th>Edit</th>
                </tr>
                <tr>
      <%
        try{
       
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
        Statement stmt=conn.createStatement();
        int bid=Integer.parseInt(request.getParameter("bid"));
        int i=0;
        ResultSet rs=stmt.executeQuery("select * from stock where bloodbank_id="+bid+" ");
        while(rs.next())
        {
           i=i+1; 
        %>
        <td><%=i %></td>
        <td><%= rs.getString(2)%></td>
        <td><%=rs.getInt(3) %></td>
        <td><a class="editbtn" href="StockEdit.jsp?sid=<%=rs.getInt(1) %>&bid=<%=Integer.parseInt(request.getParameter("bid")) %>">Edit</a></td>
        
         </tr>
                <%
        }
        }catch(Exception e){
            System.out.println(e);
        }
                %>
            </table>
            </center>
        </div>
        <jsp:include page="AdminFooter.html"/>
    </body>
</html>
