package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sign_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script>\n");
      out.write("            function validate(){\n");
      out.write("                var x=document.f1.pass.value;\n");
      out.write("                var y=document.f1.repass.value;\n");
      out.write("                if(x!=y){\n");
      out.write("                    document.getElementById(\"b\").innerHTML=\"password not match\";\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"action.jsp\" name=\"f1\" onsubmit=\"return validate()\">\n");
      out.write("            <p>Username:<input type=\"text\" name=\"uname\" value=\"\" required=\"required\"></p>\n");
      out.write("            <p>First name:<input type=\"text\" name=\"fname\" value=\"\" required=\"required\"></p>\n");
      out.write("            <p>Last name:<input type=\"text\" name=\"lname\" value=\"\" required=\"required\"></p>\n");
      out.write("            <p>Email:<input type=\"email\" name=\"email\" value=\"\" required=\"required\"></p>\n");
      out.write("            <p>Password:<input type=\"password\" name=\"pass\" value=\"\" required=\"required\"><span id=\"a\"></span></p>\n");
      out.write("            <p>Re-Password:<input type=\"password\" name=\"repass\" value=\"\"><span id=\"b\"></span></p>\n");
      out.write("            <p><input type=\"submit\" name=\"submit\" value=\"submit\"></p>\n");
      out.write("        </form>\n");
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
