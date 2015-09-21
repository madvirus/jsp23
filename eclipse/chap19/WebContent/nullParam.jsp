<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>NullParameterFilter 테스트</title></head>
<body>
id 파라미터 : <%= request.getParameter("id") %> <br>
name 파라미터 : <%= request.getParameter("name") %> <br>
member 파라미터 : <%= request.getParameter("member") %> <br>
</body>
</html>