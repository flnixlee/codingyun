<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">

  <head>
    
<meta charset="utf-8">
<title>Coding云网站地图</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="coding云网站地图,sitemap">
<meta name="keywords" content="coding云,sitemap,网站地图">
<meta name="author" content="Coding云">
<meta name="application-name" content="codingyun.com">

<!-- Site CSS -->
<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<link href="/static/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet">
<link href="/static/css/common/site.css" rel="stylesheet">
<!-- Custom styles for this template -->
    <link href="/static/css/blog/blog.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="/assets/js/html5shiv.min.js?v=0373baa5fd"></script>
  <script src="/assets/js/respond.min.js?v=0373baa5fd"></script>
<![endif]-->

<!-- Favicons -->
<link rel="apple-touch-icon-precomposed" href="http://system.yingshibao.com/userDirectory/resource-file/user/image/Coding.png">
<link rel="shortcut icon" href="http://system.yingshibao.com/userDirectory/resource-file/user/image/Coding.png">

<script>
  var _hmt = _hmt || [];
</script>
</head>
  <body class="post-template page">
	<jsp:include page="/WEB-INF/jsp/blog/common/topSideBar.jsp" />
	<!-- Subhead
	================================================== -->
	<header class="jumbotron subhead">
	  <div class="container">
	    <h1>网站地图</h1>
	    <p class="lead">这里是coding云的网站地图，在这里，您可以找到每个网页。</p>
	  </div>
	</header>
  <div class="container">
  	 <div class="row">
	  	 <div class="col-sm-4">
	  	 	<div class="panel panel-default">
			  <!-- Default panel contents -->
			  <div class="panel-heading">
				  	博客
			  </div>
			  <!-- List group -->
			  <div class="list-group">
			  	  <c:forEach var="article" items="${articleList}" varStatus="status">
			  	  	<a href='/article/${article.id}.html' class="list-group-item ">${article.title}</a>
			      </c:forEach>
			  </div>
			</div>
	  	 </div>
	  	 <div class="col-sm-4">
	  	 	<div class="panel panel-default">
			  <!-- Default panel contents -->
			  <div class="panel-heading">
				  	分类目录
			  </div>
			  <!-- List group -->
			  <div class="list-group">
				  <a href="/about/about.html" class="list-group-item ">关于</a>
			  </div>
			</div>
	  	 </div>
  	 </div>

     <div class="row">
        <div class="col-sm-8 blog-main">
        	<!-- 阿里云优惠券推广位 -->
        	<div style="margin-bottom: 15px;">
<!--         		<a href="http://s.click.taobao.com/t?e=m%3D2%26s%3D1SP%2BYcrwvUUcQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAr5myjbCyDIJ66gI2QqyOEDPmk5F76YCnAFBPesJXGs2bk%2B8hdThBUSHrj9Leaj0X%2Bdn1BbglxZYxUhy8exlzcq9AmARIwX9K2Zg%2BdzdQFOwfMRvoxSVDSdLyrb2g0H2G5JcxXijM%2BwneEHpPTskRHlFYAAV9gnNuPTL%2BS6jTvPzN7YQp05KcLcunFBf1wJnpg%3D%3D" target="_blank"> -->
<!--         			<img src="http://gtms02.alicdn.com/tps/i2/TB11cZ3FFXXXXbLXXXXSNBf1pXX-640-90.jpg" /> -->
<!--         		</a> -->
        		<a href="http://s.click.taobao.com/t?e=m%3D2%26s%3D%2FLxg%2FpQUGpIcQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAjN8WyfMApDeUICy6uSC4THPmk5F76YCnAFBPesJXGs2bk%2B8hdThBUQDSWCaAf%2FTqedn1BbglxZYxUhy8exlzcq9AmARIwX9K%2BnbtOD3UdznPV1H2z0iQv9NkKVMHClW0QbMqOpFMIvnvjQXzzpXdTHGJe8N%2FwNpGw%3D%3D" target="_blank">
        			<img src="http://gtms02.alicdn.com/tps/i2/TB12KUWFFXXXXXwXpXXzAFS0VXX-640-90.jpeg" />
        		</a>
        	</div>

        </div><!-- /.blog-main -->
      </div><!-- /.row -->
  </div>


  <jsp:include page="/WEB-INF/jsp/blog/common/footerSideBar.jsp" />		

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/unveil/1.3.0/jquery.unveil.min.js"></script>
<script src="http://cdn.bootcss.com/scrollup/2.4.0/jquery.scrollUp.min.js"></script>
<script src="http://cdn.bootcss.com/toc/0.3.2/toc.min.js"></script>
<script src="http://static.bootcss.com/www/assets/js/site.min.js"></script>

</body>
</html>

