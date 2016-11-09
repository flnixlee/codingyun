<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<style>
audio, canvas, progress, video {
    width: 260px;
}
</style>
<link rel="stylesheet" href="${baseUrlStatic}/css/audioplayer/audioplayer.css" />
<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
	<div class="sidebar-module" style="margin-left:-30px;">
      <!-- 百度ad -->
      <script type="text/javascript">
		    /*搜索框 2014-11-27*/
		    var cpro_id = "u1829863";
	  </script>
	  <script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
    </div>
    <div class="sidebar-module sidebar-module-inset">
      <h4>关于</h4>
<!--             <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p> -->
      <p>一个程序猿的自我修行。平凡的人平凡久了，往往会被暗示生而平庸却又有人不甘于平庸，于是有人会消沉、有人世故、有人功利、有人钻营、有人堕落、有人浮躁。但是不要忘了这世上的任何人都可以有怀抱天下的胸襟，哪怕是生而不等。</p>
      <p>摘自--徐公子胜治《神游》</p>
      <p><a href="http://nice123.taobao.com/" target="_black">我在淘宝： nice123.taobao.com</a></p>
      <wb:follow-button uid="5216152378" type="red_3"  height="24" ></wb:follow-button>
    </div>
    <div class="sidebar-module sidebar-module-inset">
      <h4>在线交流</h4>
      <p>QQ群：225984052</p>
    </div>
    <div class="sidebar-module sidebar-module-inset">
      <h4>歌曲欣赏</h4>
      <p>请大家欣赏，如有打扰，请点击这里暂停。</p>
	      <audio controls loop>
<!-- 		  <audio preload="auto" controls autoplay loop></audio> -->
			    <source src="http://7u2ipy.com2.z0.glb.qiniucdn.com/test/testWater.mp3" />
			    <source src="http://7u2ipy.com2.z0.glb.qiniucdn.com/test/audio/xiegou.mp3" />
		  </audio>
    </div>
    <div class="sidebar-module sidebar-module-inset">
      <h4>扫码捐赠</h4>
      <img alt="coding云需要您的捐赠" src="${baseUrlStatic}/img/alipay.png">
      <a href="javascript:" onclick="haiyixia()" title="让页面”抖“起来">点此，嗨一下</a>
    </div>
    <div class="sidebar-module">
      <h4>最新文章</h4>
      <ol id="hotArticleList" class="list-unstyled">
<!--               <li><a href="#">March 2014</a></li> -->
<!--               <li><a href="#">February 2014</a></li> -->
      </ol>
    </div>
    <div class="sidebar-module">
      <h4>最新评论</h4>
      <ol class="list-unstyled ds-recent-comments" data-num-items="30" data-show-avatars="1" data-show-time="1" data-show-admin="1" data-excerpt-length="70"></ol>
    </div>
    <div class="sidebar-module">
      <h4>友情链接</h4>
      <ol class="list-unstyled">
      	<li><a target="_blank" href="http://dev.duoshuo.com/">多说</a></li>
      	<li><a target="_blank" href="http://www.cocoachina.com/">cocoachina</a></li>
      	<li><a target="_blank" href="http://www.atool.org/">在线工具</a></li>
      	<li><a target="_blank" href="http://www.github.com/">GitHub</a></li>
        <li><a target="_blank" href="http://git.oschina.net/">Git oschina代码托管</a></li>
        <li><a target="_blank" href="http://www.bootcss.com/">BootStrap</a></li>
        <li><a target="_blank" href="http://ifeve.com/">并发编程网</a></li>
<%--         <c:forEach var="friendUrl" items="${friendUrlList}" varStatus="status"> --%>
<%-- 	        <li><a target="_blank" href='${friendUrl.url}'>${friendUrl.title}</a></li> --%>
<!--         </c:forEach> -->
      </ol>
    </div>
    <!-- 百度ad -->
    <div class="sidebar-module">
	    <script type="text/javascript">
		    /*300*250 创建于 2015-06-10*/
		    var cpro_id = "u2148462";
		</script>
		<script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
    </div>
</div><!-- /.blog-sidebar -->

<script src="${baseUrlStatic}/js/audioplayer/audioplayer.js"></script>
<script>
//谢谢免费提供html音乐播放器
//http://osvaldas.info/audio-player-responsive-and-touch-friendly
	$( function(){
	      $( 'audio' ).audioPlayer();
// 	      $( 'audio' ).audioPlayer(
//    		  {
//    		      classPrefix: 'audioplayer',
//    		      strPlay: 'Play',
//    		      strPause: 'Pause',
//    		      strVolume: 'Volume'
//    		  });
	});
</script>
<script type="text/javascript">
function haiyixia(){
	javascript:(function(){function c(){var e=document.createElement("link");e.setAttribute("type","text/css");e.setAttribute("rel","stylesheet");e.setAttribute("href",f);e.setAttribute("class",l);document.body.appendChild(e)}function h(){var e=document.getElementsByClassName(l);for(var t=0;t<e.length;t++){document.body.removeChild(e[t])}}function p(){var e=document.createElement("div");e.setAttribute("class",a);document.body.appendChild(e);setTimeout(function(){document.body.removeChild(e)},100)}function d(e){return{height:e.offsetHeight,width:e.offsetWidth}}function v(i){var s=d(i);return s.height>e&&s.height<n&&s.width>t&&s.width<r}function m(e){var t=e;var n=0;while(!!t){n+=t.offsetTop;t=t.offsetParent}return n}function g(){var e=document.documentElement;if(!!window.innerWidth){return window.innerHeight}else if(e&&!isNaN(e.clientHeight)){return e.clientHeight}return 0}function y(){if(window.pageYOffset){return window.pageYOffset}return Math.max(document.documentElement.scrollTop,document.body.scrollTop)}function E(e){var t=m(e);return t>=w&&t<=b+w}function S(){var e=document.createElement("audio");e.setAttribute("class",l);e.src=i;e.loop=false;e.addEventListener("canplay",function(){setTimeout(function(){x(k)},500);setTimeout(function(){N();p();for(var e=0;e<O.length;e++){T(O[e])}},15500)},true);e.addEventListener("ended",function(){N();h()},true);e.innerHTML=" <p>If you are reading this, it is because your browser does not support the audio element. We recommend that you get a new browser.</p> <p>";document.body.appendChild(e);e.play()}function x(e){e.className+=" "+s+" "+o}function T(e){e.className+=" "+s+" "+u[Math.floor(Math.random()*u.length)]}function N(){var e=document.getElementsByClassName(s);var t=new RegExp("\\b"+s+"\\b");for(var n=0;n<e.length;){e[n].className=e[n].className.replace(t,"")}}var e=30;var t=30;var n=350;var r=350;var i="//s3.amazonaws.com/moovweb-marketing/playground/harlem-shake.mp3";var s="mw-harlem_shake_me";var o="im_first";var u=["im_drunk","im_baked","im_trippin","im_blown"];var a="mw-strobe_light";var f="//s3.amazonaws.com/moovweb-marketing/playground/harlem-shake-style.css";var l="mw_added_css";var b=g();var w=y();var C=document.getElementsByTagName("*");var k=null;for(var L=0;L<C.length;L++){var A=C[L];if(v(A)){if(E(A)){k=A;break}}}if(A===null){console.warn("Could not find a node of the right size. Please try a different page.");return}c();S();var O=[];for(var L=0;L<C.length;L++){var A=C[L];if(v(A)){O.push(A)}}})()
}
    </script>