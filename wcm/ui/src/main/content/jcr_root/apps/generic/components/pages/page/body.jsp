<%--
  Copyright 1997-2009 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

  Default body script.

  Draws the HTML body with the page content.

  ==============================================================================

--%><%@include file="/libs/foundation/global.jsp" %><%
    StringBuffer cls = new StringBuffer();
    for (String c: componentContext.getCssClassNames()) {
        cls.append(c).append(" ");
    }
    
    pageContext.setAttribute("cls", cls);
%>

<body class="${cls}">
	<div class="inspired"> 
	    <cq:include script="header.jsp"/>
        <cq:include script="content.jsp"/>
        <!-- 
        <cq:include script="comments.jsp"/>
         -->
        <cq:include script="footer.jsp"/>
	</div>
	
    <cq:include path="timing" resourceType="foundation/components/timing"/>
    <cq:include path="analytics" resourceType="cq/analytics/components/analytics"/>
</body>


