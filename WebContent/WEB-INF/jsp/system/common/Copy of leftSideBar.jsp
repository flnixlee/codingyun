<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<c:if test="${!empty sysUser}">
   <div id="lside" class="col-sm-3 col-md-2 sidebar">
   <ul class="nav nav-sidebar menubar">
     <li class="article active"><a href="/system/article" target="mainframe">文章管理</a></li>
     <li class="article"><a href="/user/home/siteMapFile" target="mainframe">生成sitemap文件</a></li>
     <li class="article"><a href="/system/calendar" target="mainframe">calendar</a></li>
     <li class="article"><a href="http://api.map.baidu.com/geocoder/v2/?ak=jYhgnR8SGKs48TIQQU9P7LFO&callback=renderOption&output=json&address=百度大厦&city=北京市" target="mainframe">地图</a></li>
     <li class="article"><a href="/system/map" target="mainframe">地图test</a></li>
     <li class="article"><a href="/system/test" target="mainframe">图片导航</a></li>
     <li class="article"><a href="/system/test/getHashEncryptPage" target="mainframe">哈希加密算法</a></li>
   </ul>
   </div>
</c:if>
