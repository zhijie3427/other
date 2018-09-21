<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="f" uri="/spring-form"%>
<%@ taglib prefix="s" uri="/spring"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="css/login.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/login.css" rel="stylesheet" type="text/css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/content.js"></script>
<script src="js/ajax-util.js"></script>
<script src="js/plugins/validate/jquery.validate.min.js"></script>
<script src="js/plugins/validate/messages_zh.min.js"></script>
<script src="js/plugins/layer/layer.min.js"></script>
<script>
	if (window.top !== window.self) {
		window.top.location = window.location;
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#login").on('click', function() {
			$("#form").submit();
		});
	});
</script>
</head>
<body class="signin">
	<div id="big" class="signinpanel">
		<div class="row">
			<div class="col-sm-6">
				<div class="signin-info">
					<div class="logopanel m-b">
						<h1>HBRSYS</h1>
					</div>
					<div class="m-b"></div>
					<h3>
						欢迎使用 <strong>人事管理系统</strong>
					</h3>
					<ul class="m-b">
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> Spring</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i>
							SpringMVC</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> mybatis</li>
						<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i>
							bootstrap</li>
					</ul>
				</div>
			</div>
			<div class="col-sm-6">
				<form id="form"  action="login" method="post">
					<div id="error">${requestScope.message }</div>
					<h3 class="text-center">用户登录</h3>
					<p class="m-t-md text-center">欢迎登录人事管理系统</p>
					<div>
						<input type="text" name="loginName" class="form-control uname"
							placeholder="账号" />
					</div>
					<div>
						<input type="password" name="password"
							class="form-control pword m-b" placeholder="密码" />
					</div>
					<div id="submit">
						<input type="submit" class="btn btn-login btn-block" value="登录" />
					</div>
				</form>
			</div>
		</div>
		<div class="signup-footer">
			<div class="pull-left">&copy; 2018 All Rights Reserved. Human</div>
		</div>
	</div>
</body>
</html>