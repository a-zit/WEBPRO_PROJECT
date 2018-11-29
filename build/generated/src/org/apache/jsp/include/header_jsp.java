package org.apache.jsp.include;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title><!-- Bootstrap core CSS -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Custom styles for this template -->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/shop-item.css\" />\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark fixed-top\">\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"ProductList\">\r\n");
      out.write("                    <img src=\"./Images/werewolf.png\" width=\"32\" height=\"32\" class=\"d-inline-block align-top mr-3\" alt=\"\" >\r\n");
      out.write("                    LYCAN STORE\r\n");
      out.write("                </a>\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\r\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <form class=\"form-inline my-2 my-lg-0 mr-5\" action=\"Search\" method=\"post\" >\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <div class=\"input-group-prepend\">\r\n");
      out.write("                                    <button class=\"btn btn-outline-info my-2 my-sm-0\" type=\"submit\">Search</button>    \r\n");
      out.write("                                </div>\r\n");
      out.write("                                <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\" name=\"searchinput\">\r\n");
      out.write("\r\n");
      out.write("                                <select name=\"type\">\r\n");
      out.write("                                    <option value=\"tshirt\">T-shirt</option>\r\n");
      out.write("                                    <option value=\"jacket\">Jacket</option>\r\n");
      out.write("                                    <option value=\"hoodie\">Hoodie</option>\r\n");
      out.write("                                    <option value=\"sweater\">Sweater</option>\r\n");
      out.write("                                    <option value=\"polo\">Polo</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"Cart\" style=\"border-right: 3px solid #bec4ce;\">Cart ( ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cart.totalQuantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" )</a></li>  \r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a id=\"myBtn\" class=\"cursor nav-link\" href=\"Login\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${loginshow}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"MyAccount\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${customer.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\r\n");
      out.write("                        <li class=\"nav-item\">\r\n");
      out.write("                            <a id=\"myBtn\" class=\"cursor nav-link\" href=\"Logout\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${logoutshow}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
