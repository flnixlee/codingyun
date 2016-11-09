<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn" xmlns:wb="http://open.weibo.com/wb">
  <head>
    <meta charset="utf-8">
	<title>关于Coding云</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="作为一个java程序员，我希望将自己懂得技术，包含但不限于nginx，tomcat，spring mvc，ssh等分享给大家。">
	<meta name="keywords" content="Bootstrap,java web,coding云,coding,spring mvc,nginx,阿里云">
	<meta name="author" content="Coding云">
	<meta name="application-name" content="codingyun.com">
	
	<!-- Site CSS -->
	<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<link href="/static/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet">
	<link href="/static/css/common/site.css" rel="stylesheet">
	<link href="/static/css/blog/blog.css" rel="stylesheet">
	<!-- Favicons -->
	<link rel="apple-touch-icon-precomposed" href="http://system.yingshibao.com/userDirectory/resource-file/user/image/Coding.png">
	<link rel="shortcut icon" href="http://system.yingshibao.com/userDirectory/resource-file/user/image/Coding.png">
  </head>

  <body>
  
    <jsp:include page="common/topSideBar.jsp" />
    <!-- Subhead
	================================================== -->
	<header class="jumbotron subhead">
	  <div class="container" style="text-align: center;">
	    <h1>源码拿来</h1>
	  </div>
	</header>

    <div class="container">

	    <!-- Docs nav
	    ================================================== -->
	    <div class="row">
	      <div class="col-md-2 ">
	        <div class="couplet-word">
	            <p>窝</p>
				<p>宅</p>
				<p>在</p>
				<p>家</p>
				<p>两</p>
				<p>只</p>
				<p>巧</p>
				<p>手</p>
				<p>定</p>
				<p>乾</p>
				<p>坤</p>
	        </div>
	      </div>
	
	      <div class="col-md-8">
	        <article class="post page">
	        	<section class="post-content">
	                <h2 id="">获取coding云源码动员会：</h2>
					<div id="content" style="margin-top:20px;margin-bottom:20px;">
		            	${article.content}
		            </div>
		            <div class="sidebar-module sidebar-module-inset" style="text-align: center;">
				      <h4>支付宝扫码捐赠</h4>
				      <img alt="coding云需要您的捐赠" src="${baseUrlStatic}/img/alipay.png">
				    </div>
				    <div class="panel panel-primary">
					  <div class="panel-heading">捐赠人员名单：</div>
					  <div class="panel-body">
					    <p>多谢各位java好友的理解与支持，下表为时间正序排列。</p>
<%-- 					    <p>总计：<span> ${totalMoney} </span>元，还剩<span>  ${1000 - totalMoney} </span>元即将向所有用户公开源码！</p> --%>
					  </div>
					  <!-- Table -->
			          <table class="table table-condensed table-hover" style="font-size: 13px;">
					      <thead>
					        <tr>
					          <th>姓名</th>
					          <th>金额</th>
					          <th>时间</th>
					          <th>姓名</th>
					          <th>金额</th>
					          <th>时间</th>
					        </tr>
					      </thead>
					      <tbody>
					        <c:forEach var="codingEvent" items="${codingEventList}" varStatus="status">
					        	<c:if test="${status.count%2==1}"> 
						        	<tr>
						        </c:if>
							          <td style="color:green;">${codingEvent.userName}</td>
							          <td>${codingEvent.eventMoney}</td>
							          <fmt:formatDate var="createTime" value="${codingEvent.createTime}" pattern="yyyy-MM-dd HH:mm" />
							          <td>${createTime}</td>
						        <c:if test="${status.count%2==0}"> 
						        	</tr>
						        </c:if>
					        </c:forEach>
					      </tbody>
				      </table>
					</div>
		        <!-- baidu ads -->
	      	    <script type="text/javascript">
				    /*760*90 文章下方 2014-10-22*/
				    var cpro_id = "u1770423";
			    </script>
			    <script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
		        <!-- baidu ads end-->
				<h2 id="">联系我</h2>
				<p>本站活动皆属自愿，请各位java好友知悉，谢谢支持。</p>
				<p>可以加交流qq群，捐赠完毕可以联系群主获取Coding云源码。</p>
<!-- 				<a>点击这里，保存购买信息</a> -->
				<p>QQ群: 225984052 <br />
				Mail: jack_bj@163.com</p>
	            </section>
	        </article>
	      </div>
	      
	      <div class="col-md-2 ">
	        <div class="couplet-word pull-right">
	            <p>足</p>
				<p>不</p>
				<p>出</p>
				<p>户</p>
				<p>一</p>
				<p>台</p>
				<p>电</p>
				<p>脑</p>
				<p>打</p>
				<p>天</p>
				<p>下</p>
	        </div>
	      </div>
	      
	    </div>

    </div><!-- /.container -->
    <script language="javascript" type="text/javascript" src="http://js.users.51.la/17234539.js"></script>
	<noscript>
		<a href="http://www.51.la/?17234539" target="_blank">
			<img alt="&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;" src="http://img.users.51.la/17234539.asp" style="border:none" />
		</a>
	</noscript>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- 请首先引用jquery，再引用其他js文件 -->
<!--     <script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script> -->
<!--     <script type="text/javascript" src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<%--     <script type="text/javascript" src="${baseUrlStatic}/js/common/commonFunc.js"></script> --%>
<%--     <script type="text/javascript" src="${baseUrlStatic}/js/system/index.js"></script> --%>
    
    <!-- Placed at the end of the document so the pages load faster -->
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="http://cdn.bootcss.com/unveil/1.3.0/jquery.unveil.min.js"></script>
	<script src="http://cdn.bootcss.com/scrollup/2.4.0/jquery.scrollUp.min.js"></script>
	<script src="http://cdn.bootcss.com/toc/0.3.2/toc.min.js"></script>
	<script src="http://static.bootcss.com/www/assets/js/site.min.js"></script>
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript">
	    $(document).ready(function(){
	    	$("#blog-masthead").find('a').removeClass('active');
	    	$("#blog-masthead .blog-nav .about").addClass('active');
	    });
    </script>
  </body>
</html>

