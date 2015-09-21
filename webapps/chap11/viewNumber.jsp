<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/el-functions.tld" %>
<%
	request.setAttribute("price", 12345);
%>
<html>
<head><title>EL 함수 호출</title></head>
<body>

가격은 <b>${elfunc:formatNumber(price, '#,##0') }</b>원 입니다.

</body>
</html>
