/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.26
 * Generated at: 2024-09-19 09:17:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class report_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "userheader.jsp", out, false);
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Wildlife:Report</title>\r\n");
      out.write("   \r\n");
      out.write("    <style>\r\n");
      out.write("        h1 {\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            color: #2c3e50;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("      #reportForm {\r\n");
      out.write("    display: flex;\r\n");
      out.write("    flex-wrap: wrap;\r\n");
      out.write("    gap: 1rem;\r\n");
      out.write("    max-width: 1200px;\r\n");
      out.write("    margin: 0 auto;\r\n");
      out.write("    padding: 1rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".form-container {\r\n");
      out.write("    display: flex;\r\n");
      out.write("    flex-wrap: wrap;\r\n");
      out.write("    gap: 1rem;\r\n");
      out.write("    width: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".form-section {\r\n");
      out.write("    flex: 1;\r\n");
      out.write("    min-width: 300px;\r\n");
      out.write("    box-sizing: border-box;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".form-section h2 {\r\n");
      out.write("    border-bottom: 2px solid #007bff;\r\n");
      out.write("    padding-bottom: 0.5rem;\r\n");
      out.write("    margin-bottom: 1rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("label {\r\n");
      out.write("    display: block;\r\n");
      out.write("    margin-bottom: 0.5rem;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input[type=\"text\"], input[type=\"email\"], input[type=\"tel\"], input[type=\"datetime-local\"], select, textarea {\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    padding: 0.5rem;\r\n");
      out.write("    margin-bottom: 1rem;\r\n");
      out.write("    border: 1px solid #ccc;\r\n");
      out.write("    border-radius: 4px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input[type=\"file\"] {\r\n");
      out.write("    padding: 0.5rem 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("#a1 {\r\n");
      out.write("\r\n");
      out.write("    display: inline-block; /* Adjusts to fit content */\r\n");
      out.write("    min-width: 50px; /* Minimum width for consistency */\r\n");
      out.write("    height:50px; /* Auto height to fit content */\r\n");
      out.write("    transition: background-color 0.3s ease, transform 0.2s ease; \r\n");
      out.write("    margin-top:100px;/* Smooth transition for hover effects */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        .social-buttons {\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            margin-top: 20px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .social-buttons  {\r\n");
      out.write("            width: auto;\r\n");
      out.write("            margin: 5px;\r\n");
      out.write("            font-size: 20px;\r\n");
      out.write("            color: #ffffff;\r\n");
      out.write("            padding: 10px 15px;\r\n");
      out.write("            border-radius: 50%;\r\n");
      out.write("            border: none;\r\n");
      out.write("            cursor: pointer;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .social-buttons button i {\r\n");
      out.write("            margin-right: 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .social-buttons .email { background-color: #ea4335; }\r\n");
      out.write("        .social-buttons .facebook { background-color: #3b5998; }\r\n");
      out.write("        .social-buttons .twitter { background-color: #1da1f2; }\r\n");
      out.write("        .social-buttons .linkedin { background-color: #0077b5; }\r\n");
      out.write("        .social-buttons .whatsapp { background-color: #25d366; } \r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("   <form id=\"reportForm\">\r\n");
      out.write("    <div class=\"form-container\">\r\n");
      out.write("        <div class=\"form-section\">\r\n");
      out.write("            <h2 class=\"text-primary\">Reporter Information</h2>\r\n");
      out.write("            <label for=\"fullName\">Full Name:</label>\r\n");
      out.write("            <input type=\"text\" id=\"fullName\" name=\"fullName\" required>\r\n");
      out.write("\r\n");
      out.write("            <label for=\"email\">Email Address:</label>\r\n");
      out.write("            <input type=\"email\" id=\"email\" name=\"email\" required>\r\n");
      out.write("\r\n");
      out.write("            <label for=\"contactNumber\">Contact Number:</label>\r\n");
      out.write("            <input type=\"tel\" id=\"contactNumber\" name=\"contactNumber\" required>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"form-section\">\r\n");
      out.write("            <h2 class=\"text-primary\">Incident Details</h2>\r\n");
      out.write("            <label for=\"incidentType\">Type of Wildlife Incident:</label>\r\n");
      out.write("            <select id=\"incidentType\" name=\"incidentType\" required>\r\n");
      out.write("                <option value=\"\">Select Incident Type</option>\r\n");
      out.write("                <option value=\"sighting\">Sighting</option>\r\n");
      out.write("                <option value=\"poaching\">Poaching</option>\r\n");
      out.write("                <option value=\"injury\">Injury</option>\r\n");
      out.write("                <option value=\"habitatDestruction\">Habitat Destruction</option>\r\n");
      out.write("                <option value=\"illegalTrade\">Illegal Trade</option>\r\n");
      out.write("                <option value=\"other\">Other</option>\r\n");
      out.write("            </select>\r\n");
      out.write("\r\n");
      out.write("            <label for=\"species\">Species Identified:</label>\r\n");
      out.write("            <input type=\"text\" id=\"species\" name=\"species\" required>\r\n");
      out.write("\r\n");
      out.write("            <label for=\"location\">Location of Incident:</label>\r\n");
      out.write("            <input type=\"text\" id=\"location\" name=\"location\" required placeholder=\"Address or Coordinates\">\r\n");
      out.write("\r\n");
      out.write("            <label for=\"dateTime\">Date and Time of Incident:</label>\r\n");
      out.write("            <input type=\"datetime-local\" id=\"dateTime\" name=\"dateTime\" required>\r\n");
      out.write("\r\n");
      out.write("            <label for=\"description\">Description of Incident:</label>\r\n");
      out.write("            <textarea id=\"description\" name=\"description\" rows=\"4\" required></textarea>\r\n");
      out.write("\r\n");
      out.write("            <label for=\"severity\">Severity Level:</label>\r\n");
      out.write("            <select id=\"severity\" name=\"severity\" required>\r\n");
      out.write("                <option value=\"\">Select Severity Level</option>\r\n");
      out.write("                <option value=\"low\">Low</option>\r\n");
      out.write("                <option value=\"medium\">Medium</option>\r\n");
      out.write("                <option value=\"high\">High</option>\r\n");
      out.write("            </select>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"form-section\">\r\n");
      out.write("        <h2 class=\"text-primary\">Media Uploads</h2>\r\n");
      out.write("        <label for=\"photos\">Upload Photos:</label>\r\n");
      out.write("        <input type=\"file\" id=\"photos\" name=\"photos\" accept=\"image/*\" multiple>\r\n");
      out.write("\r\n");
      out.write("        <label for=\"videos\">Upload Videos:</label>\r\n");
      out.write("        <input type=\"file\" id=\"videos\" name=\"videos\" accept=\"video/*\" multiple>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"form-section\">\r\n");
      out.write("        <h2 class=\"text-primary\">Witnesses</h2>\r\n");
      out.write("        <label for=\"witnesses\">Witness Names (Optional):</label>\r\n");
      out.write("        <input type=\"text\" id=\"witnesses\" name=\"witnesses\" placeholder=\"Separate names with commas\">\r\n");
      out.write("\r\n");
      out.write("        <label for=\"witnessContact\">Witness Contact Information (Optional):</label>\r\n");
      out.write("        <input type=\"text\" id=\"witnessContact\" name=\"witnessContact\" placeholder=\"Separate contacts with commas\">\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"form-section\">\r\n");
      out.write("        <h2 class=\"text-primary\">Action Required</h2>\r\n");
      out.write("        <label for=\"actionRequired\">Action Required:</label>\r\n");
      out.write("        <select id=\"actionRequired\" name=\"actionRequired\" required>\r\n");
      out.write("            <option value=\"\">Select Action Required</option>\r\n");
      out.write("            <option value=\"immediateIntervention\">Immediate Intervention</option>\r\n");
      out.write("            <option value=\"monitoring\">Monitoring</option>\r\n");
      out.write("            <option value=\"awarenessCampaign\">Awareness Campaign</option>\r\n");
      out.write("            <option value=\"legalAction\">Legal Action</option>\r\n");
      out.write("            <option value=\"other\">Other</option>\r\n");
      out.write("        </select>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"form-section\">\r\n");
      out.write("        <h2 class=\"text-primary\">Additional Notes</h2>\r\n");
      out.write("        <label for=\"additionalNotes\">Additional Notes:</label>\r\n");
      out.write("        <textarea id=\"additionalNotes\" name=\"additionalNotes\" rows=\"4\"></textarea>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <button type=\"button\" onclick=\"generatePDF()\" id=\"a1\">Generate Report</button>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"social-buttons\">\r\n");
      out.write("        <button class=\"email\" onclick=\"shareViaEmail()\" title=\"Share via Email\"><i class=\"fas fa-envelope\"></i></button>\r\n");
      out.write("        <button class=\"facebook\" onclick=\"shareOnSocialMedia('facebook')\" title=\"Share on Facebook\"><i class=\"fab fa-facebook-f\"></i></button>\r\n");
      out.write("        <button class=\"twitter\" onclick=\"shareOnSocialMedia('twitter')\" title=\"Share on Twitter\"><i class=\"fab fa-twitter\"></i></button>\r\n");
      out.write("        <button class=\"linkedin\" onclick=\"shareOnSocialMedia('linkedin')\" title=\"Share on LinkedIn\"><i class=\"fab fa-linkedin-in\"></i></button>\r\n");
      out.write("        <button class=\"whatsapp\" onclick=\"shareOnWhatsApp()\" title=\"Share on WhatsApp\"><i class=\"fab fa-whatsapp\"></i></button>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js\"></script>\r\n");
      out.write("    <script src=\"js1/script.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("  	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "userfooter.jsp", out, false);
      out.write("\r\n");
      out.write("  <script>\r\n");
      out.write("function shareViaEmail() {\r\n");
      out.write("    window.location.href = 'mailto:?subject=Wildlife Conservation Report&body=Check out this report!';\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function shareOnSocialMedia(platform) {\r\n");
      out.write("    let url = encodeURIComponent('http://example.com/wildlife-report');\r\n");
      out.write("    let shareUrl = '';\r\n");
      out.write("\r\n");
      out.write("    switch(platform) {\r\n");
      out.write("        case 'facebook':\r\n");
      out.write("            shareUrl = `https://www.facebook.com/sharer/sharer.php?u=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${url}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("`;\r\n");
      out.write("            break;\r\n");
      out.write("        case 'twitter':\r\n");
      out.write("            shareUrl = `https://twitter.com/intent/tweet?url=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${url}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("&text=Check out this Wildlife Conservation Report!`;\r\n");
      out.write("            break;\r\n");
      out.write("        case 'linkedin':\r\n");
      out.write("            shareUrl = `https://www.linkedin.com/shareArticle?url=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${url}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("&title=Wildlife Conservation Report`;\r\n");
      out.write("            break;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    window.open(shareUrl, '_blank');\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function shareOnWhatsApp() {\r\n");
      out.write("    let url = encodeURIComponent('http://example.com/wildlife-report');\r\n");
      out.write("    let shareUrl = `https://api.whatsapp.com/send?text=Check out this Wildlife Conservation Report! ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${url}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("`;\r\n");
      out.write("    window.open(shareUrl, '_blank');\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("  <script>\r\n");
      out.write("  window.watsonAssistantChatOptions = {\r\n");
      out.write("    integrationID: \"40f6535b-f4fd-4da5-9334-91599b86c0b0\", // The ID of this integration.\r\n");
      out.write("    region: \"au-syd\", // The region your integration is hosted in.\r\n");
      out.write("    serviceInstanceID: \"eab37542-ac5e-4718-8d4f-787f12a29357\", // The ID of your service instance.\r\n");
      out.write("    onLoad: async (instance) => { await instance.render(); }\r\n");
      out.write("  };\r\n");
      out.write("  setTimeout(function(){\r\n");
      out.write("    const t=document.createElement('script');\r\n");
      out.write("    t.src=\"https://web-chat.global.assistant.watson.appdomain.cloud/versions/\" + (window.watsonAssistantChatOptions.clientVersion || 'latest') + \"/WatsonAssistantChatEntry.js\";\r\n");
      out.write("    document.head.appendChild(t);\r\n");
      out.write("  });\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
