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
	request.setCharacterEncoding("utf-8");
	String userid=request.getParameter("id");
	String password=request.getParameter("passwd");
	String username=request.getParameter("name");
	String phone1=request.getParameter("phone1");
	String phone2=request.getParameter("phone2");
	String phone3=request.getParameter("phone3");
	String gender=request.getParameter("sex");
	String []hobby=request.getParameterValues("hobby");
	String city=request.getParameter("city");
	String comment=request.getParameter("comment");
%>
<p>아이디: <%=userid %></p>
<p>비밀번호: <%=password %></p>
<p>이름: <%=username %></p>
<p>전화: <%=phone1%>-<%=phone2%>-<%=phone3%></p>
<p>성별: <%=gender %></p>
<p>취미: <%
if(hobby!=null){
for(String h:hobby){
	out.println(h+" ");
	}
}
%></p>
<p>지역: <%=city %></p>
<p>가입인사: <%=comment %></p>

</body>
</html>