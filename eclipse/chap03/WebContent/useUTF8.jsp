<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.util.Date" %>
<%
	Date now = new Date();
%>
<html>
<head><title>현재 시간</title></head>
<body>
현재 시각: 
<%= now %>
</body>
</html>
