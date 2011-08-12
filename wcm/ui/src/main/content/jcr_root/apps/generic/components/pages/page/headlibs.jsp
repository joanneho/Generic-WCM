<%--
  Copyright 1997-2008 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

  Includes the scripts and css to be included in the head tag

  ==============================================================================

--%><%@ page import="com.day.cq.wcm.api.WCMMode" %><%
%><%@include file="/libs/foundation/global.jsp" %><%
	WCMMode cssMode = WCMMode.fromRequest(request);
	// not publish or preview mode
	if( cssMode != WCMMode.DISABLED && cssMode != WCMMode.PREVIEW ) {
		pageContext.setAttribute("cssDesignPath", currentDesign.getPath());
%>
	<link href="${cssDesignPath}/static_auth.css" rel="stylesheet" type="text/css"/>
<%		
	} else {
    	currentDesign.writeCssIncludes(pageContext); 
	}
%>