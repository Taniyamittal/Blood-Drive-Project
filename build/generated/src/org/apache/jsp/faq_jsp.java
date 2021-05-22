package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class faq_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html lang=\"en\" >\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <title>FAQ </title>\n");
      out.write("   \n");
      out.write("   <link rel=\"stylesheet\" href=\"https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css\">\n");
      out.write("<link rel=\"stylesheet\"  href=\"//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css\">\n");
      out.write("   <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<header id=\"navbar\">\n");
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
      out.write("     </nav>\n");
      out.write(" </header>\n");
      out.write("  \n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write(" <div class=\"accordion\">\n");
      out.write("  <h2>Frequently Asked Questions</h2>\n");
      out.write(" \n");
      out.write("  \n");
      out.write("    <div class=\"accordion-item\">\n");
      out.write("      <a>Why should I donate blood ?</a>\n");
      out.write("      <div class=\"content\">\n");
      out.write("        <p>You have to donate blood yourself to find out. By Blood donation you greatly contribute towards a healthier, happier society by making available safe blood. Any one may need blood at any time may be ourselves or our near  ones. You also benefit in other ways by donating blood as it reduces the chances of ischemic heart diseases </p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"accordion-item\">\n");
      out.write("      <a>Are their any side effects of Blood donations ?</a>\n");
      out.write("      <div class=\"content\">\n");
      out.write("        <p>There are no side effects of blood donation. The Blood bank staff ensures that your blood donation is a good experience as far as possible to enable you to become a repeat and a regular blood donor. There are a number of people who have donated   more tha25-100 times in their life time.</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"accordion-item\">\n");
      out.write("      <a>Can I get any disease like AIDS or Hepatitis or any other disease by Blood donation ?</a>\n");
      out.write("      <div class=\"content\">\n");
      out.write("        <p>As only sterile disposables are used to collect  blood and these disposables can be used only one time it eliminates any chances of acquiring any disease from blood donation.</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"accordion-item\">\n");
      out.write("      <a>What are the eligibility criteria of blood donation ?</a>\n");
      out.write("      <div class=\"content\">\n");
      out.write("        <p>he eligible donors  should be  between 18 to 60 years of age, having a healthy pattern of lifestyle  The body weight should be above 45 kgs.  The haemoglobin should be above 12.5 g%.</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"accordion-item\">\n");
      out.write("      <a>How often can I donate Blood ?</a>\n");
      out.write("      <div class=\"content\">\n");
      out.write("        <p>After every three ?four months you can donate blood.</p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("      <div class=\"accordian-item\">\n");
      out.write("          <a>What should I eat before blood-donation ?</a>\n");
      out.write("          <div class=\"content\">\n");
      out.write("              <p>Anything that you normally eat at home., Eat a  light snacks and a cold drink  before blood donation  is sufficient.</p>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"accordian-item\">\n");
      out.write("          <a>How much  time does it take to donate blood ?</a>\n");
      out.write("          <div class=\"content\">\n");
      out.write("              <p>You will be asked to fill a donor form. Your medical history will be taken by a medical personnel and  a small drop of blood to check blood group as well as  Hb for anemia. After  simple medical screening process and being found medically fit to donate, you will be sent to blood collection  room. The actual blood collection from the donor takes about 7-10 minutes followed by a little rest and refreshments.</p>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"accordian-item\">\n");
      out.write("          <a>What happens to blood I donate ?</a>\n");
      out.write("          <div class=\"content\">\n");
      out.write("              <p>Your blood in the blood bank is processed and within 6 hours of Blood collection It  is separated into components viz. Red Cells, White Cells, Plasma & Platelets. These Blood components are made available for the patients. By making blood components, all the useful parts of blood can be used and from one unit of blood four patients can be benefited.</p>\n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("<script src='https://code.jquery.com/jquery-3.2.1.min.js'></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    items = document.querySelectorAll(\".accordion a\");\n");
      out.write("    function toggleAccordion()\n");
      out.write("    {\n");
      out.write("        this.classList.toggle('active');\n");
      out.write("        this.nextElementSibling.classList.toggle('active');\n");
      out.write("    }\n");
      out.write("    items.forEach(item => item.addEventListener('click', toggleAccordion));\n");
      out.write("</script>\n");
      out.write("<footer id=\"main-footer\">\n");
      out.write("    <div class=\"footer-content\">\n");
      out.write("    <h3>BloodDrive</h3>\n");
      out.write("    <ul class=\"socials\">\n");
      out.write("        <li><a href=\"http://facebook.com\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("        <li><a href=\"http://twitter.com\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("        <li><a href=\"http://youtube.com\" target=\"_blank\"><i class=\"fa fa-youtube\"></i></a></li>\n");
      out.write("    </ul>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"footer-bottom\">\n");
      out.write("    <p>\n");
      out.write("        copyright &copy;2020 bloodDrive\n");
      out.write("    </p>\n");
      out.write("  </div>\n");
      out.write("</footer>\n");
      out.write("</body>\n");
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
