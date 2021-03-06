<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <body>
  	<div id="addArticle">
       <form id="addArticleForm" method="post" action="/system/article/addArticle" class="form-horizontal" enctype="multipart/form-data" target="hidden_frame">  
       		<div class="form-group">
			    <label for="inputEmail3" class="col-sm-1 control-label">标题</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" id="title" name="title" placeholder="文章标题">
			    </div>
			    <label for="inputPassword3" class="col-sm-1 control-label">分类</label>
			    <div class="col-sm-2">
			      <select class="form-control" name="category">
					  <option value="1" selected>java</option>
                      <option value="2">服务器</option>
                      <option value="3">框架</option>
                      <option value="4">杂谈</option>
				  </select>
			    </div>
		    </div>
		    <div class="form-group">
			    <label for="inputEmail3" class="col-sm-1 control-label">关键字</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" id="keyWords" name="keyWords" placeholder="关键字">
			    </div>
			    <label for="inputPassword3" class="col-sm-1 control-label">是否展示</label>
			    <div class="col-sm-2">
			      <select class="form-control" name="showFlag">
					  <option value="1" selected>展示</option>
                      <option value="2">不展示</option>
				  </select>
			    </div>
		    </div>
		    <div class="form-group">
			    <label for="inputEmail3" class="col-sm-1 control-label">tag标签</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" id="tag" name="tag" placeholder="以逗号分隔的tag" value="java">
			    </div>
		    </div>
		    <div class="form-group">
			    <label for="inputEmail3" class="col-sm-1 control-label">网页描述</label>
			    <div class="col-sm-6">
			    	<textarea class="form-control" id="description" name="description" placeholder="网页主要内容" rows="2"></textarea>
			    </div>
		    </div>
			<div class="form-group">
			    <label for="inputEmail3" class="col-sm-1 control-label">文章内容</label>
			    <div class="col-sm-6">
		    		<textarea id="createArticle" style="visibility:hidden;"></textarea>
					<textarea id="htmlContent" name="content" style="display:none" align="center"></textarea>
			    </div>
		    </div>
			<div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button id="saveArticleBtn" type="submit" class="btn btn-primary">保存</button>
			    </div>
			</div>
        </form> 
        <iframe name='hidden_frame' id ="hidden_frame" style='display:none'></iframe>
  	</div>
  </body>
</html>
