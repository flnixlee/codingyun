<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<c:if test="${!empty sysUser}">
</c:if>
<div class="col-lg-2">
	<div class="account-container">
		<div class="account-avatar">
			<img src="${baseUrlStatic}/img/headshot.png" alt="user icon" class="thumbnail" />
		</div> <!-- /account-avatar -->
	
		<div class="account-details">
		
			<span class="account-name">${sysUser.userName}</span>
			
			<span class="account-role">系统管理员</span>
			
			<span class="account-actions">
				<a href="javascript:;">Profile</a> |
				
				<a href="javascript:;">Edit Settings</a>
			</span>
		
		</div> <!-- /account-details -->
	
	</div> <!-- /account-container -->
	
	<hr />
	
	<ul id="main-nav" class="nav nav-tabs nav-stacked">
		<li class="active"><a href="/user/dashboard/getResourceList" target="mainframe"><i class="icon-home"></i>资源管理</a></li>
		<li class="article"><a href="/system/calendar" target="mainframe"><i class="icon-th-large"></i>calendar<span class="label label-warning pull-right">5</span></a></li>
		<li class="article"><a href="/system/test" target="mainframe"><i class="icon-user"></i>图片导航</a></li>
	</ul>	
	
	<hr />
	
	<div class="sidebar-extra">
		<p>codingyun 利用bootstrap，为大家带来新的体验，谢谢大家支持.</p>
	</div> <!-- .sidebar-extra -->
	
	<br />

</div> <!-- /col-lg-2 -->
