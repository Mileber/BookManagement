<%@ page language="java" pageEncoding="gb2312"%>
<html>
<head>
	<title>ͼ�����ϵͳ</title>
	
	<!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<form class="form-horizontal" action="registerServlet" method="post">
			<h1>�û�ע��<small>Register</small></h1>
			<div class="form-group">
				<label class="col-sm-2 control-label">�û�����</label>
				<div class="col-sm-4">
					<input class="form-control" type="text" name="name" placeholder="����д�û���"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">���룺</label>
				<div class="col-sm-4">
					<input class="form-control" type="password" name="password" placeholder="����д����"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4">
					<input class="btn btn-primary btn-block" type="submit" value="ע��"/>
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
