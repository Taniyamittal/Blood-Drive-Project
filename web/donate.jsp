<%-- 
    Document   : donate
    Created on : Mar 19, 2021, 4:23:20 PM
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
        <script type="text/javascript">
  function showAlert() {
      
    alert ("Your request have been successfully registered with us!");
    
  }
   function showAlert1()
   {
       
       alert("Your request have been denied");
       
   }

  </script>
  <style>
    
      
      .ted{
          position: relative;
          width: 100%;
          right:0;
          padding-left: 0;
      }
.center {
  margin: 0;
  position: absolute;
  top: 60%;
  left: 40%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  
}
div#pr input[type="submit"]
{
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
   text-transform: uppercase;
  outline: 0;
  background: #c00606;
  //width: 100%;
  border: 0;
 padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
  bottom: 0;
  border-radius: 4px;
  margin-top:210px;
}
div#pr input[type="submit"]:hover{
    opacity: 0.7;
}
div#sc input[type="submit"]{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #c00606;
    font-size: 14px;
  color: white;
  padding: 15px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin: 70px 750px;
  outline: 0;
  width:10%;
  bottom: 0;
}
div#sc input[type="submit"]:hover{
    opacity: 0.7;
}
body{
    background: linear-gradient(to top, #6eb9fa 0%, #f7dada 100%);
  //font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    height: 100%;
  background-repeat: no-repeat; 
  background-attachment: fixed;
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
}
html{
    overflow: hidden;
}

</style>
    </head>
    <body>
        

        <form method="get" class="ted">
                                            <h1 style="text-align:center;padding-right: 0;">Terms and Conditions</h1>
						<div style="text-align:left;padding-right: 0;">
                                                    <ul>
							
							<li>You may donate either whole blood or a specific blood component such as blood platelets. Each type of donation requires a certain waiting period before you can give again. After a whole blood donation, a person must wait at least 56 days before donating again.
                                                        </li>
                                                        <li><b>The minimum interval between whole blood donations is 12 weeks for men and 16 weeks for women. Platelet and plasma donors are able to donate more frequently.</b>
                                                        </li>
                                                        <li>
                                                            Exclusion of at-risk donors to maintain safety:-
                                                            <p>Based on the history of exposure of blood donor to the Coronavirus (SARS-CoV-2), following
                                                                are the deferral criteria that should be applied while selecting the donor for blood donation.
                                                            </p>
                                                            <ul>
                                                                <li>
                                                                    <b>Travel History:-</b>Individuals should be deferred from donating blood for 28days after the date
                                                                    of departure from a country with COVID-19 transmission in the community and areas as notified by Ministry of 
                                                                    Health and Family Welfare to time.
                                                                    
                                                                </li>
                                                                <li>
                                                                    <b>Contact History:-</b>Individuals should be deferred from donating blood for 28days with the last possible 
                                                                    close contact exposure to a person who is confirmed/suspected case of COVID-19 including those under quarantine.
                                                                
                                                                </li>
                                                                <li>
                                                                    <b>Confirmed Case:-</b>Individuals should be deferred from donating blood for 28days till there is complete
                                                                    recovery from the disease including radiological and virological clearance
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
						</div>
                                            <input type="hidden" name="did" value="<%=request.getParameter("did")%>"/>
        
         
         <%@ page import ="java.sql.*" %>
         <%@ page import="java.util.Date"%>
         <%@ page import="java.text.*"%>
        <%
    char s;
    int qty,bid;
    String q,c_d;
    Date date=new Date();
    SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
    //out.println(ft.format(date));
    String d=ft.format(date);
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
    Statement st = con.createStatement();
    ResultSet rs;
    String id=request.getParameter("did");
    int id2=Integer.parseInt(id);
    //out.println(id2);
    ResultSet rs1;
    rs = st.executeQuery("select * from donor where did="+id2+" ");
    if(rs.next())
    {
    s=rs.getString("status").charAt(0);
    //out.println(s);
    c_d=rs.getString("blood_id");
    bid=Integer.parseInt(c_d);
    if (s=='t') {
        rs1=st.executeQuery("select * from blood where blood_id="+bid+"");
        if(rs1.next()){
        /*q=rs1.getString(5);
        qty=Integer.parseInt(q);
        out.println(qty);*/
        String rs3="update blood set blood_quantity="+0+",last_donated="+null+" where blood_id="+bid+"";
        st.executeUpdate(rs3);
        String rs4="update donor set status='"+false+"',register_date='"+d+"' where did="+id2+"";
        st.executeUpdate(rs4);%>
        <div id="pr">
  <div class="center">
        <input type="submit" value="Donate Blood Again" name="r" onclick="showAlert()"/>
        </div>
        </div>
        <%

        }
    } else {
       %>
   <div id="pr">    
  <div class="center">
        <input type="submit" value="Donate Blood Again" name="r" onclick="showAlert1()"/>
        </div>
   </div>
        <%

    }
}
%>
<div id="sc">
  
    <input type="submit" name="back" value="Back" />
    <%

    
    if(request.getParameter("back")!=null)
    {
        response.sendRedirect("button.jsp?did="+id2+" ");
    }
%>
</div>
</form>
    </body>
</html>
