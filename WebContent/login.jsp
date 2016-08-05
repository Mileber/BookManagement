<%@ page language="java" pageEncoding="gb2312"%>
<html lang="en">
  <head>
     <title>ͼ�����ϵͳ</title>
     
     <!-- Bootstrap -->
     <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    
  </head>
  <body>
  	<div class="container">
		<form class="form-horizontal" action="mainServlet" method="post">
			<div class="page-header">
				<h1>�û���¼ <small>Login</small></h1>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="loginName">��¼����</label>
				<div class="col-sm-4">
					<input id="loginName" type="text" name="name" size=��20�� class="form-control" placeholder="����д�û���"/>
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-sm-2 control-label" for="loginPassword">���룺</label>
				<div class="col-sm-4">
					<input id="loginPassword" type="password" name="password" size=��21�� class="form-control" placeholder="����д����"/>
				</div>
			</div>
			<div class="form-group">
			    <div class="col-sm-offset-2 col-sm-4">
			      	<button class="btn btn-primary btn-block" type="submit">��½</button>
					<button class="btn btn-default btn-block" type="reset">����</button>
			    </div>
			</div>
		</form>
		<h5>ûע������ע��</h5>
		<button class="btn btn-success" data-toggle="modal" data-target="#myModal">ע��</button>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">�û�ע��</h4>
	      </div>
	      <div class="modal-body">
		  	<form class="form-horizontal" action="registerServlet" method="post">
				<div class="form-group">
					<label class="col-sm-2 control-label">�û�����</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" name="name" placeholder="����д�û���"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">���룺</label>
					<div class="col-sm-8">
						<input class="form-control" type="password" name="password" placeholder="����д����"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<input class="btn btn-primary btn-block" type="submit" value="ע��"/>
						<input class="btn btn-default btn-block" type="reset" value="����"/>
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