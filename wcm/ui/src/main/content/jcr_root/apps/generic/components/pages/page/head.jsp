<%@include file="/libs/foundation/global.jsp" %><%
%><%@ page import="com.day.cq.commons.Doctype,
                   org.apache.commons.lang.StringEscapeUtils" %><%
    String xs = Doctype.isXHTML(request) ? "/" : "";
    String favIcon = currentDesign.getPath() + "/favicon.ico";
    if (resourceResolver.getResource(favIcon) == null) {
        favIcon = null;
    }
    
    pageContext.setAttribute("xs", xs);
    pageContext.setAttribute("keywords", StringEscapeUtils.escapeHtml(WCMUtils.getKeywords(currentPage, false)));
    pageContext.setAttribute("description", StringEscapeUtils.escapeHtml(properties.get("jcr:description", "")));
    pageContext.setAttribute("facebookAppId", currentDesign.getStyle("/etc/designs/generic/configurationstyle").getSubStyle("configuration").get("facebookAppId", String.class));
    pageContext.setAttribute("favIcon", favIcon);
    pageContext.setAttribute("currentPageTitle", currentPage.getTitle() == null ? currentPage.getName() : currentPage.getTitle());
%><head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"${xs}>
    <meta http-equiv="keywords" content="${keywords}"${xs}>
    <meta http-equiv="description" content="${description}"${xs}>
    
    <%-- Check design/configurationstyle for the facebook app id --%><%
    if(currentDesign.getStyle("/etc/designs/generic/configurationstyle") != null &&
            currentDesign.getStyle("/etc/designs/generic/configurationstyle").getSubStyle("configuration") != null &&
            currentDesign.getStyle("/etc/designs/generic/configurationstyle").getSubStyle("configuration").get("facebookAppId") != null) { %>
    <meta property="fb:app_id" content="${facebookAppId}"/>
    <% } %>
    
    <cq:include script="headlibs.jsp"/>
    <cq:include script="/apps/generic/components/global/init.jsp"/>
    <cq:include script="stats.jsp"/>
    <% if (favIcon != null) { %>
    <link rel="icon" type="image/vnd.microsoft.icon" href="${favIcon}"${xs}>
    <link rel="shortcut icon" type="image/vnd.microsoft.icon" href="${favIcon}"${xs}>
    <% } %>
    <title>${currentPageTitle}</title>
</head>
