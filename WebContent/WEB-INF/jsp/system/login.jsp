<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="coding云后台管理系统">
	    <meta name="author" content="jack">
	    <link rel="shortcut icon" href="${baseUrlStatic}/icon/favicon.png">
	    <title>coding云后台管理系统登录</title>
	    <!-- Bootstrap core CSS -->
	    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	    <!-- 我们自己的css样式文件放在这里 -->
	    <link href="${baseUrlStatic}/loginCss/adminia.css" rel="stylesheet">
	    <link href="${baseUrlStatic}/loginCss/adminia-responsive.css" rel="stylesheet">
	    <link href="${baseUrlStatic}/loginCss/login.css" rel="stylesheet">
	    <link href="${baseUrlStatic}/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet">
    	<style>
    		.form-actions {
			    background-color: #f5f5f5;
			    border-top: 1px solid #e5e5e5;
			    margin-bottom: 20px;
			    margin-top: 20px;
			}
			label {
			    font-weight: normal;
			}
    	</style>
    <body>
		<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="#" style="color: #ffffff;font-weight: 600;">系统管理员登陆</a>
	        </div>
<!-- 	        <div id="navbar" class="navbar-collapse collapse"> -->
<!-- 	          <ul class="nav navbar-nav"> -->
<!-- 	            <li class="active"><a href="#">Home</a></li> -->
<!-- 	            <li><a href="#about">About</a></li> -->
<!-- 	            <li><a href="#contact">Contact</a></li> -->
<!-- 	            <li class="dropdown"> -->
<!-- 	              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a> -->
<!-- 	              <ul class="dropdown-menu" role="menu"> -->
<!-- 	                <li><a href="#">Action</a></li> -->
<!-- 	                <li><a href="#">Another action</a></li> -->
<!-- 	                <li><a href="#">Something else here</a></li> -->
<!-- 	                <li class="divider"></li> -->
<!-- 	                <li class="dropdown-header">Nav header</li> -->
<!-- 	                <li><a href="#">Separated link</a></li> -->
<!-- 	                <li><a href="#">One more separated link</a></li> -->
<!-- 	              </ul> -->
<!-- 	            </li> -->
<!-- 	          </ul> -->
<!-- 	          <ul class="nav navbar-nav navbar-right"> -->
<!-- 	            <li><a href="../navbar/">Default</a></li> -->
<!-- 	            <li class="active"><a href="./">Static top</a></li> -->
<!-- 	            <li><a href="../navbar-fixed-top/">Fixed top</a></li> -->
<!-- 	          </ul> -->
<!-- 	        </div>/.nav-collapse -->
	      </div>
	    </nav>
		
		<div id="login-container">
			
			
			<div id="login-header"  style="height: 50px;">
				
				<h3 style="margin-top: 8px;">登录</h3>
				
			</div> <!-- /login-header -->
			
			<div id="login-content" class="clearfix">
				<form id="loginForm">
					<fieldset style="height: 150px;">
						<div class="form-group">
							<label for="exampleInputEmail1">用户名</label>
	  							<input type="text" class="form-control" name="userName" id="userName" placeholder="请输入用户名">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">密码</label>
	  							<input type="password" class="form-control" name="userPass" id="userPass" placeholder="请输入密码">
						</div>
					</fieldset>
					
					<div id="remember-me" class="pull-left">
						<input type="checkbox" name="remember" id="remember"/>
						<label id="remember-label" for="remember" style="top: -2px;">Remember Me</label>
					</div>
					
					<div class="pull-right">
						<button id="loginBtn" data-loading-text="登录中..." class="btn btn-warning btn-large" type="button">登录</button>
					</div>
				</form>
			</div> <!-- /login-content -->
				
				
				<div id="login-extra">
					
					<p>Don't have an account? <a href="javascript:;">Sign Up.</a></p>
					
					<p>Remind Password? <a href="forgot_password.html">Retrieve.</a></p>
					
				</div> <!-- /login-extra -->
			
		</div> <!-- /login-wrapper -->
        
        <!-- Bootstrap core JavaScript
	    ================================================== -->
	    <!-- 请首先引用jquery，再引用其他js文件 -->
	    <!-- Placed at the end of the document so the pages load faster -->
	    <script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	    <script type="text/javascript" src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="${baseUrlStatic}/js/common/commonFunc.js"></script>
	    <script type="text/javascript" src="${baseUrlStatic}/js/system/login.js"></script>
    </body>
</html>
