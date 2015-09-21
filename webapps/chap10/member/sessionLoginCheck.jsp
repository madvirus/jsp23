<%@ page contentType = "text/html; charset=utf-8" %>
<%
	String memberId = (String)session.getAttribute("MEMBERID");
	boolean login = memberId == null ? false : true;
%>
<html>
<head><title>로그인여부 검사</title></head>
<body>

<%
	if (login) {
%>
아이디 "<%= memberId %>"로 로그인 한 상태
<%
	} else {
%>
로그인하지 않은 상태
<%
	}
%>
</body>
</html>
