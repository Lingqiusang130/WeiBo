<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path1 = request.getContextPath();
String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>开发中心</title>
<meta name="generator" content="MediaWiki 1.18.2" />
<link rel="shortcut icon" href="/favicon.ico" />
<link rel="search" type="application/opensearchdescription+xml" href="/wiki/opensearch_desc.php" title="微博API (zh-cn)" />
<link rel="alternate" type="application/atom+xml" title="微博API的Atom" href="/wiki/index.php?title=%E7%89%B9%E6%AE%8A:%E6%9C%80%E8%BF%91%E6%9B%B4%E6%94%B9&amp;feed=atom" />
<link rel="stylesheet" href="/wiki/load.php?debug=false&amp;lang=zh-cn&amp;modules=mediawiki.legacy.commonPrint%2Cshared%7Cskins.monobook&amp;only=styles&amp;skin=monobook&amp;*" />
<link rel="stylesheet" href="http://img.t.sinajs.cn/t4/appstyle/open/css/pages/wiki/wiki_main_lumpsugar.css?version=1.1.2.356" media="screen" />
<!--[if lt IE 5.5000]><link rel="stylesheet" href="/wiki/skins/monobook/IE50Fixes.css?303" media="screen" /><![endif]-->
<!--[if IE 5.5000]><link rel="stylesheet" href="/wiki/skins/monobook/IE55Fixes.css?303" media="screen" /><![endif]-->
<!--[if IE 6]><link rel="stylesheet" href="/wiki/skins/monobook/IE60Fixes.css?303" media="screen" /><![endif]-->
<!--[if IE 7]><link rel="stylesheet" href="/wiki/skins/monobook/IE70Fixes.css?303" media="screen" /><![endif]--><meta name="ResourceLoaderDynamicStyles" content="" />
<style>a:lang(ar),a:lang(ckb),a:lang(fa),a:lang(kk-arab),a:lang(mzn),a:lang(ps),a:lang(ur){text-decoration:none}a.new,#quickbar a.new{color:#ba0000}

/* cache key: wiki:resourceloader:filter:minify-css:4:c88e2bcd56513749bec09a7e29cb3ffa */
</style>
<script src="/wiki/load.php?debug=false&amp;lang=zh-cn&amp;modules=startup&amp;only=scripts&amp;skin=monobook&amp;*"></script>
<script>if(window.mw){
	mw.config.set({"wgCanonicalNamespace": "", "wgCanonicalSpecialPageName": false, "wgNamespaceNumber": 0, "wgPageName": "微博API", "wgTitle": "微博API", "wgCurRevisionId": 12495, "wgArticleId": 1566, "wgIsArticle": true, "wgAction": "view", "wgUserName": null, "wgUserGroups": ["*"], "wgCategories": [], "wgBreakFrames": false, "wgRestrictionEdit": [], "wgRestrictionMove": []});
}
</script><script>if(window.mw){
	mw.loader.load(["mediawiki.page.startup"]);
}
</script>
</head>
<body >

        
      
        <!-- Accordion Menu -->
   
      <!-- End #main-nav -->
    
      <!-- End #messages -->
  </div>
                    	<div class="wiki_bodyContent" id="bodyContent">
																				<div id="mw-js-message" class="js-messagebox" style="display:none"></div>
													
													
							<div lang="zh-cn" dir="ltr" class="mw-content-ltr">
							<h2 class="wiki_title"> <span class="mw-headline" id=".E5.BE.AE.E5.8D.9AAPI"> 微博API</span></h2>
							<p class="wiki_title">&nbsp;</p>
							<p class="wiki_title">&nbsp;</p>
							<div class="wiki_kit">

	<div class="wiki_taglist" style="margin:0 0 0 230px">
		<ul class="clearfix">
			<li><a href="#.E7.B2.89.E4.B8.9D.E6.9C.8D.E5.8A.A1.E6.8E.A5.E5.8F.A3">分享信息</a></li>
                        <li><a href="#.E9.82.80.E8.AF.B7.E6.8E.A5.E5.8F.A3">统计</a></li>
                        <li><a href="#.E5.BE.AE.E5.8D.9A">增加好友</a></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li><a href="#.E8.AF.84.E8.AE.BA">删除好友</a></li>
			<li><a href="#.E7.94.A8.E6.88.B7">查找好友</a></li>
            
                       <li><a href="#OAuth2">OAuth 2.0授权接口</a></li>
		</ul>
	</div>
	<p class="tips_txt">&nbsp;</p>
	<p class="tips_txt">&nbsp;</p>
	<p class="tips_txt">&nbsp;</p>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wiki_table">
<colgroup><col class="tbF1"/><col class="tbF2" /><col /></colgroup>
<tr>
<th colspan="3" scope="col"><p>&nbsp;</p>
  <p>&nbsp;</p>
  <p><span>分享信息</span></p></th>
</tr>
<tr>
<td rowspan="1" style="text-align:center;">读取接口
</td>
<td><a href="" title="2/messages/receive">messages/receive</a>
</td>
<td>接收用户私信、关注、取消关注、@等消息接口 <span class="wiki_icon_new"></span>
</td></tr>
<tr>
<td rowspan="3" style="text-align:center;">写入接口
</td>
<td><a href="" title="2/messages/reply">messages/reply</a>
</td>
<td>向用户回复私信消息接口<span class="wiki_icon_new"></span>
</td></tr>
<tr>
<td><a href="" title="2/messages/send">messages/send</a>
</td>
<td>根据粉丝设置的提醒条件进行私信提醒消息接口<span class="wiki_icon_new"></span>
</td></tr>
<tr>
<td><a href="" title="订阅发送">messages/post</a>
</td>
<td>向订阅用户群发私信消息接口<span class="wiki_icon_new"></span>
</td></tr></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wiki_table">
<colgroup><col class="tbF1"/><col class="tbF2" /><col /></colgroup>

<tr>
</tr>
<tr>
<th colspan="3" scope="col"><p>&nbsp;</p>
  <p>&nbsp;</p>
  <p><span>统计</span></p></th>
</tr>
<tr>
<td rowspan="1" style="text-align:center;">读取接口
</td>
<td><a href="" title="2/messages/receive">messages/receive</a>
</td>
<td>接收用户私信、关注、取消关注、@等消息接口 <span class="wiki_icon_new"></span>
</td></tr>
<tr>
<td rowspan="3" style="text-align:center;">写入接口
</td>
<td><a href="" title="2/messages/reply">messages/reply</a>
</td>
<td>向用户回复私信消息接口<span class="wiki_icon_new"></span>
</td></tr>
<tr>
<td><a href="" title="2/messages/send">messages/send</a>
</td>
<td>根据粉丝设置的提醒条件进行私信提醒消息接口<span class="wiki_icon_new"></span>
</td></tr>
<tr>
<td><a href="" title="订阅发送">messages/post</a>
</td>
<td>向订阅用户群发私信消息接口<span class="wiki_icon_new"></span>
</td></tr></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wiki_table">
<colgroup><col class="tbF1"/><col class="tbF2" /><col /></colgroup>

<tr>
</tr>
</table>
  <!-- End #sidebar -->
  <div id="main-content">
    <!-- Main Content Section with everything -->

    <!-- Page Head -->
    
   
    <div id="footer"> <small>
      <!-- Remove this notice or replace it with whatever you want -->
      &#169; Copyright 2010 Your Company | Powered by <a href="#">admin templates</a> | <a href="#">Top</a> </small> </div>
    <!-- End #footer -->
  </div>
  <!-- End #main-content -->
   <%@ include file="leftmenu.jsp"%>
</div>
</body>

<!-- Download From www.exet.tk-->
</html>
