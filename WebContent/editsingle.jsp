<%@ page language="java" pageEncoding="gb2312"%>
<%@page import="model.*" %>
<html>
<head>
    <title>����ͼ��</title>
    
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">
    <script> 
   function PreviewImage(imgFile) 
   { 
    var pattern = /(\.*.jpg$)|(\.*.png$)|(\.*.jpeg$)|(\.*.gif$)|(\.*.bmp$)/;      
    if(!pattern.test(imgFile.value)) 
    { 
     alert("ϵͳ��֧��jpg/jpeg/png/gif/bmp��ʽ����Ƭ��");  
     imgFile.focus(); 
    } 
    else 
    { 
     var path; 
     if(document.all)//IE 
     { 
      imgFile.select(); 
      path = document.selection.createRange().text; 
      document.getElementById("imgPreview").innerHTML=""; 
      document.getElementById("imgPreview").style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='scale',src=\"" + path + "\")";//ʹ���˾�Ч�� 
     } 
     else//FF 
     { 
      path = URL.createObjectURL(imgFile.files[0]);
      document.getElementById("imgPreview").innerHTML = "<img src='"+path+"' height='200'/>"; 
     } 
    } 
   } 
  </script> 
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
	<% Book book = (Book)request.getAttribute("book"); %>
		<form class="form-horizontal" action="editServlet?id=<%=book.getId() %>" method="post" enctype="multipart/form-data">
			<div class="page-header">
				<h1>����ͼ����Ϣ<small>������Ŀ��Ϊ������</small></h1>
			</div>
			<div class="col-sm-7">
				<div class="form-group">
					<label class="col-sm-2 control-label">���</label>
					<div class="col-sm-8">
						<p class="form-control"><%= book.getId() %></p>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">����</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" name="bookname" placeholder="<%= book.getBookname() %>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">����</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" name="author" placeholder="<%= book.getAuthor()%>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">������</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" name="press" placeholder="<%= book.getPress()%>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">����ʱ��</label>
					<div class="col-sm-8">
						<input class="form-control" type="text" name="pubdate" placeholder="<%= book.getPubdate()%>"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">ͼ�����</label>
					<div class="col-sm-8">
						<input class="form-control" type="file" name="cover" onchange='PreviewImage(this)'  placeholder="���ϴ��鼮���ͼƬ"/>
						<br>
					</div>
				</div>
		  		<br>
		  	    <div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
				  		<input class="btn btn-primary btn-block" type="submit" value="�ύ"/>
				  	    <input class="btn btn-default btn-block" type="reset" value="����"/>
				  	</div>
				</div>
			</div>
			<div class="col-sm-2" id="imgPreview"> 
				<img src="images?id=<%= book.getId() %>" height="200">
			</div>
	  	</form>
  	</div>
  	
  	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
