<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="com.sist.vo.Person"/>
	<%=person.getId() %><br>
	<%=person.getName()%><br>
	<hr>
	<%
	out.print(person.getId()+"<br>");
	out.print(person.getName()+"<br>");
	
	%>
	<hr>
	<jsp:getProperty property="id" name="person"/><br>
	<jsp:getProperty property="name" name="person"/><br>
</body>
</html>