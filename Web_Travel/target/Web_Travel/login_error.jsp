<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>注册状态页面</title>
        <style type="text/css">
			html{
				height: 100%;
				background: linear-gradient(to bottom,#acb6e5,#86fde8);
			}
			p{
				text-align: center;
				font-size: 50px;
				margin: 0 auto;
				margin-top: 300px;
			}
			#span{
				color: #f52443;
			}
		</style>
    </head>
	<body>
		<p>
			<%=request.getAttribute("msg")%> <br>
			<span id="span"></span>秒后<br>
			请重新登录！
		</p>
		<script type="text/javascript">
			var span1 = document.getElementById('span');
			var n = 5;
			span1.innerHTML = n;
			function time(){
				n --;
				if(n == 0){
					this.location = 'login.jsp';
					clearInterval(t);
				}
				span1.innerHTML = n;
			}
			var t = setInterval(() => {
				time()
			},1000);
			time();
		</script>
    </body>
</html>