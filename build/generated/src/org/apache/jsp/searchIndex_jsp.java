package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class searchIndex_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Search</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"search.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"navigation.css\" />\n");
      out.write("        <script src=\"https://kit.fontawesome.com/7d45f4d6cd.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <header id=\"navbar\">\n");
      out.write("        <div class=\"logo\">\n");
      out.write("          <a href=\"#\"><span class=\"bold\">Blood</span> DRIVE</a>\n");
      out.write("        </div>\n");
      out.write("        <nav class=\"options\">\n");
      out.write("          <a href=\"home.jsp\">Home</a>\n");
      out.write("          <a href=\"register.jsp\">Donor</a>\n");
      out.write("          <a class=\"current\" href=\"searchIndex.jsp\">Search</a>\n");
      out.write("          <a href=\"requester.jsp\">Request</a>\n");
      out.write("          <a href=\"#\">Admin</a>\n");
      out.write("          <a href=\"#\">About Us</a>\n");
      out.write("          <a href=\"#\">FAQ</a>\n");
      out.write("        </nav>\n");
      out.write("       </header>\n");
      out.write("       <div id=\"page-container\"> \n");
      out.write("       <div class=\"container\">\n");
      out.write("        <h1 align=\"center\">Search blood banks near you</h1>\n");
      out.write("        <form action=\"searchIndex.jsp\" method=\"POST\">\n");
      out.write("        <div class=\"options\">\n");
      out.write("        <div class=\"info\">\n");
      out.write("            <label for=\"state\">Search by state name: </label>\n");
      out.write("            <!--<select name=\"state\" id=\"state\" onchange=\"this.form.submit();\">-->\n");
      out.write("            <select name=\"state\" id=\"state\">\n");
      out.write("            <option value=\"0\">Select state</option>\n");
      out.write("                ");

                    try {
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
                        Statement st = con.createStatement();
                        String query = "select distinct(states) from location";
                        //Getting location table data
                        ResultSet rs = st.executeQuery(query);
                        //Getting states names
                        while(rs.next()) {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString("states"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("states"));
      out.write("</option>\n");
      out.write("                            ");

                        }
                    } 
                    catch (Exception e) {
                        e.printStackTrace();
                    }
                
      out.write("\n");
      out.write("            </select>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"info\">\n");
      out.write("            <label for=\"bgroup\">Search by blood group: </label>\n");
      out.write("            <select name=\"bgroup\" id=\"state\">\n");
      out.write("            <option value=\"0\">Select blood group</option>\n");
      out.write("                <option value=\"A+\">A+</option>\n");
      out.write("                <option value=\"A-\">A-</option>\n");
      out.write("                <option value=\"B+\">B+</option>\n");
      out.write("                <option value=\"B-\">B-</option>\n");
      out.write("                <option value=\"AB+\">AB+</option>\n");
      out.write("                <option value=\"AB-\">AB-</option>\n");
      out.write("                <option value=\"O+\">O+</option>\n");
      out.write("                <option value=\"O-\">O-</option>\n");
      out.write("            </select>\n");
      out.write("        </div>\n");
      out.write("        </div>    \n");
      out.write("        <div class=\"info btn\">\n");
      out.write("             <button type=\"submit\" value=\"submit\" onchange=\"this.form.submit();\">Submit</button>   \n");
      out.write("        </div>\n");
      out.write("        </form>\n");
      out.write("       </div>    \n");
      out.write("\n");
      out.write("        <div id=\"items\">\n");
      out.write("            <ul>\n");
      out.write("\n");
      out.write("                ");

                try 
                {
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive", "Tanya", "12345");
                        Statement st = con.createStatement();
//                        String query = "select * from location where states = 'UTTAR PRADESH' ";
//                        String query = "select * from location where states = '"+request.getParameter("state")+"' ";
                          String query = "select * from bloodbank inner join location on bloodbank.add_id = location.add_id inner join stock on bloodbank.bloodbank_id = stock.bloodbank_id where location.states = '"+request.getParameter("state")+"' and stock.blood_group = '"+request.getParameter("bgroup")+"' ";

//                        Getting location table data
                        ResultSet rs = st.executeQuery(query);
                        while(rs.next()) {
                           
      out.write("\n");
      out.write("                           <li>\n");
      out.write("                            <table id=\"data\">\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Name</th>\n");
      out.write("                                <th>Email</th>\n");
      out.write("                                <th>Contact</th>\n");
      out.write("                                <th>City</th>\n");
      out.write("                                <th>Blood Quantity</th>\n");
      out.write("                           </tr> \n");
      out.write("                           <tr>\n");
      out.write("                           <td>");
      out.print(rs.getString("bname"));
      out.write("</td>\n");
      out.write("                           <td>");
      out.print(rs.getString("email"));
      out.write("</td>\n");
      out.write("                           <td>");
      out.print(rs.getString("contact"));
      out.write("</td>\n");
      out.write("                           <td>");
      out.print(rs.getString("city"));
      out.write("</td>\n");
      out.write("                           <td>");
      out.print(rs.getString("blood_quantity"));
      out.write("</td>\n");
      out.write("                           </tr>\n");
      out.write("                            </table>\n");
      out.write("                           </li>\n");
      out.write("                           ");

                        }
                }
                catch (Exception ex)
                {
                    ex.printStackTrace();
                }
               
      out.write("\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <footer id=\"main-footer\">\n");
      out.write("            <div class=\"footer-content\">\n");
      out.write("              <h3>BloodDrive</h3>\n");
      out.write("              <ul class=\"socials\">\n");
      out.write("                <li><a href=\"http://facebook.com\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                  <li><a href=\"http://twitter.com\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                    <li><a href=\"http://youtube.com\" target=\"_blank\"><i class=\"fa fa-youtube\"></i></a></li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-bottom\">\n");
      out.write("              <p>\n");
      out.write("                copyright &copy;2020 bloodDrive\n");
      out.write("              </p>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("       </div>     \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
