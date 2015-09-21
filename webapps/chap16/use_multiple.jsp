<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>multiple 태그 사용</title></head>
<body>
<c:set var="num" value="${1}" />
<tf:multiple count="10">
${num}<br/>
<c:set var="num" value="${num+1}" />
</tf:multiple>

</body>
</html>