<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>注册 </title>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>


</head>
<body id="login">
<div id="login-wrapper" class="png_bg">
  <div id="login-top">
    <h1></h1>
    <!-- Logo (221px width) -->
    <a href="#"><img id="logo" src="resources/images/logo1.png" alt="Simpla Admin logo" /></a> </div>
  <!-- End #logn-top -->
  <div id="login-content">

   
      <p>
	  <font size = "4",face="黑体" color="#FF0000">*</font>用户名
        <input class="text-input" type="text" />
      </p>
      <div class="clear"></div>
      <p>
        <font size = "4",face="黑体" color="#FF0000">*</font>密码
        <input class="text-input" type="password" />
      </p>
      <div class="clear"></div>
	  <p>
        <font size = "4",face="黑体" color="#FF0000">*</font>确认密码
        <input class="text-input" type="confirmps" />
      </p>
	  <div class="clear"></div>
	  <p>
        <font size = "4",face="黑体" color="#FF0000">*</font>联系方式
        <input class="text-input" type="contact" />
      </p>
	  <div class="clear"></div>
	  <p>
        <font size = "4",face="黑体" color="#FF0000">*</font>邮箱
        <input class="text-input" type="mail" />
      </p>
	  <div class="clear"></div>
	  <p>
        公司名称
        <input class="text-input" type="company" />
      </p>
	  <div class="clear"></div>
	  <p>
        地址
        <input class="text-input" type="address" />
      </p>
	  <div class="clear"></div>
      <p id="remember-password">
        <input type="checkbox" />
        我已仔细阅读并接受<a href="#">注册条款</a> </p>
      <div class="clear"></div>

	  <br><br>
    <p>
	  
	     <input class="button" onclick="window.location.href='index.html'" type="button"  value="重置" >

     <input class="button" type="submit" value="注册" />
      </p>



  </div>
  <!-- End #login-content -->
</div>
<!-- End #login-wrapper -->
</body>
</html>

