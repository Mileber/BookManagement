<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="model.*"%>
<%@page import="db.DB"%>
<%@page import="java.io.InputStream" %>
<html>
<head>
    <title>ͼ����Ϣ</title>
    
	<!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">
</head>
<body>
	<% User user = (User)session.getAttribute("user"); %>
	<nav class="navbar navbar-default navbar-fixed-top">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="mainServlet">ͼ�����ϵͳ</a>
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href="addbook.jsp">����ͼ�� </a></li>
	        <li><a href="searchServlet">��ѯͼ�� </a></li>
	        <li><a href="deletebook.jsp">ɾ��ͼ��</a></li>
	      </ul>
	      
	      <ul class="nav navbar-nav navbar-right">
	      	<li><a href="#">��ǰ�û���<%=user.getName() %></a></li>
	        <li><a href="logout.jsp">�˳���¼</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>


	<div class="container">
		<div class="page-header">
			<h1>����ͼ����Ϣ</h1>
		</div>
  		<table class="table table-bordered">
  			<tr><th>���</th><th>����</th>
				<th>����</th><th>������</th>
				<th>����ʱ��</th><th>����</th><th>�޸�</th><th>ɾ��</th></tr>
  		<%
  			ArrayList al=(ArrayList)session.getAttribute("al");
  			Iterator iter=al.iterator(); 
  			while(iter.hasNext()){
  				Book book=(Book)iter.next();
  		%>
  				<tr><td><%= book.getId() %></td>
  					<td><%= book.getBookname() %></td>
  					<td><%= book.getAuthor() %></td>
  					<td><%= book.getPress() %></td>
  					<td><%= book.getPubdate() %></td>
  					<td><img src="images?id=<%= book.getId() %>" height="150"></td>
  					<td><a class="btn btn-primary" href="editsServlet?id=<%= book.getId() %>">�޸�</a></td>
  					<td><a class="btn btn-danger" href="confirm.jsp?bookname=<%= book.getBookname()%>&id=<%= book.getId() %>">ɾ��</a></td></tr>
  		<% 
  			}
  		 %>
  		</table>
	</div>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
