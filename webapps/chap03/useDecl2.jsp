<%@ page contentType = "text/html; charset=utf-8" %>
<%!
	public int add(int a, int b) {
		int c = a + b;
		return c;
	}

	public int subtract(int a, int b) {
		int c = a - b;
		return c;
	}
%>
<html>
<head><title>스크립트릿에서 선언부 사용하기</title></head>
<body>
<%
	int value1 = 3;
	int value2 = 9;
	
	int addResult = add(value1, value2);
	int subtractResult = subtract(value1, value2);
%>

<%= value1 %> + <%= value2 %> = <%= addResult %>
<br>
<%= value1 %> - <%= value2 %> = <%= subtractResult %>

</body>
</html>
