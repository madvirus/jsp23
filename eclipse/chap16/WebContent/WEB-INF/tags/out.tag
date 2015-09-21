<%@ tag body-content="tagdependent" pageEncoding="utf-8" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:doBody var="bodyText" />
<c:out value="${bodyText}" escapeXml="true" />