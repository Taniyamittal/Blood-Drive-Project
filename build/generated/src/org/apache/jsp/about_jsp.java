package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("     <meta charset=\"UTF-8\">\n");
      out.write("    <title>About Us</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style1.css\">\n");
      out.write("     <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-\n");
      out.write("awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("     \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <header id=\"navbar\">\n");
      out.write("     <div class=\"logo\">\n");
      out.write("         <a href=\"#\"><span class=\"bold\">Blood</span>Drive</a>\n");
      out.write("     </div>\n");
      out.write("     <nav class=\"options\">\n");
      out.write("         <a class=\"current\" href=\"index.html\">Home</a>\n");
      out.write("         <a href=\"#\">Donor</a>\n");
      out.write("         <a href=\"#\">Search</a>\n");
      out.write("         <a href=\"#\">Request</a>\n");
      out.write("         <a href=\"#\">Admin</a>\n");
      out.write("         <a href=\"#\">About Us</a>\n");
      out.write("         <a href=\"#\">FAQ</a>\n");
      out.write("      </nav>\n");
      out.write("    </header>\n");
      out.write("    <div class=\"container\">\n");
      out.write("         <div class=\"main\">\n");
      out.write("            <h1> About Us</h1>\n");
      out.write("        \n");
      out.write("           \n");
      out.write("                            \n");
      out.write("                                <p>The Blood Drive is a clever way to support a worthy \n");
      out.write("organization during Fright Fest.\n");
      out.write("                                    As Blood Drive is an activity in which persons are \n");
      out.write("requested to donate blood, either to maintain a general supply \n");
      out.write("                                     or in response to a specific shortage or \n");
      out.write("emergency.As the scope of our website is to create an\n");
      out.write("                                 e-Information about the donor and organization that are \n");
      out.write("related to donating the\n");
      out.write("                                 blood.It also helps users to register themselves as \n");
      out.write("donors,search for blood groups in their locality and can\n");
      out.write("                                 submit blood request.As our blood banks are spreaded \n");
      out.write("over all the cities present in that state.\n");
      out.write("                                  This website will also be very useful for those who \n");
      out.write("want to search for blood group.\n");
      out.write("                                 \n");
      out.write("                                 So that any person who is interested in donating blood \n");
      out.write("can\n");
      out.write("                                 register themself. Moreover, if any general consumer \n");
      out.write("wants to make a request for \n");
      out.write("                                  blood online they can take the help of this \n");
      out.write("website.Blood donations are an integral \n");
      out.write("                                  and essential part of our healthcare system. Without \n");
      out.write("blood donations, many of the medical procedures that we \n");
      out.write("                                  take for granted could not take place.\n");
      out.write("                                 As blood is essential for surgeries, cancer \n");
      out.write("treatment,chronic illnesses, and traumatic \n");
      out.write("                                  injuries. When a patient receives whole blood this \n");
      out.write("lifesaving care starts with one person \n");
      out.write("                                  making a generous donation. \n");
      out.write("                                </p>\n");
      out.write("            <div class=\"as\">\n");
      out.write("                <h2>Be a Donar</h2>\n");
      out.write("             <p> \n");
      out.write("                In every two seconds someone in India \n");
      out.write("                                  needs blood.If you are above 18 years then only you \n");
      out.write("can go for donating blood.</p> \n");
      out.write("\n");
      out.write("             <button class=\"btn\">Donate Blood</button>\n");
      out.write("            </div>\n");
      out.write("          \n");
      out.write("            <div class=\"as1\">\n");
      out.write("                <h3>Request For Blood </h3>\n");
      out.write("             <p> If you are in need of blood you can make the  request for that \n");
      out.write("blood group.\n");
      out.write("             </p>\n");
      out.write("             <button class=\"btn\">Request For Blood</button>\n");
      out.write("            </div>         \n");
      out.write("                 \n");
      out.write("                        </div>\n");
      out.write("                  \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("    <footer id=\"main-footer\">\n");
      out.write("    <div class=\"footer-content\">\n");
      out.write("    <h3>BloodDrive</h3>\n");
      out.write("    <ul class=\"socials\">\n");
      out.write("        <li><a href=\"http://facebook.com\" target=\"_blank\"><i class=\"fa fa-\n");
      out.write("facebook\"></i></a></li>\n");
      out.write("        <li><a href=\"http://twitter.com\" target=\"_blank\"><i class=\"fa fa-\n");
      out.write("twitter\"></i></a></li>\n");
      out.write("        <li><a href=\"http://youtube.com\" target=\"_blank\"><i class=\"fa fa-\n");
      out.write("youtube\"></i></a></li>\n");
      out.write("    </ul>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"footer-bottom\">\n");
      out.write("    <p>\n");
      out.write("        copyright &copy;2020 bloodDrive\n");
      out.write("    </p>\n");
      out.write("  </div>\n");
      out.write("</footer>\n");
      out.write("           \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
