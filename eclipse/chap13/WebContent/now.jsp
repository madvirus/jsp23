<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap13.Clock"%>
<!DOCTYPE html PUBLIC 
    "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>현재 시간 출력</title>
</head>
<body>
현재 시간은 <%= new Clock().now() %> 입니다.
</body>
</html>
