<%
%><%@ include file="/libs/foundation/global.jsp"%><%

	String fbAppId = currentDesign.getStyle("/etc/designs/generic/configurationstyle").getSubStyle("configuration").get("facebookAppId", String.class);

	pageContext.setAttribute("fbAppId", fbAppId);
%>
<div class="seo"> 
<p>SEO copy goes here. In aliquam fringilla lobortis. Curabitur a justo ac mauris accumsan iaculis vel et elit. Etiam tristique, sapien ullamcorper mattis vehicula, mauris mi lobortis quam, nec scelerisque eros lacus at metus. Proin eleifend molestie egestas.</p> 
</div>
<img src="/etc/designs/generic/images/footer.jpg" /> 
<div id="fb-root"></div>
<script type="text/javascript">
  window.fbAsyncInit = function() {
    FB.init({appId: '${fbAppId}', status: true, cookie: true, xfbml: true});
  };
  (function() {
    var e = document.createElement('script'); e.async = true;
    e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
    document.getElementById('fb-root').appendChild(e);
  }());
</script>
<!--[if lte IE 7]>
<div id="ie_clear"></div>
<![endif]--> 