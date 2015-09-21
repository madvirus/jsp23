<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>옵션 선택 화면</title></head>
<body>

<form action="<%= request.getContextPath() %>/view.jsp">

보고 싶은 페이지 선택:
	<select name="code">
		<option value="A">A 페이지</option>
		<option value="B">B 페이지</option>
		<option value="C">C 페이지</option>
	</select>

<input type="submit" value="이동">

</form>

</body>
</html>
