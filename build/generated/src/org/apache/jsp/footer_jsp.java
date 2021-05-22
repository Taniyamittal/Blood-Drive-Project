package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <style>\n");
      out.write("        #main-footer {\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 1rem;\n");
      out.write("    background: #222;\n");
      out.write("    color: #f4f4f4;\n");
      out.write("    width: 100%;\n");
      out.write("    bottom: 0;\n");
      out.write("    left: 0;\n");
      out.write("    //top: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#main-footer .footer-content h3 {\n");
      out.write("  font-size: 1.6rem;\n");
      out.write("  margin-bottom: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#main-footer .socials i{\n");
      out.write("  color: #f4f4f4;\n");
      out.write("  margin-bottom: 10px;\n");
      out.write("  font-size: 1.5rem;\n");
      out.write("  height: 2rem;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#main-footer .socials i:hover {\n");
      out.write("  font-size: 1.8rem;\n");
      out.write("  color:#f44336;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#main-footer .footer-bottom {\n");
      out.write("  display: inline-block;\n");
      out.write("  background: #333;\n");
      out.write("  padding: 10px 400px;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <footer id=\"main-footer\">\n");
      out.write("            <div class=\"footer-content\">\n");
      out.write("              <h3>BloodDrive</h3>\n");
      out.write("              <ul class=\"socials\">\n");
      out.write("                <li><a href=\"http://facebook.com\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                  <li><a href=\"http://twitter.com\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                    <li><a href=\"http://google.com\" target=\"_blank\"><i class=\"fa fa-google\"></i></a></li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-bottom\">\n");
      out.write("              <p>\n");
      out.write("                copyright &copy;2020 bloodDrive\n");
      out.write("              </p>\n");
      out.write("            </div>\n");
      out.write("          </footer>\n");
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
