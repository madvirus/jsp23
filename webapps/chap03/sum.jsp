<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>합 구하기</title></head>
<body>
<%
	int sum = 0;
	for (int i = 1 ; i <= 10 ; i++) {
		sum = sum + i;
	}
%>
1 부터 10까지의 합은 <%= sum %> 입니다.

<br>

<%
	int sum2 = 0;
	for (int i = 11 ; i <= 20 ; i++) {
		sum2 = sum2+ i;
	}
%>
11 부터 20까지의 합은 <%= sum2 %> 입니다.
</body>
</html>
