<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page buffer="2kb" %>
<html>
<head><title>fromBufferOF의 제목</title></head>
<body>
<% for (int i = 0 ; i < 512 ; i++) { %>
<%= i %>
<% } %>
<jsp:forward page="/to/to.jsp" />
</body>
</html>
