<%@ page language="java" pageEncoding="gb2312"%>
<html>
<% 
	String url = "login.jsp";   //������ת�ĵ�ַ
%>
<head>
    <title>������ </title>
    <meta http-equiv=refresh content=5;url=<%=url %>>
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<h4 class="alert alert-danger" role="alert">
			<span class="label label-danger">Error</span>&nbsp;��½ʧ�ܿ�~
			<b style=color:blue><span id=jump>5</span> ���Ӻ�ҳ�潫�Զ�����������...</b>  
			��δ�Զ���ת������<a href="mainServlet">����</a>���������档
		</h4>
	</div>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script>
         function countDown(secs){
              jump.innerText=secs;
              if(--secs>0)
                       setTimeout("countDown("+secs+" )",1000);
       }
        countDown(5);
    </script>
</body>
</html>

