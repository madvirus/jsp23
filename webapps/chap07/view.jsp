<%@ page contentType = "text/html; charset=utf-8" %>
<%
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if (code.equals("A")) {
		viewPageURI = "/viewModule/a.jsp";
	} else if (code.equals("B")) {
		viewPageURI = "/viewModule/b.jsp";
	} else if (code.equals("C")) {
		viewPageURI = "/viewModule/c.jsp";
	}
%>
<jsp:forward page="<%= viewPageURI %>" />
