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
	  <div class="container">
	    <h1>关于Coding云</h1>
	    <p class="lead">Coding云致力于帮助程序员们摘掉苦逼的昵称</p>
	  </div>
	</header>

    <div class="container">

	    <!-- Docs nav
	    ================================================== -->
	    <div class="row">
	      <div class="col-md-3 ">
	        <div id="toc" class="bc-sidebar">
	          
	        </div>
	      </div>
	
	      <div class="col-md-9">
	        <article class="post page">
	        	<section class="post-content">
	                <h2 id="">关于</h2>
	
		<p>好吧，首先介绍一下自己。我是一个普通的程序员，2011年毕业于内蒙古工业大学的计算机科学与技术专业，到今天已经工作整整3年有余，在这三年的工作中，不知走过多少弯路，也不知学到了多少东西。</p>
	            <p>最近的这份工作，由于各种原因，我把刚毕业的小舅子招了进来和我一起做后台开发的工作，看着他我就想起了刚毕业时的自己，真是啥也不会啊！不过他比较幸运，因为我可是毫无保留的将自己懂得东西能教的都教给了他，有时候吧我就在想，如果这个新人不是我小舅子，我会这么无私吗？</p>
	            <p>记得自己刚开始工作的时候，总是想着自己什么时候能变成大牛，做个架构师什么的，还好经过这么几年工作后，终于意识到梦想可以有，但是实现的过程必须脚踏实地。我现在距离大牛的水平还很遥远，但是起码比新手们是近了一步，在这里我想告诫新入行的程序员朋友，甚至一些工作几年的朋友们，一定要找准方向，在前进的过程中，不要被各种新的听起来也很牛的技术所迷惑，因为只有那些经过时间考验的才是最好的。就好像我们耳熟能详的SSH框架、spring mvc等，你似乎觉得这些都是老掉牙的东西了，但是你真的理解他们吗？</p>
	            <p>回到刚才我遇到的问题，如果是一个陌生人，我会这么无私的把自己会的分享给他吗？我想说，我会的。因为我的愿心就是：希望广大程序猿朋友摘掉苦逼的昵称。愿心一起，就立即行动起来，coding云就是我的行动，我会以行动表明自己的态度。各位拭目以待。</p>
	            <blockquote>
	              <p>今天，coding云上线了，Coding云会将java web开发中常见的各个模块都写成具体的案例，通过技术文章介绍源码，辅以系统演示（由用户亲手体验），让大家不仅看到文字方面的教程，而且能够从实际操作中体会这些模块的实现，进而提升大家的编码能力.</p>
	            </blockquote>
	
	
				<h2 id="">联系我们</h2>
				<p>本站难免疏忽，如有侵犯您的版权，请尽快联系我们，我们会尽快删除涉嫌版权的内容，谢谢支持。</p>
				<p>QQ: 277737174 <br />
				Mail: jack_bj@163.com</p>
	            </section>
	        </article>
	      </div>
	    </div>

    </div><!-- /.container -->

    <jsp:include page="common/footerSideBar.jsp" />

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

