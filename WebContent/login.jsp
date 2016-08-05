<%@ page language="java" pageEncoding="gb2312"%>
<html lang="en">
  <head>
     <title>图书管理系统</title>
     
     <!-- Bootstrap -->
     <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    
  </head>
  <body>
  	<div class="container">
		<form class="form-horizontal" action="mainServlet" method="post">
			<div class="page-header">
				<h1>用户登录 <small>Login</small></h1>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="loginName">登录名：</label>
				<div class="col-sm-4">
					<input id="loginName" type="text" name="name" size=”20” class="form-control" placeholder="请填写用户名"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label" for="loginPassword">密码：</label>
				<div class="col-sm-4">
					<input id="loginPassword" type="password" name="password" size=”21” class="form-control" placeholder="请填写密码"/>
				</div>
			</div>
			<div class="form-group">
			    <div class="col-sm-offset-2 col-sm-4">
			      	<button class="btn btn-primary btn-block" type="submit">登陆</button>
					<button class="btn btn-default btn-block" type="reset">重置</button>
			    </div>
			</div>
		</form>
		<h5>没注册请先注册</h5>
		<button class="btn btn-success" data-toggle="modal" data-target="#myModal">注册</button>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">用户注册</h4>
	      </div>
	      <div class="modal-body">
		  	<form class="form-horizontal" action="registerServlet" method="post">
				<div class="form-group">
					<label class="col-sm-2 control-label">用户名：</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" name="name" placeholder="请填写用户名"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">密码：</label>
					<div class="col-sm-8">
						<input class="form-control" type="password" name="password" placeholder="请填写密码"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<input class="btn btn-primary btn-block" type="submit" value="注册"/>
						<input class="btn btn-default btn-block" type="reset" value="重置"/>
					</div>
				</div>
			</form>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
  </body>
</html>