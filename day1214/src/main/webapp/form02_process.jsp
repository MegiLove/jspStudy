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
	
%>
<jsp:useBean id="m" class="com.sist.vo.MemberVO"/>
<jsp:setProperty property="*" name="m"/>
<p>아이디: <%=m.getId() %></p>
<p>비밀번호: <%=m.getPasswd() %></p>
<p>이름: <%=m.getName() %></p>
<p>전화: <%=m.getPhone1()%>-<%=m.getPhone2()%>-<%=m.getPhone3()%></p>
<p>성별: <%=m.getSex() %></p>
<p>취미: <%
if(m.getHobby()!=null){
for(String h:m.getHobby()){
	out.println(h+" ");
	}
}
%></p>
<p>지역: <%=m.getCity() %></p>
<p>가입인사: <%=m.getComment() %></p>

</body>
</html>