<%@ tag body-content="scriptless" pageEncoding="utf-8" %>
<%@ attribute name="length" type="java.lang.Integer" %>
<%@ attribute name="trail" %>
<%@ attribute name="trim" %>
<%@ attribute name="var" type="java.lang.String" 
			rtexprvalue="false" required="true" %>
<%@ variable name-from-attribute="var" alias="result"
	variable-class="java.lang.String" scope="AT_END" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:set var="result" value="<%= content %>" />