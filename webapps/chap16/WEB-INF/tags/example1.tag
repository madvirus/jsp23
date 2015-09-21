<%@ tag body-content="scriptless" pageEncoding="utf-8" %>
<%@ variable name-given="x" scope="AT_BEGIN" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
tagfile,x=${x}<br> <%-- (x == null), 태그 파일 내에서의 x 변수 --%>
<c:set var="x" value="2"/>
tagfile : x를 2로 변경<br>
<jsp:doBody/> <%-- 몸체 내용을 처리하기 전에 변수 x가 페이지에 복사 --%>
tagfile,x=${x}<br> <%-- (x == 2), 페이지에서 같은 이름의 변수 값을 바꿔도 반영 안 됨 --%>
<c:set var="x" value="4"/> <%-- 태그 종료 시 변수 x가 페이지에 복사 --%>
tagfile : x를 4로 변경<br>