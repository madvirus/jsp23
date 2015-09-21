<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="util.FormatUtil" %>
<%
	request.setAttribute("price", 12345L);
%>
<html>
<head><title>EL 함수 호출</title></head>
<body>

가격은 <b>${FormatUtil.number(price, '#,##0') }</b>원 입니다.

</body>
</html>
