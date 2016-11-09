<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>


<!--第一种：提交表单上传文件，只返回结果   -->
<div class="panel panel-default">
<!-- Default panel contents -->
<div class="panel-heading"><strong>第一种：提交表单上传文件，只返回结果</strong></div>
<div class="panel-body text-primary">
	<div>功能介绍：</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该种上传文件的功能，是直接提交form表单（enctype="multipart/form-data"），后台保存好文件后，返回结果。相应的博客、源码很快就会提供给大家，正在准备中。注意：由于服务器容量问题，您上传的文件将于１小时候删除。
	<!-- 这里要简单说明下实现方式、然后链接到博客文章介绍 -->
</div>
<div class="panel-body">
   	<form id ="firstUpdateForm" action="/demo/upload/firstUpload" method="post"
	    enctype="multipart/form-data" class="form-horizontal" role="form" target="hidden_frame">
		<div class="modal-body">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">注释</label>
				<div class="col-sm-5">
				    <input type="text" class="form-control" id="saveName" name="name" placeholder="上传功能是主角哦，我是打酱油的。" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">程序类型</label>
				<div class="col-sm-5">
				    <select id="saveExamType" name="examType" class="form-control" disabled>
                              <option value="1">四级</option>
                              <option value="2">六级</option>
                              <option value="3" selected>上传演示</option>
                              <option value="4">四六级</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-3 control-label">上传文件</label>
				<div class="col-sm-5">
				    <input type="file" class="form-control" id="firstDemoImgFile" name="imgFile">
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<div id="firstUploadSucceed" class="alert alert-success pull-left" style="display: none;">
			    <strong>新增成功！</strong><span id="firstUploadSucceedMsg"></span>
			</div>
			<div id="firstUploadFailed" class="alert alert-danger pull-left" style="display: none;">
			    <strong>对不起！新增失败... &nbsp;&nbsp;</strong><span id="firstUploadFailedMsg"></span>
			</div>
		    <button id="createPeriadBtn" type="submit" class="btn btn-default">确定 </button>
		</div>
	</form> 
	<iframe name='hidden_frame' id="hidden_frame" style='display:none'></iframe>
  </div>
</div>


<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${baseUrlStatic}/js/demo/uploadDemo.js?ver=${version}"></script>