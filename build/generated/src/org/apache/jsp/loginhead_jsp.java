package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginhead_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            a {\n");
      out.write("    text-decoration: none;\n");
      out.write("  }\n");
      out.write("  li {\n");
      out.write("    list-style: none;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .bold {\n");
      out.write("    font-weight:900\n");
      out.write("  }\n");
      out.write("\n");
      out.write("#navbar {\n");
      out.write("    display: flex;\n");
      out.write("    justify-content: space-between;\n");
      out.write("    background-color:#c00606;\n");
      out.write("    width: 100%;\n");
      out.write("    z-index: 12;\n");
      out.write("    padding: 1rem;\n");
      out.write("    position: fixed;\n");
      out.write("    top: 0;\n");
      out.write("    left: 0;\n");
      out.write("    box-shadow: 0 1px 20px rgba(0,0,0,0.7);  \n");
      out.write("  }\n");
      out.write("  #navbar a {\n");
      out.write("    color: #f4f4f4;\n");
      out.write("    font-size: 1.2rem;\n");
      out.write("    font-weight: 500;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  #navbar .logo a {\n");
      out.write("    font-size: 2rem;\n");
      out.write("    align-self: center;\n");
      out.write("    letter-spacing: 2px;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  #navbar .options {\n");
      out.write("    display: flex;\n");
      out.write("    align-items: center;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  #navbar .options a {\n");
      out.write("    font-size: 1.2rem;\n");
      out.write("    padding: 12px 15px;\n");
      out.write("    margin: 0 5px;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  #navbar .options a.current {\n");
      out.write("    background: #9c0606;\n");
      out.write("    border-radius: 5px;\n");
      out.write("    color: #ccc;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  #navbar .options a:hover {opacity: 0.8;\n");
      out.write("  }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header id=\"navbar\">\n");
      out.write("        <div class=\"logo\">\n");
      out.write("          <a href=\"#\"><span class=\"bold\">Blood</span> DRIVE</a>\n");
      out.write("        </div>\n");
      out.write("        <nav class=\"options\">\n");
      out.write("          <a  href=\"index.html\">Home</a>\n");
      out.write("          <a class=\"current\" href=\"Login29.jsp\">Donor</a>\n");
      out.write("          <a href=\"#\">Search</a>\n");
      out.write("          <a href=\"#\">Request</a>\n");
      out.write("          <a href=\"#\">Admin</a>\n");
      out.write("          <a href=\"#\">About Us</a>\n");
      out.write("          <a href=\"#\">FAQ</a>\n");
      out.write("        </nav>\n");
      out.write("      </header>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
