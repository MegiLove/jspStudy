<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	
		out.print("현재 설정된 쿠키의 개수 ==>" + cookies.length + "<br>");
		out.print("===================================<br>");
		for(int i=0; i<cookies.length; i++){
			out.print("설정된 쿠키이름 : " + cookies[i].getName()+"<br>");
			out.print("설정된 쿠키값 : " + cookies[i].getValue()+"<br>");
			out.println("-----------------------------------<br>");
		}
	
%>
</body>
</html>







