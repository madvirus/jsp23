<%@ tag body-content="scriptless" pageEncoding="utf-8" %>
<%@ attribute name="length" type="java.lang.Integer" %>
<%@ attribute name="trail" %>
<%@ attribute name="trim" %>

<jsp:doBody var="content" scope="page" />
<%
	String content = (String)jspContext.getAttribute("content");
	if (trim != null && trim.equals("true")) {
		content = content.trim();
	}
	content = content.replaceAll(
		"<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?>", ""); 
	
	if (length != null && length.intValue() > 0 &&
		content.length() > length.intValue()) {
		content = content.substring(0, length.intValue()); 
		if (trail != null) {
			content = content + trail;
		}
	}
%>
<%= content %>