<%@ page language="java" pageEncoding="gb2312"%>
<html>
<head>
    <title>����ȷ�� </title>
    
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<% 
		request.setCharacterEncoding("gb2312");
		response.setContentType("gb2312");
		String bookname = new String(request.getParameter("bookname").getBytes("iso8859-1"),"gb2312");
		String id = (String)request.getParameter("id");
	%>
		<h4 class="alert alert-warning" role="alert">
			<span class="label label-warning">Warning</span>&nbsp;�Ƿ�Ҫɾ��ͼ�顶<%= bookname %>��
		</h4>
		<a class="btn btn-danger" href="deleteServlet?id=<%= id %>">��</a>
		<a class="btn btn-primary" href="main.jsp">��</a>
	</div>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
</body>
</html>

