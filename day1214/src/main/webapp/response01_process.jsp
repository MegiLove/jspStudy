<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="com.sist.dao.MemberDAO"/>

<%
	request.setCharacterEncoding("utf-8");
	String userid= request.getParameter("id");
	String password= request.getParameter("password"); 
	
	if(dao.isMember(userid, password)){
		response.sendRedirect("response01_success.jsp"); 
	}else{
		response.sendRedirect("response01_failed.jsp"); 
	}
	
	/*
	if(userid.equals("관리자") && password.equals("1234")){
		response.sendRedirect("response01_success.jsp"); 
	}else{
		response.sendRedirect("response01_failed.jsp"); 
	}
	*/
%>
</body>
</html>