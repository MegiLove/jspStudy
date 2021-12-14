<%@page import="com.sist.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style type="text/css">
  	.box{
  		text-align: center;
  	}
  </style>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:useBean id="dao" class="com.sist.dao.ProductRepository"/>
	<%
		String id= request.getParameter("id");
		Product product=dao.getProductById(id);
	%>
	
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">��ǰ ����</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %></p>		
				<p><b>��ǰ�ڵ�</b>: <span class="badge badge-danger"><%=product.getProductId()%></span></p>
				<p><b>������</b>: <%=product.getManufacturer()%></p>
				<p><b>�з�</b>: <%=product.getCategory()%></p>
				<p><b>��� ����</b>: <%=product.getUnitInStock()%></p>
				<h3><%=product.getUnitPrice()%>��</h3>
				<p><a href="#" class="btn btn-info">��ǰ �ֹ� &raquo;</a></p>
				<p><a href="products.jsp" class="btn btn-secondary">��ǰ ��� &raquo;</a></p>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>




