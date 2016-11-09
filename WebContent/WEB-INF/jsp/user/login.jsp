<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="coding云用户登录">
	    <meta name="author" content="jack">
	    <link rel="shortcut icon" href="${baseUrlStatic}/icon/favicon.png">
	    <title>coding云用户登录</title>
	    <!-- Bootstrap core CSS -->
	    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	    <!-- 我们自己的css样式文件放在这里 -->
	    <link href="${baseUrlStatic}/css/blog/blog.css" rel="stylesheet">
	    <link href="${baseUrlStatic}/css/user/login.css" rel="stylesheet">
	    <link href="${baseUrlStatic}/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet">
    <body>
		<jsp:include page="/WEB-INF/jsp/blog/common/topSideBar.jsp" />
		<div class="page-header-top">
			<div class="container">
				<h1>
				登录与注册
				<small>登录用户控制台或注册账号</small>
				</h1>
			</div>
		</div>
		<div class="container">
			<div class="login pull-left">
				<form id="loginForm" class="form-horizontal" role="form">
					<div class="login-head">已经注册过了，立即登录</div>
					<div id="login-form" class="sign-in">
						  <div class="form-group">
						    <label for="inputEmail3" class="col-sm-3 control-label">用户名：</label>
						    <div class="col-sm-7">
						      <input type="text" class="form-control" name="userName" id="userName" placeholder="请输入用户名">
						    </div>
						  </div>
						  <div class="form-group">
						    <label for="inputEmail3" class="col-sm-3 control-label">密码：</label>
						    <div class="col-sm-7">
						      <input type="password" class="form-control" name="userPass" id="userPass" placeholder="请输入密码">
						    </div>
						  </div>
						  <div class="form-group">
						    <div class="col-sm-offset-3 col-sm-5">
						      <div class="checkbox pull-left" style="width: 183px;">
						        <label>
						          <input type="checkbox"> Remember me
						        </label>
						      </div>
						    </div>
						  </div>
					</div>
					<div class="login-bottom">
						<div class="col-sm-offset-3 col-sm-5">
						  <button type="button" id="loginBtn" data-loading-text="登录中..." class="btn btn-primary">登录</button>
					    </div>
						<div class="col-sm-offset-6 col-sm-6">
						  <p class="findPass pull-right">
							  找回您的
							  <a title="Recover your username or password" href="/signin/reset" tabindex="4">用户名或密码</a>
					      </p>
					    </div>
					</div>
				</form>
			</div>
			
			<div class="register pull-right">
				<form role="form">
					<div class="login-head">注册一个新的账号</div>
					<div id="login-form" class="sign-up">
						<div class="form-group">
						    <label for="exampleInputEmail1">用户名：</label>
						    <input type="text" class="form-control" name="userName" id="userName" placeholder="请输入用户名">
						    <span class="help-block">请输入5-20位字符.</span>
					    </div>
						<div class="form-group">
						    <label for="exampleInputEmail1">邮箱：</label>
						    <input type="password" class="form-control" name="userPass" id="userPass" placeholder="请输入密码">
						    <span class="help-block">该邮箱会收到确认邮件，可以用来找回密码.</span>
					    </div>
						<div class="form-group">
						    <label for="exampleInputEmail1">密码：</label>
						    <input type="password" class="form-control" name="userPass" id="userPass" placeholder="请输入密码">
						    <span class="help-block">请输入5-50位字符的密码，字符越长越安全.</span>
					    </div>
						<div class="form-group">
						    <label for="exampleInputEmail1">确认密码：</label>
						    <input type="password" class="form-control" name="userPass" id="userPass" placeholder="请输入密码">
					    </div>
						<div class="checkbox">
						    <label>
						      <input type="checkbox"> 注册成功后，给邮箱发封确认邮件！
						    </label>
					    </div>
					</div>
					<div class="login-bottom">
						<div class="col-sm-5">
						  <button type="button" id="loginBtn" data-loading-text="登录中..." class="btn btn-info">立即注册</button>
					    </div>
					</div>
				</form>
			</div>
		</div>
		
		<jsp:include page="/WEB-INF/jsp/blog/common/footerSideBar.jsp" />
        
        <!-- Bootstrap core JavaScript
	    ================================================== -->
	    <!-- 请首先引用jquery，再引用其他js文件 -->
	    <!-- Placed at the end of the document so the pages load faster -->
	    <script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	    <script type="text/javascript" src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="${baseUrlStatic}/js/common/commonFunc.js"></script>
	    <script type="text/javascript" src="${baseUrlStatic}/js/user/login.js"></script>
    </body>
</html>
