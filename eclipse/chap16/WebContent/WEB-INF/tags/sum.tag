<%@ tag pageEncoding="utf-8" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="begin" required="true" type="java.lang.Integer" %>
<%@ attribute name="end" required="true" type="java.lang.Integer" %>
<%@ variable name-given="sum" variable-class="java.lang.Integer" 
    scope="NESTED" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="sum" value="${0}" />
<c:forEach var="num" begin="${begin}" end="${end}">
<c:set var="sum" value="${sum + num}" />
</c:forEach>
<jsp:doBody />