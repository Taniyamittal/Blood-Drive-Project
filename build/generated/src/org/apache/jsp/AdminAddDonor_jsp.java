package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminAddDonor_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "AdminHeader.jsp", out, false);
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title></title>\n");
      out.write("      <link rel=\"stylesheet\" href=\"DonorReg.css\" >\n");
      out.write("      <script type=\"text/javascript\">\n");
      out.write("        function clearErrors(){\n");
      out.write("         errors = document.getElementsByClassName('error');\n");
      out.write("         for(let item of errors)\n");
      out.write("         {\n");
      out.write("             item.innerHTML = \"\";\n");
      out.write("         }\n");
      out.write("        }\n");
      out.write("        function seterror(id, error){\n");
      out.write("          document.getElementById(id).innerHTML = error;\n");
      out.write("        }\n");
      out.write("        function validateForm() {\n");
      out.write("          var returnval=true;\n");
      out.write("          clearErrors();\n");
      out.write("          var fname=document.forms['donorform1'][\"fname\"].value;\n");
      out.write("          var gen=document.forms['donorform1'][\"gen\"].value;\n");
      out.write("          var pass=document.forms['donorform1'][\"pass\"].value;\n");
      out.write("          var cpass=document.forms['donorform1'][\"cpass\"].value;\n");
      out.write("          var bgrp=document.forms['donorform1'][\"bgrp\"].value;\n");
      out.write("          var bqty=document.forms['donorform1'][\"bqty\"].value;\n");
      out.write("          var regex1=/^[a-zA-Z]*$/;\n");
      out.write("          var regex2=/^[0-9]*$/;\n");
      out.write("          if(regex1.test(fname)==false){\n");
      out.write("            seterror(\"fnameerror\",\"*Please Enter Valid Name\");\n");
      out.write("            returnval=false;\n");
      out.write("          }\n");
      out.write("          if(gen==\"Select\"){\n");
      out.write("            seterror(\"generror\",\"*Please select your Gender\");\n");
      out.write("            returnval=false;\n");
      out.write("          }\n");
      out.write("          if(pass!=cpass)\n");
      out.write("          {\n");
      out.write("            seterror(\"cpasserror\",\"*Password and Confirm Password should be same\");\n");
      out.write("            returnval=false;\n");
      out.write("          }\n");
      out.write("          if(bgrp==\"Select\"){\n");
      out.write("            seterror(\"bgrperror\",\"*Please select your Blood Group\");\n");
      out.write("            returnval=false;\n");
      out.write("          }\n");
      out.write("          if(regex2.test(bqty)==false){\n");
      out.write("            seterror(\"bqtyerror\",\"*Please Enter Valid Blood Quantity\");\n");
      out.write("            returnval=false;\n");
      out.write("          }\n");
      out.write("          return returnval;\n");
      out.write("        }\n");
      out.write("      </script>\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("      \n");
      out.write("    <form name=\"donorform1\" class=\"donorform\" onsubmit=\"return validateForm() \" action=\"AdminHeader.html\" method=\"get\">\n");
      out.write("      <h2>Donor Registration Form</h2>\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <label>First Name </label>\n");
      out.write("        <input type=\"text\" name=\"fname\" class=\"input\" required>\n");
      out.write("        <div class=\"error\" id=\"fnameerror\"></div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <label>Last Name </label>\n");
      out.write("          <input type=\"text\" name=\"lname\" class=\"input\" required>\n");
      out.write("          <div class=\"error\" id=\"lnameerror\"></div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <label>Email </label>\n");
      out.write("            <input type=\"email\" name=\"email\" class=\"input\" required>\n");
      out.write("            <div class=\"error\" id=\"emailerror\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <label>Mobile Number </label>\n");
      out.write("              <input type=\"text\" name=\"mobile\" maxlength=\"10\" class=\"input\" required>\n");
      out.write("              <div class=\"error\" id=\"mobileerror\"></div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"row\">\n");
      out.write("                <label>Date of Birth </label>\n");
      out.write("                <input type=\"text\" name=\"dob\" class=\"input\" placeholder=\"yyyy-mm-dd\" required >\n");
      out.write("                <div class=\"error\" id=\"doberror\"></div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                  <label>Gender</label>\n");
      out.write("                  <select name=\"gen\" class=\"custom_select\" >\n");
      out.write("                  <option class=\"select\">Select</option>\n");
      out.write("                  <option class=\"select\">Male</option>\n");
      out.write("                  <option class=\"select\">Female</option>\n");
      out.write("                  </select>\n");
      out.write("                  <div class=\"error\" id=\"generror\"></div>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"row\">\n");
      out.write("                    <label>Donation Date</label>\n");
      out.write("                    <input type=\"text\" name=\"donationdate\" class=\"input\" placeholder=\"yyyy-mm-dd\"  required>\n");
      out.write("                    <div class=\"error\" id=\"donationerror\"></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                      <label>Blood Group</label>\n");
      out.write("                      <select name=\"bgrp\" class=\"custom_select\">\n");
      out.write("                      <option class=\"select\">Select</option>\n");
      out.write("                      <option class=\"select\">A+</option>\n");
      out.write("                      <option class=\"select\">A-</option>\n");
      out.write("                      <option class=\"select\">B+</option>\n");
      out.write("                      <option class=\"select\">B-</option>\n");
      out.write("                      <option class=\"select\">AB+</option>\n");
      out.write("                      <option class=\"select\">AB-</option>\n");
      out.write("                      <option class=\"select\">O+</option>\n");
      out.write("                      <option class=\"select\">O-</option>\n");
      out.write("                      </select>\n");
      out.write("                      <div class=\"error\" id=\"bgrperror\"></div>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"row\">\n");
      out.write("                        <label>Blood Quantity</label>\n");
      out.write("                        <input type=\"text\" name=\"bqty\" class=\"input\" required>\n");
      out.write("                        <div class=\"error\" id=\"bqtyerror\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                      <label>Password</label>\n");
      out.write("                      <input type=\"password\" name=\"pass\" class=\"input\" required>\n");
      out.write("                      <div class=\"error\" id=\"passerror\"></div>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"row\">\n");
      out.write("                        <label>Confirm Password</label>\n");
      out.write("                        <input type=\"password\" name=\"cpass\" class=\"input\" required>\n");
      out.write("                        <div class=\"error\" id=\"cpasserror\"></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div >\n");
      out.write("                          <br />\n");
      out.write("                          <input type=\"submit\" value=\"Submit\" class=\"btn\" >\n");
      out.write("                          </div>\n");
      out.write("      </form>\n");
      out.write("     \n");
      out.write("  </body>\n");
      out.write("  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "AdminFooter.html", out, false);
      out.write("\n");
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
