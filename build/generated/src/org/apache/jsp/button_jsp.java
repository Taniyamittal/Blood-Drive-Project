package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class button_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("          \n");
      out.write("* {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("  background: linear-gradient(to top, #D4EBFF 0%, #f7dada 100%);\n");
      out.write("  //font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("    height: 100%;\n");
      out.write("  background-repeat: no-repeat; \n");
      out.write("  background-attachment: fixed;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Float four columns side by side */\n");
      out.write(".column {\n");
      out.write("  float: left;\n");
      out.write("  width: 25%;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Remove extra left and right margins, due to padding in columns */\n");
      out.write(".row {//margin: 0 -5px;\n");
      out.write("     display: flex;\n");
      out.write("  justify-content: center;\n");
      out.write("  flex-direction: row;\n");
      out.write(" // position: absolute;\n");
      out.write("  padding: 150px 0 90px 0;\n");
      out.write("  //top: 50%;\n");
      out.write("  //transform: translateY(-50%);\n");
      out.write("   // transform: translateX(-50%);\n");
      out.write("/*   margin: 0;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  left: 50%;\n");
      out.write("  -ms-transform: translate(-50%, -50%);\n");
      out.write("  transform: translate(-50%, -50%);*/\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write(" \n");
      out.write(".row:after {\n");
      out.write("  content: \"\";\n");
      out.write("  display: table;\n");
      out.write("  clear:  both;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("/* Style the counter cards */\n");
      out.write(".card {\n");
      out.write("    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19); \n");
      out.write("  padding: 16px;\n");
      out.write("  text-align: center;\n");
      out.write("  background-color: #f7dada;\n");
      out.write("  \n");
      out.write("}\n");
      out.write(".card button {\n");
      out.write("  border: none;\n");
      out.write("  outline: 0;\n");
      out.write("  padding: 12px;\n");
      out.write("  color: white;\n");
      out.write("  background-color: #c00606;\n");
      out.write("  text-align: center;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 100%;\n");
      out.write("  font-size: 18px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card button:hover {\n");
      out.write("  opacity: 0.8;\n");
      out.write("}\n");
      out.write("*{\n");
      out.write("    padding: 0;\n");
      out.write("    margin: 0;\n");
      out.write("}\n");
      out.write("/* Responsive columns - one column layout (vertical) on small screens */\n");
      out.write("@media screen and (max-width: 600px) {\n");
      out.write("  .column {\n");
      out.write("    width: 100%;\n");
      out.write("    display: compact;\n");
      out.write("    margin-bottom: 20px;\n");
      out.write("    \n");
      out.write("  }\n");
      out.write("  \n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        \n");
      out.write("       <div id=\"head\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        </div> \n");
      out.write("       <div class=\"row\">\n");
      out.write("           \n");
      out.write("  <div class=\"column\">\n");
      out.write("      \n");
      out.write("      <div class=\"card\">\n");
      out.write("          <form action=\"update.jsp\">\n");
      out.write("          <img src=\"Images/img_avatar.jpg\" alt=\"avatar\" style=\"width:100%\">\n");
      out.write("          \n");
      out.write("        <Input type=\"hidden\" name=\"did\" value=\"");
      out.print(request.getParameter("did"));
      out.write("\"/>\n");
      out.write("        <p><button>Update Profile</button></p>\n");
      out.write("          </form> \n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"column\">\n");
      out.write("      <div class=\"card\">\n");
      out.write("          <form action=\"donate.jsp\">\n");
      out.write("          <img src=\"Images/do3.jpg\" alt=\"donate again\" style=\"width: 100%\">\n");
      out.write("          <Input type=\"hidden\" name=\"did\" value=\"");
      out.print(request.getParameter("did"));
      out.write("\"/>\n");
      out.write("          <p><button>Donate Blood Again</button></p>\n");
      out.write("          </form>\n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("           \n");
      out.write("</div>\n");
      out.write("  <div id=\"foot\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
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
