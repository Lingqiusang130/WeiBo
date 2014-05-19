<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title>应用管理</title>
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
<!-- jQuery Datepicker Plugin -->
<script type="text/javascript" src="resources/scripts/jquery.datePicker.js"></script>
<script type="text/javascript" src="resources/scripts/jquery.date.js"></script>
<style TYPE="text/css">
	body{
	 font-family: Arial, Helvetica, sans-serif;
                color: #555;
                background: #f0f0f0 url('resources/images/bg-body.gif') top left repeat-y;
                font-size: 12px;
	}
	
</style>
</head>
<body >
<div id="body-wrapper">
  <!-- Wrapper for the radial gradient background -->
  <div id="sidebar">
    <div id="sidebar-wrapper">
      <!-- Sidebar with logo and menu -->
      <h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>
      <!-- Logo (221px wide) -->
      <a href="#"><img id="logo" src="resources/images/logo3.png" alt="Simpla Admin logo" /></a>
      <!-- Sidebar Profile links -->
     
        <br />
        
      <ul id="main-nav">
        <div align="center">
          <!-- Accordion Menu -->
          
        </div>
        <li> <a href="../index.jsp" target="_top" >
          <!-- Add the class "current" to current menu item -->
          <div align="center">返回首页&nbsp;&nbsp;&nbsp;</div>
        </a>        </li>
        <li> 
          <a href="#" class="nav-top-item"> <div align="center">群发功能</div> </a>
          <ul>
            <li>
              <a href="send.jsp" target="_top"><div align="center">群发功能</div></a></li>
          </ul>
        </li>
        <li> 
          <a href="#" class="nav-top-item"> <div align="center">接入管理</div> </a>
          <ul>
            <li>
              <a href="insert.jsp" target="_top"><div align="center">接入管理</div></a></li>
          </ul>
        </li>
        <li> 
          <a href="#" class="nav-top-item"><div align="center"> 用户统计</div> </a>
          <ul>
            <li>
              <a href="istep.jsp" target="_top"><div align="center">计步器应用</div></a></li>
            <li>
              <a href="" target="_top"><div align="center">社交名片应用</div></a></li>
            <li>
              <a href="" target="_top"><div align="center">备忘录应用</div></a></li>
          </ul>
        </li>
        <li> 
          <a href="#" class="nav-top-item"><div align="center">消息统计</div></a>
          <ul>
            <li>
              <a href="" target="_top"><div align="center">消息统计</div></a></li>
          </ul>
        </li>
        <li> 
          <a href="#" class="nav-top-item"> <div align="center">设置</div> </a>
          <ul>
            <li>
              <a href="#"><div align="center">修改密码</div></a></li>
          </ul>
        </li>
        <li></li>
      </ul>
      
    <!-- End Notifications -->
    
  </div>
  <!-- End #main-content -->
</div>
</body>
<!-- Download From www.exet.tk-->
</html>

