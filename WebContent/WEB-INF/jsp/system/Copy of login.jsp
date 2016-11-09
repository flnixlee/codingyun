<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="coding云后台管理系统">
	    <meta name="author" content="jack">
	    <link rel="shortcut icon" href="${baseUrlStatic}/icon/favicon.png">
	    <title>coding云后台管理系统登录</title>
	    <!-- Bootstrap core CSS -->
	    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	    <!-- 我们自己的css样式文件放在这里 -->
	    <link href="${baseUrlStatic}/css/system/login.css" rel="stylesheet">
	    <link href="${baseUrlStatic}/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet">
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
    	<style>
    		.form-actions {
			    background-color: #f5f5f5;
			    border-top: 1px solid #e5e5e5;
			    margin-bottom: 20px;
			    margin-top: 20px;
			}
    	</style>
    <body>
        <div id="logo">
            <img src="${baseUrlStatic}/img/codingyun.png" alt="" />
        </div>
        <div id="loginbox">            
            <form id="loginForm" class="form-vertical"/>
				<p>请输入用户名以及密码后登录.</p>
                <div class="form-group">
                    <div class="input-group" style="margin-left: 80px;">
					    <span class="input-group-addon"><i class="icon-user"></i></span>
					    <input type="text" class="form-control" name="userName" id="userName" placeholder="请输入用户名" style="width:206px;display: inline;">
					</div>
                </div>
                <div class="form-group">
                    <div class="input-group" style="margin-left: 80px;">
					    <span class="input-group-addon"><i class="icon-lock"></i></span>
					    <input type="password" class="form-control" name="userPass" id="userPass" placeholder="请输入密码" style="width:206px;display: inline;">
					</div>
                </div>
                <div class="form-actions">
                    <span class="pull-right">
                    	<button id="loginBtn" data-loading-text="登录中..." class="btn btn-primary btn-sm" type="button" style="background-color: #363636;">登录</button>
                   	</span>
                </div>
            </form>
        </div>
        
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




<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="登录模拟">
    <meta name="author" content="jack">
    <link rel="shortcut icon" href="${baseUrlStatic}/icon/favicon.png">
    <title>系统管理员登录页面</title>
    <!-- Bootstrap core CSS -->
    <link href="${baseUrlStatic}/css/common/bootstrap.css" rel="stylesheet">
    <!-- 我们自己的css样式文件放在这里 -->
    <link href="${baseUrlStatic}/css/user/register.css" rel="stylesheet">
  </head>
  
  <body>
<!--     <div class="container"> -->
      <form id="loginForm" class="form-signin" method="post">
        <h2 class="form-signin-heading">系统管理员登录</h2>
		<span>用户名：</span><input id="userName" name="userName" type="text" class="form-control" required>
		<span>密码：</span><input id="userPass" name="userPass" type="password" class="form-control" required>
        <button id="loginBtn" data-loading-text="登录中..." class="btn btn-lg btn-primary btn-block" type="button">登录</button>
      </form>
<!--     </div> /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- 请首先引用jquery，再引用其他js文件 -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="${baseUrlStatic}/js/common/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="${baseUrlStatic}/js/common/bootstrap.min.js"></script>
    <script type="text/javascript" src="${baseUrlStatic}/js/common/commonFunc.js"></script>
    <script type="text/javascript" src="${baseUrlStatic}/js/system/login.js"></script>
  </body>
</html>
 --%>