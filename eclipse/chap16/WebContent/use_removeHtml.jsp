<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>

<html>
<head><title>removeHtml</title></head>
<body>
<c:set var="dateEL" value="<%= new Date() %>" />
<tf:removeHtml trim="true">
  <font size="10"> 현재 <style>시간</style>은 ${dateEL} 입니다. </font>
</tf:removeHtml>
<br>
<tf:removeHtml length="15" trail="..." trim="true">
  <u>현재 시간</u>은 <b>${dateEL}</b> 입니다.
</tf:removeHtml>
<br>
<tf:removeHtml length="15">
  <jsp:body><u>현재 시간</u>은 <b>${dateEL}</b> 입니다.</jsp:body>
</tf:removeHtml>

</body>
</html>