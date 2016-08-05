<%@ page language="java" pageEncoding="gb2312"%>
<%@page import="model.User"%>
<html>
<head>
    <title>ɾ��ͼ��</title>
    
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
		<form class="form-horizontal" action="deleteServlet" method="post">
		<div class="page-header">
			<h1>ɾ��ͼ��</h1>
		</div>
		<div class="form-group">
		<label class="col-sm-2 control-label">ͼ����</label>
		<div class="col-sm-4">
			<input class="form-control" type="text" name="id" placeholder="������ͼ����"/>
		</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-4">
				<input class="btn btn-primary btn-block" type="submit" value="�ύ"/>
			    <input class="btn btn-default btn-block" type="reset" value="����"/>
	    	</div>
	    </div>
		</form>
  	</div>
  	
  	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
