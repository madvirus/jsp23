<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<html>
<head><title>use_example1</title></head>
<body>

<c:set var="x" value="1"/>
jsp,x=${x}<br> <%-- (x == 1) --%>
<my:example2>
  tagbody,x=${x}<br> <%-- (x == 2), 태그 파일의 변수 x가 복사된 값 --%>

  <%-- 페이지에서 x를 바꿔도 태그 파일에 복사 안됨 --%>
  <c:set var="x" value="3"/>
  tagbody : x를 3으로 변경<br>
</my:example2>
jsp,x=${x}<br> <%-- (x == 4), 태그 종료시, 태그 파일의 변수 x가 복사된 값 --%>

</body>
</html>
