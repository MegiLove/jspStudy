<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	3초 후에 구글로 이동합니다
	<hr>
	<%
		Thread.sleep(1000);
		response.sendRedirect("http://www.google.com"); 
	%>
</body>
</html>