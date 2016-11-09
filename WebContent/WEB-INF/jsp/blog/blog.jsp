<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="coding云博客首页，作为一个java程序员，coding云希望将自己懂得技术，包含但不限于nginx，tomcat，spring mvc，ssh等分享给大家。">

    <meta name="keywords" content="coding云,coding,java网站,阿里云"/>
    <meta name="author" content="coding云">
    <meta property="wb:webmaster" content="5001cedcbbd01401" />
    <link rel="apple-touch-icon-precomposed" href="http://system.yingshibao.com/userDirectory/resource-file/user/image/Coding.png">
	<link rel="shortcut icon" href="http://system.yingshibao.com/userDirectory/resource-file/user/image/Coding.png">

    <title>coding云</title>

    <!-- Bootstrap core CSS -->
    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<link href="${baseUrlStatic}/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${baseUrlStatic}/css/blog/blog.css?version=${version}" rel="stylesheet">
    <!-- 新浪微博评论箱 -->
	<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=17994897" type="text/javascript" charset="utf-8"></script>
  </head>

  <body>
  
    <jsp:include page="common/topSideBar.jsp" />

    <div class="container">

      <jsp:include page="common/blogHeader.jsp" />

      <div class="row">

        <div class="col-sm-8 blog-main">
        	<!-- 阿里云优惠券推广位 -->
        	<!-- 百度广告位 -->
        	<div style="margin-bottom: 15px;">
<!--         		<a href="http://s.click.taobao.com/t?e=m%3D2%26s%3D%2FLxg%2FpQUGpIcQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAjN8WyfMApDeUICy6uSC4THPmk5F76YCnAFBPesJXGs2bk%2B8hdThBUQDSWCaAf%2FTqedn1BbglxZYxUhy8exlzcq9AmARIwX9K%2BnbtOD3UdznPV1H2z0iQv9NkKVMHClW0QbMqOpFMIvnvjQXzzpXdTHGJe8N%2FwNpGw%3D%3D" target="_blank"> -->
<!--         			<img src="http://gtms02.alicdn.com/tps/i2/TB12KUWFFXXXXXwXpXXzAFS0VXX-640-90.jpeg" /> -->
<!--         		</a> -->
<!--         		<script type="text/javascript"> -->
<!-- 				    /*728*90 创建于 2014-10-21*/ -->
<!-- 				    var cpro_id = "u1769629"; -->
<!-- 				</script> -->
<!-- 				<script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script> -->
				
				<!-- 百度 ads -->
	           	<script type="text/javascript">
				    /*728*15 创建于 2014-10-21*/
				    var cpro_id = "u1769646";
				</script>
				<script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
			    <!-- 百度 ads end-->
        	</div>
			<form id="courseListForm" action="/">
				<c:forEach var="article" items="${articleList}" varStatus="status">
		          <div class="blog-post">
		          	 <div style="display:inline-block;vertical-align:top;margin-top: 2px;margin-right: 5px;">
						<a href='/category/${article.category}' style="color: #4c4c4c;" >
							<div class="tooltip-inner" style="padding: 3px 15px;"> ${article.categoryName } </div>
						</a>
		          	 </div>
		          	 <div style="display:inline-block;vertical-align:top;">
		          	 	<h3 class="blog-post-title" >
<%-- 		          	 		<c:if test="${article.author == 'coding云' }"> --%>
<%-- 								<img style="width: 25px;margin-top: -5px;" alt="原创" src="${baseUrlStatic}/img/ico_Original.png"> --%>
<%-- 		          	 		</c:if> --%>
<%-- 		          	 		<c:if test="${article.author != 'coding云' }"> --%>
<%-- 								<img style="width: 25px;margin-top: -5px;" alt="转载" src="${baseUrlStatic}/img/ico_Repost.png"> --%>
<%-- 		          	 		</c:if> --%>
		          	 		<a target="_blank" href='/article/${article.id}.html' style="color: #4c4c4c;" ><span id="article-title">${article.title}</span></a>
		          	 	</h3>
		          	 </div>
		             <fmt:formatDate var="publishTime" value="${article.publishTime}" pattern="yyyy-MM-dd HH:mm" />
		             <p class="blog-post-meta" style="color: #ca0000;">
		            	<i class="icon-calendar"></i> <span id="publishTime" style="margin-right:10px;">${publishTime}</span> |
		            	<i class="icon-user"></i> <span id="author" style="margin-right:10px;">${article.author} </span> |
		            	<i class="icon-book"></i> <span id="userReadCount" style="margin-right:10px;">${article.userReadCount}次阅读</span> |
		            	<i class="icon-comments"></i> <span class="ds-thread-count" data-thread-key="${article.id}"></span>
		           	 </p>
		             <div id="content">
		          		${article.contentDesc}
		             </div>
		             <div class="clickforWhole" style="font-size: 12px;border-bottom: 1px solid #ddd;padding-bottom:25px;padding-top:10px;">
		             	<span class="glyphicon glyphicon-tag" aria-hidden="true"></span> 
		             	<c:forEach var="tagName" items="${article.tagList }" varStatus="statusTag">
		             		<a href='/tag/${tagName}'>${tagName }</a>
		             		<c:if test="${statusTag.last == false}">
		             			,
		             		</c:if>
		             	</c:forEach>
		          		<a class="pull-right" style="font-size:18px;" target="_blank" href='/article/${article.id}.html'>阅读全文...</a>
		             </div>
		          </div><!-- /.blog-post -->
		        </c:forEach>
				<!-- google ads -->
			    <!-- google ads end-->
	
	          	<jsp:include page="/WEB-INF/jsp/blog/common/blogPage.jsp" />
            </form>

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
    <script type="text/javascript" src="${baseUrlStatic}/js/blog/article.js?ver=${version}"></script>
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript">
    	var categoryCode = "${categoryCode}";
    	var tagCode = "${tagCode}";
    	var tagName = "${tagName}";
	    $(document).ready(function(){
	    	$("#blog-masthead").find('a').removeClass('active');
	    	$("#blog-masthead .blog-nav .codingyun").addClass('active');
	    	if(categoryCode > 0){
	    		$('#courseListForm').attr('action', '/category/' + categoryCode);
	    	}
	    	if(tagCode > 0){
	    		$('#courseListForm').attr('action', '/tag/' + tagName);
	    	}
	    });
    </script>
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
  </body>
</html>

