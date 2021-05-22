package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>BloodDrive Project</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"home.css\">\n");
      out.write("    <script src=\"https://kit.fontawesome.com/7d45f4d6cd.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <div class=\"box-area\">\n");
      out.write("      <header id=\"navbar\">\n");
      out.write("        <div class=\"logo\">\n");
      out.write("          <a href=\"#\"><span class=\"bold\">Blood</span> DRIVE</a>\n");
      out.write("        </div>\n");
      out.write("        <nav class=\"options\">\n");
      out.write("          <a class=\"current\" href=\"home.jsp\">Home</a>\n");
      out.write("          <a href=\"login29.jsp\">Donor</a>\n");
      out.write("          <a href=\"searchIndex.jsp\">Search</a>\n");
      out.write("          <a href=\"requester.jsp\">Request</a>\n");
      out.write("          <a href=\"AdminLogin.jsp\">Admin</a>\n");
      out.write("          <a href=\"about.jsp\">About Us</a>\n");
      out.write("          <a href=\"faq.jsp\">FAQ</a>\n");
      out.write("        </nav>\n");
      out.write("      </header>\n");
      out.write("      <div class=\"banner-area\">\n");
      out.write("      </div>\n");
      out.write("      <div class=\"content\">\n");
      out.write("        <h2>Donate Blood <i class=\"fas fa-tint\"></i>,Save Life</h2>\n");
      out.write("        <a href=\"about.jsp\" class=\"btn\">Know More</a>\n");
      out.write("      </div>\n");
      out.write("        <div class=\"content-area\">\n");
      out.write("          <div class=\"container\">\n");
      out.write("            <div class=\"box box-1\">\n");
      out.write("              <img src=\"Images/doctor.jpg\" alt=\"Doctor\" class=\"image\">\n");
      out.write("              <div class=\"overlay\">\n");
      out.write("                <h3>Why should one become a donor?</h3><br />\n");
      out.write("                <p>\n");
      out.write("                  Approximately 1000 donors are needed monthly to support the\n");
      out.write("                  needs of our patients.About 400 donors per month must be from\n");
      out.write("                  specialized processes, such as donating platelets to meet the\n");
      out.write("                  requests of oncology patients.\n");
      out.write("                </p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"box box-2\">\n");
      out.write("              <div class=\"overlay\">\n");
      out.write("                <h3>When can someone donate blood?</h3><br />\n");
      out.write("                <p>\n");
      out.write("                  Have a Healthy lifestyle.\n");
      out.write("                  Should not have any infection.\n");
      out.write("                  Age between 18 and 64 years.\n");
      out.write("                  No tattoos or piercings for less than 1 year. Must not donate blood if you do not meet the minimum haemoglobin level for blood donation.\n");
      out.write("                </p>\n");
      out.write("              </div>\n");
      out.write("              <img src=\"Images/donate.jpg\" alt=\"Donate blood\" class=\"image\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"box box-3\">\n");
      out.write("              <img src=\"Images/Heart-transplant_Getty-Images.jpg\" alt=\"heart\" class=\"image\">\n");
      out.write("              <div class=\"overlay\">\n");
      out.write("                <h3>How often can one donate blood?</h3><br />\n");
      out.write("                <p>\n");
      out.write("                  Men between 18 & 30 years old, every 4 months & older than 30, every 3 months. Women between 18 & 30 years old, every 6 months & older than 30, \n");
      out.write("                  every 4 months. Platelet apheresis donors may give every 7 days up to 24 times per year.\n");
      out.write("                </p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"content2\">\n");
      out.write("            <div class=\"cards\">\n");
      out.write("              <div class=\"card-1 card\">\n");
      out.write("                <img src=\"Images/unnamed.png\">\n");
      out.write("                <div class=\"middle\">\n");
      out.write("                  <a href=\"login29.jsp\" class=\"btn\">Be A Donor</a>    \n");
      out.write("                </div> \n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-2 card\">\n");
      out.write("                <img src=\"Images/know.gif\">\n");
      out.write("                <div class=\"middle\">\n");
      out.write("                  <a href=\"requester.jsp\" class=\"btn\">Request For Blood</a>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-3 card\">\n");
      out.write("                <img src=\"Images/post-img.jpg\">\n");
      out.write("                <div class=\"middle\">\n");
      out.write("                  <a href=\"about.jsp\" class=\"btn\">Know More</a>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("         \n");
      out.write("          <footer id=\"main-footer\">\n");
      out.write("            <h3>BloodDrive</h3>\n");
      out.write("            <div class=\"footer-content\">\n");
      out.write("              <ul class=\"socials footer\">\n");
      out.write("                <li><a href=\"http://facebook.com\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                <li><a href=\"http://twitter.com\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                <li><a href=\"http://youtube.com\" target=\"_blank\"><i class=\"fa fa-youtube\"></i></a></li>\n");
      out.write("              </ul>\n");
      out.write("              <div class=\"email footer\">\n");
      out.write("                <p>Please email us regarding any questions, comments or concerns you may have.</p>\n");
      out.write("                <p class=\"icon\"><i class=\"fas fa-envelope\"></i>blooddrive@gmail.com</p>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"phone footer\">\n");
      out.write("                <p>Please call us regarding any questions, comments or concerns you may have.</p>\n");
      out.write("                <p class=\"icon\"><i class=\"fa fa-phone\"></i>+91 1234765001</p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-bottom\">\n");
      out.write("              <p>\n");
      out.write("                copyright &copy;2020 bloodDrive\n");
      out.write("              </p>\n");
      out.write("            </div>\n");
      out.write("          </footer>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  </body>\n");
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
