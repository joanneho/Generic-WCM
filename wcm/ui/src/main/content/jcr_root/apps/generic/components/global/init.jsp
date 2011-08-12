<%--
  Copyright 1997-2010 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

  Default init script.

  Draws the WCM initialization code. This is usually called by the head.jsp
  of the page. If the WCM is disabled, no output is written.

  ==============================================================================

--%><%@include file="/libs/foundation/global.jsp" %><%
%><%@page import="com.day.cq.wcm.api.WCMMode" %><%
if (WCMMode.fromRequest(request) != WCMMode.DISABLED) {
    String dlgPath = null;
    if (editContext != null && editContext.getComponent() != null) {
        dlgPath = editContext.getComponent().getDialogPath();
    }
    
    pageContext.setAttribute("currentPagePath", currentPage.getPath());
    pageContext.setAttribute("propsDialogPath", dlgPath == null ? "" : dlgPath);
    pageContext.setAttribute("isCurrentPageLocked", currentPage.isLocked());
    %><cq:includeClientLib categories="cq.wcm.edit" />
    <script type="text/javascript">
        CQ.WCM.launchSidekick("${currentPagePath}", {
            propsDialog: "${propsDialogPath}",
            locked: ${isCurrentPageLocked},
            previewReload: "true"
        });
    </script>
<% } %>