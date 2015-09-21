<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.net.URLEncoder" %>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0) {
		for (int i = 0 ; i < cookies.length ; i++) {
			if (cookies[i].getName().equals("name")) {
				Cookie cookie = new Cookie("name",
					URLEncoder.encode("JSP프로그래밍", "utf-8"));
				response.addCookie(cookie);
			}
		}
	}
%>
<html>
<head><title>값 변경</title></head>
<body>
name 쿠키의 값을 변경합니다.
</body>
</html>
