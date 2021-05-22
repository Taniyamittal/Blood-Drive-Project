package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminHeader_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title></title>\n");
      out.write("    <style>\n");
      out.write("    *{\n");
      out.write("      margin:0;\n");
      out.write("      padding: 0;\n");
      out.write("    }\n");
      out.write("    body{\n");
      out.write("      font-family: 'Open Sans',sans-serif;\n");
      out.write("      font-weight: 400;\n");
      out.write("      font-size: 16px;\n");
      out.write("    }\n");
      out.write("    a{\n");
      out.write("      text-decoration: none;\n");
      out.write("    }\n");
      out.write("    header{\n");
      out.write("      display: flex;\n");
      out.write("      justify-content: space-between;\n");
      out.write("      align-items: center;\n");
      out.write("      padding: 30px 50px;\n");
      out.write("      background-color: #c00606;\n");
      out.write("      height: 50px;\n");
      out.write("    }\n");
      out.write("    .bold {\n");
      out.write("    font-weight:900\n");
      out.write("  }\n");
      out.write("    .heading{\n");
      out.write("      cursor: pointer;\n");
      out.write("      font-size: 25px;\n");
      out.write("      font-family:serif;\n");
      out.write("     \n");
      out.write("      font-weight: bolder;\n");
      out.write("      color: white;\n");
      out.write("      letter-spacing:5px;\n");
      out.write("    }\n");
      out.write("    .nav-area{\n");
      out.write("      list-style: none;\n");
      out.write("    }\n");
      out.write("    .nav-area li{\n");
      out.write("      display: inline-block;\n");
      out.write("      padding: 0 15px;\n");
      out.write("      text-transform: uppercase;\n");
      out.write("    }\n");
      out.write("    .nav-area li a{\n");
      out.write("      transition: .3s;\n");
      out.write("      color: #fff;\n");
      out.write("      font-family: sans-serif;\n");
      out.write("      font-weight: bold;\n");
      out.write("      font-size: 16px;\n");
      out.write("    }\n");
      out.write("    .nav-area li a:hover{\n");
      out.write("      color:black;\n");
      out.write("    }\n");
      out.write("    .btn-area{\n");
      out.write("      cursor: pointer;\n");
      out.write("      color: #fff;\n");
      out.write("      font-size: 20px;\n");
      out.write("      padding: 10px 30px;\n");
      out.write("      border-radius: 5px;\n");
      out.write("      background: white;\n");
      out.write("    }\n");
      out.write("    .btn a{\n");
      out.write("      color: #c00606;\n");
      out.write("      transition: .3s;\n");
      out.write("      font-family: sans-serif;\n");
      out.write("      font-weight: bold;\n");
      out.write("    }\n");
      out.write("    .btn a:hover{\n");
      out.write("      color:black;\n");
      out.write("    }\n");
      out.write("    .bold {\n");
      out.write("    font-weight:900\n");
      out.write("  }\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <header>\n");
      out.write("        \n");
      out.write("        <div class=\"heading\"><span class=\"bold\">Blood</span>DRIVE</div>\n");
      out.write("      <nav>\n");
      out.write("        <ul class=\"nav-area\">\n");
      out.write("          \n");
      out.write("          <li><a href=\"AdminDonor.jsp?bid=");
 out.println(request.getParameter("bid")); 
      out.write("\">Donors</a></li>\n");
      out.write("          <li><a href=\"AdminRequestPending.jsp?bid=");
 out.println(request.getParameter("bid")); 
      out.write("\">Request Pending</a></li>\n");
      out.write("          <li><a href=\"AdminRequestAccepted.jsp?bid=");
 out.println(request.getParameter("bid")); 
      out.write("\">Request Accepted</a></li>\n");
      out.write("          <li><a href=\"AdminStock.jsp?bid=");
 out.println(request.getParameter("bid")); 
      out.write("\">Stocks</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </nav>\n");
      out.write("      <div class=\"btn\">\n");
      out.write("      <a  class=\"btn-area\" href=\"home.jsp\" >Logout</a>  </div>\n");
      out.write("    </header>\n");
      out.write("    \n");
      out.write("  </body>\n");
      out.write("</html>\n");

  //  int uname=Integer.parseInt(request.getParameter("id"));
   // out.println(uname);
       
   
      out.write('\n');
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
