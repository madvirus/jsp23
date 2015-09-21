<%@ page contentType = "text/html; charset=utf-8" %>
body_sub에서 name 파라미터 값: <%= request.getParameter("name") %>
<br/>
name 파라미터 값 목록:
<ul>
<%
	String[] names = request.getParameterValues("name");
	for (String name : names) {
%>
	<li> <%= name %> </li>
<%
	}
%>
</ul>