<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn" xmlns:wb="http://open.weibo.com/wb">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Coding云致力于帮助程序员们摘掉苦逼的昵称，为了实现这个理想，我们需要您的帮助，您的任何意见都会让我们做到更好。">
    <meta name="author" content="coding云">
    <meta property="wb:webmaster" content="5001cedcbbd01401" />
    <link rel="icon" href="../../favicon.ico">

    <title>留下您的宝贵意见-coding云</title>

    <!-- Bootstrap core CSS -->
    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<!-- 新浪微博评论箱 -->
	<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=17994897" type="text/javascript" charset="utf-8"></script>
    <!-- Custom styles for this template -->
    <link href="${baseUrlStatic}/css/common/site.css" rel="stylesheet">
    <link href="${baseUrlStatic}/css/blog/blog.css" rel="stylesheet">
  </head>

  <body>
  
    <jsp:include page="common/topSideBar.jsp" />
    <!-- Subhead
	================================================== -->
	<header class="jumbotron subhead">
	  <div class="container">
	    <h1>留下您宝贵的意见</h1>
	    <p class="lead" style="margin-right: 380px;">Coding云致力于帮助程序员们摘掉苦逼的昵称，为了实现这个理想，我们需要您的帮助，您的任何意见都会让我们做到更好。</p>
	  </div>
	</header>

    <div class="container">
      <div class="row">
      
        <div class="col-sm-8 blog-main">
        	<div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more">分享到：</a><a title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone">QQ空间</a><a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina">新浪微博</a><a title="分享到腾讯微博" href="#" class="bds_tqq" data-cmd="tqq">腾讯微博</a><a title="分享到人人网" href="#" class="bds_renren" data-cmd="renren">人人网</a><a title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin">微信</a></div>
<script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":["qzone","tsina","weixin","renren","tqq","tqf","douban","sqq","ty","fbook","twi"],"bdPic":"","bdStyle":"0","bdSize":"16"},"share":{"bdSize":16},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>

            <!-- 多说评论框 start -->
			<div class="ds-thread" data-thread-key="leaveYourMind" data-title="留下你的想法" 
				data-url="http://www.codingyun.com/blog/leaveYourMind" data-order="desc" data-limit="15"></div>
			<!-- 多说评论框 end -->
			<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
			<script type="text/javascript">
			var duoshuoQuery = {short_name:"codingyun"};
				(function() {
					var ds = document.createElement('script');
					ds.type = 'text/javascript';ds.async = true;
					ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
					ds.charset = 'UTF-8';
					(document.getElementsByTagName('head')[0] 
					 || document.getElementsByTagName('body')[0]).appendChild(ds);
				})();
				</script>
			<!-- 多说公共JS代码 end -->
        </div><!-- /.blog-main -->
  		<jsp:include page="common/rightSideBar.jsp" />
      </div><!-- /.row -->
    </div><!-- /.container -->

    <jsp:include page="common/footerSideBar.jsp" />

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- 请首先引用jquery，再引用其他js文件 -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${baseUrlStatic}/js/common/commonFunc.js"></script>
    <script type="text/javascript" src="${baseUrlStatic}/js/system/index.js"></script>
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript">
	    $(document).ready(function(){
	    	$("#blog-masthead").find('a').removeClass('active');
	    	$("#blog-masthead .blog-nav .leaveYourMind").addClass('active');
	    });
    </script>
  </body>
</html>

