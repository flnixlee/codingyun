<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="${baseUrlStatic}/icon/favicon.png">
    <title>test</title>
      <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- 我们自己的css样式文件放在这里 -->
    <link href="${baseUrlStatic}/css/system/dashboard.css" rel="stylesheet">
     <style type="text/css">
		textarea {
			display: block;
		}
		li{
		    margin-top: 10px;
		}
    </style>
  </head>
  <body>
  	<div id="contentDiv" class="">
   		  <div id="listDiv" class="listDiv">
	          <div class="sub-header">
	          		<span id="periodTitle" class="title h2">一、MD5哈希加密算法</span>
			  </div>
			  <div class="panel panel-primary">
				<div class="panel-body">
				    MD5哈希加密算法
			    </div>
				<div class="panel-footer">
					<ul>
					  <li>MD5即Message-Digest Algorithm 5（信息-摘要算法 5），用于确保信息传输完整一致。是计算机广泛使用的散列算法之一（又译摘要算法、哈希算法），主流编程语言普遍已有MD5实现。 将数据（如汉字）运算为另一固定长度值，是散列算法的基础原理，MD5的前身有MD2、MD3和MD4。</li>
					  <li>MD5一度被广泛应用于安全领域。但是由于MD5的弱点被不断发现以及计算机能力不断的提升，现在已经可以构造两个具有相同MD5的信息[2]，使本算法不再适合当前的安全环境。目前，MD5计算广泛应用于错误检查。例如在一些BitTorrent下载中，软件通过计算MD5和检验下载到的碎片的完整性。</li>
					  <li>MD5是输入不定长度信息，输出固定长度128-bits的算法。经过程序流程，生成四个32位数据，最后联合起来成为一个128-bits散列。基本方式为，求余、取余、调整长度、与链接变量进行循环运算。得出结果。</li>
					</ul>
				</div>
			  </div>
			  <form role="form">
				  <div class="form-group">
				    <label for="exampleInputEmail1">MD5加密</label>
				    <textarea id="md5_input" class="form-control" rows="2" placeholder="请输入待加密内容..."></textarea>
				  </div>
			  </form>
			  <p>
				  <button id="md5Button" type="button" class="btn btn-primary btn-sm">MD5加密</button>
			  </p>
			  <div id="md5_output" class="well well-sm">这里将显示加密后内容</div>
	      </div> 
	      <hr>
		  <br>
    </div>
  
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- 请首先引用jquery，再引用其他js文件 -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${baseUrlStatic}/js/system/tool/md5.js"></script>
    <script type="text/javascript" src="${baseUrlStatic}/js/system/tool/hashEncrypt.js"></script>
	
  </body>
</html>
