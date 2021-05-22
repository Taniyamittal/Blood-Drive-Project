package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class AdminLoginAction_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <style>\n");
      out.write("            @import url(https://fonts.googleapis.com/css?family=Roboto:300);\n");
      out.write("body {\n");
      out.write("  background-image: linear-gradient(to bottom, #8abbda, #9db5dd, #b3aed9, #c8a7cd, #d7a1bc, #de97ad, #e38e9b, #e58686, #e87270, #e95d5a, #e74642, #e42828);\n");
      out.write("  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("    height: 100%;\n");
      out.write("  background-repeat: no-repeat; \n");
      out.write("  background-attachment: fixed;\n");
      out.write("  overflow-x: hidden;\n");
      out.write("}\n");
      out.write(".login-page {\n");
      out.write("  width: 360px;\n");
      out.write("  padding: 8% 0 0;\n");
      out.write("  margin: auto;\n");
      out.write("}\n");
      out.write(".form {\n");
      out.write("  position: relative;\n");
      out.write("  z-index: 1;\n");
      out.write("  background: #FFFFFF;\n");
      out.write("  max-width: 360px;\n");
      out.write("  margin: 0 auto 100px;\n");
      out.write("  padding: 45px;\n");
      out.write("  text-align: center;\n");
      out.write("  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);\n");
      out.write("}\n");
      out.write(".form input {\n");
      out.write("  font-family: \"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("  outline: 0;\n");
      out.write("  background: #f2f2f2;\n");
      out.write("  width: 100%;\n");
      out.write("  border: 0;\n");
      out.write("  margin: 0 0 15px;\n");
      out.write("  padding: 15px;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  font-size: 14px;\n");
      out.write("}\n");
      out.write(".form button {\n");
      out.write("  font-family: \"Segoe UI\", Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("  text-transform: uppercase;\n");
      out.write("  outline: 0;\n");
      out.write("  background: #c00606;\n");
      out.write("  width: 100%;\n");
      out.write("  border: 0;\n");
      out.write("  padding: 15px;\n");
      out.write("  color: #FFFFFF;\n");
      out.write("  font-size: 14px;\n");
      out.write("  -webkit-transition: all 0.3 ease;\n");
      out.write("  transition: all 0.3 ease;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write(".form button:hover,.form button:active,.form button:focus {\n");
      out.write("  opacity: 0.8;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form .message a {\n");
      out.write("  color: #c00606;\n");
      out.write("  text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#sc-edprofile {\n");
      out.write("  \n");
      out.write("  width: 360px;\n");
      out.write("}\n");
      out.write("#sc-edprofile h1 {\n");
      out.write("  background: #c00606;\n");
      out.write("  padding: 6% 4%;\n");
      out.write("  font-size: 140%;\n");
      out.write("  font-weight: 300;\n");
      out.write("  text-align: center;\n");
      out.write("  color:  #FFFFFF;\n");
      out.write("}\n");
      out.write("\n");
      out.write("*{\n");
      out.write("    padding: 0;\n");
      out.write("    margin: 0;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"head1\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "loginhead.jsp", out, false);
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"login-page\">\n");
      out.write("            <div id=\"sc-edprofile\">\n");
      out.write("  <h1>Admin login</h1>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"form\">\n");
      out.write("    \n");
      out.write("      <form class=\"login-form\" method=\"post\" >\n");
      out.write("        <input type=\"text\" placeholder=\"Username\" required=\"\" name=\"usename\"/>\n");
      out.write("      <input type=\"password\" placeholder=\"Password\" required=\"\" name=\"password\"/>\n");
      out.write("      <button name=\"submit\" >Login</button>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write(" </div>\n");
      out.write("        \n");
      out.write("        <div id=\"foot\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");

    if(request.getParameter("submit")!=null)
    {
        try{
         
        String uname,pwd;
        uname=request.getParameter("username");
        pwd=request.getParameter("password");
        out.println(uname);
        out.println(pwd);
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/BloodDrive");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery("select bloodbank_id from admin where username='"+uname+"'and password='"+pwd+"' ");
        if(rs.next())
        {
            response.sendRedirect("AdminDonor.jsp?bid="+rs.getInt(1)+" ");
        }
        else
           response.sendRedirect("home.jsp");
        }catch(Exception ex){ex.printStackTrace();}
    }
    
      out.write('\n');
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
