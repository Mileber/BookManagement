<%@ page language="java" pageEncoding="gb2312"%>
<html>
<% 
	String url = "login.jsp";   //设置跳转的地址
%>
<head>
    <title>出错啦 </title>
    <meta http-equiv=refresh content=5;url=<%=url %>>
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<h4 class="alert alert-danger" role="alert">
			<span class="label label-danger">Error</span>&nbsp;登陆失败咯~
			<b style=color:blue><span id=jump>5</span> 秒钟后页面将自动返回主界面...</b>  
			如未自动跳转，请点击<a href="mainServlet">这里</a>返回主界面。
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

