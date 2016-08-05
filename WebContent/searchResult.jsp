<%@ page language="java" pageEncoding="gb2312"%>
<%@ page import="java.util.List,java.util.ArrayList,java.util.Iterator"%>
<%@page import="model.*"%>
<%@page import="db.DB"%>
<html>
<head>
	<title>查询结果</title>
    
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
	      <a class="navbar-brand" href="main.jsp">图书管理系统</a>
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href="addbook.jsp">新增图书 </a></li>
	        <li><a href="searchServlet">查询图书 </a></li>
	        <li><a href="deletebook.jsp">删除图书</a></li>
	      </ul>
	      
	      <ul class="nav navbar-nav navbar-right">
	      	<li><a href="#">当前用户：<%=user.getName() %></a></li>
	        <li><a href="logout.jsp">退出登录</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	
	<div class="container">
		<form class="navbar-form" action="SearchServlet" method="post">
	        <div class="form-group">
	          <input name="search_id" type="text" class="form-control" placeholder="请输入编号">
	          <input name="search_bookname" type="text" class="form-control" placeholder="请输入书名关键字">
	          <input name="search_author" type="text" class="form-control" placeholder="请输入作者">
	          <input name="search_press" type="text" class="form-control" placeholder="请输入出版社">
	          <input name="search_pubdate" type="text" class="form-control" placeholder="请输入出版日期">
	        </div>
	        <button type="submit" class="btn btn-primary">搜索</button>
	    </form>
		<div class="page-header">
			<h1>查询图书信息</h1>
		</div>
  		<table class="table table-bordered">
  			<tr><th>编号</th><th>书名</th>
				<th>作者</th><th>出版社</th>
				<th>出版时间</th><th>封面</th><th>修改</th><th>删除</th></tr>
  		<%
  			ArrayList al2=(ArrayList)request.getAttribute("al2");
  			Iterator iter2=al2.iterator();
  			while(iter2.hasNext()){
  				Book book=(Book)iter2.next();
  		%>
  				<tr><td><%= book.getId() %></td>
  					<td><%= book.getBookname() %></td>
  					<td><%= book.getAuthor() %></td>
  					<td><%= book.getPress() %></td>
  					<td><%= book.getPubdate() %></td>
  					<td><img src="images?id=<%= book.getId() %>" height="150"></td>
  					<td><a class="btn btn-primary" href="editsServlet?id=<%= book.getId() %>">修改</a></td>
  					<td><a class="btn btn-danger" href="confirm.jsp?bookname=<%= book.getBookname()%>&id=<%= book.getId() %>">删除</a></td></tr>
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