<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>

<html>
<head><title>select 태그 사용</title></head>
<body>

<tf:select name="code" rgb="RGB 모드" wb="흑백 모드" />

<tf:select name="genre" rock="락" ballad="발라드" metal="메탈" />

</body>
</html>