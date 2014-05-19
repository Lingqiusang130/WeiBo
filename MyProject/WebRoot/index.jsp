<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<head>

	<!-- Basic Page Needs
  ================================================== -->


	<title>微博管理服务平台首页</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/skeleton.css">
	<link rel="stylesheet" href="css/screen.css">
    <link rel="stylesheet" href="css/mediaelementplayer.css" />
    <!--[if IE 7]>
        <link rel="stylesheet" href="stylesheets/ie7.css">
    <![endif]-->

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/1.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/1.png">
    
    <!-- Fonts
	================================================== -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700,700italic,300,300italic' rel='stylesheet' type='text/css'>
    
    <!-- Scripts
	================================================== -->
    <script src="js/jquery-1.7.min.js" type="text/javascript"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/jquery.animate-colors-min.js" type="text/javascript"></script>
    <script src="js/ddsmoothmenu.js" type="text/javascript"></script>
    <script src="js/jquery.cssAnimate.mini.js" type="text/javascript"></script>
    <script src="js/jquery.fitvids.js" type="text/javascript"></script>
    <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script src="js/mediaelement-and-player.min.js"></script>
    <script src="js/screen.js" type="text/javascript"></script>
	
		<style type="text/css">
.black_overlay{display:none;position:absolute;top:0%;left:0%;width:100%;height:100%;background-color:black;z-index:1001;-moz-opacity:0.8;opacity:.80;filter:alpha(opacity=80);}
.white_content{display:none;position:absolute;top:25%;left:35%;width:30%;height:60%;padding:16px;border:3px solid black;background-color:white;z-index:1002;overflow:auto;}
</style>
</head>

<body>

	<!-- Site Backgrounds
	================================================== -->
	
    <!-- Change to class="poswrapheaderline wide" and class="headerline full" for a full-width header line -->
	<div class="poswrapheaderline"><div class="headerline"></div></div>  
    <!-- Remove or uncomment depending on if you want a background image or tile -->
    <div class="tiledbackground"></div>
    <!--img src="images/bg.jpg" alt="" id="background" /-->
    <!-- Change to class="poswrapper wide" and class="whitebackground full" for a full-width site background -->
    <div class="poswrapper"><div class="whitebackground"></div></div>

	<div class="container main portfolio4column">
    
        <!-- Header | Logo, Menu
		================================================== -->
	
		<div class="sixteen columns header">
        
		  <a href="" class="logohover"><div class="logo"></div>
		  </a>
            <div class="mainmenu">
                <div id="mainmenu" class="ddsmoothmenu">
                    <ul>
                        <li><a href="#">首 页<br/><span>Home</span></a>
                          
                        </li>
                        <li><a href="Development/overview.jsp">开发中心<br/><span>Developer</span></a>
                           
                        </li>
                        <li><a href="Application/send.jsp">应用管理<br/><span>Application</span></a>
                         
                        </li>
                        <li><a href="Platform/send2.jsp">平台管理<br/><span>&nbsp;Platform</span></a>
                            
                        </li>	
                        <li><a href="register.jsp"><span><br/>
                          <span class="depth-5">注册</span></span></a></li>	
						 <li><a href="javascript:void(0)" onClick="document.getElementById('light').style.display='block'; document.getElementById('fade').style.display='block'"><span><br/>
						   <span class="depth-5">登录</span></span></a></li>
                    </ul>
                    <br style="clear: left" />
                </div>
                
                <!-- Responsive Menu -->
                
				<form id="responsive-menu" action="#" method="post">
                    <select>
                        <option value="">Navigation</option>
                    </select>
				</form>
				
            </div>
		</div>
        
        <!-- Page Title And Social
		================================================== -->
        
		<div class="pagetitle">
        	<div class="pagetitleholder">
        	  <h1><strong>带给你前所未有的高效开发</strong></h1>
        	</div>
            
            <!--div class="pagetitlebackground"></div-->
        </div>
		
        <!-- Slider
		================================================== -->
        
		<div class="homeslider row">        
            <div class="flexslider clearfix">
                <ul class="slides">
                    <li><img src="images/banner/banner1.jpg" alt="" />
                    <li><img src="images/banner/banner4.jpg" alt="" /></li>
                    <li><img src="images/banner/banner3.jpg" alt="" />
                </ul>
            </div>
            <div class="sliderspacefix"></div>
		</div>

        <!-- Text Block
		================================================== -->
        
		
        
        <!-- Portfolio Teasers
		================================================== -->
        
        <div class="sixteen columns row divide">
        	<h3 class="titledivider">Latest Projects</h3>
            <div class="rightlink"><a href="#" class="titlelink"><span style="font-size:13px;">&rarr;</span> See Whole Portfolio</a></div>
            <div class="dividerline"></div>
        </div>
        
		
        	<div class="four columns teaser all-group web-group">
               <a href="#" data-text="" class="hovering" ><img src="images/thumbs/1.jpg" alt="" class="scale-with-grid" /></a>
			   <div class="topline"><a href="#">Pedometer</a></div>
            </div>
			<div class="four columns teaser all-group photoshop-group">
                <a href="#" data-text="" class="hovering"><img src="images/thumbs/2.jpg" alt="" class="scale-with-grid" /></a>
				<div class="topline"><a href="#">Card Manager</a></div>
            </div>
			<div class="four columns teaser all-group concepts-group">
                <a href="#" data-text="" class="hovering"><img src="images/thumbs/3.jpg" alt="" class="scale-with-grid" /></a>
				<div class="topline"><a href="#">Memo</a></div>
            </div>
			<div class="four columns teaser all-group concepts-group">
                <a href="#" data-text="" class="hovering"><img src="images/thumbs/4.jpg" alt="" class="scale-with-grid" /></a>
				<div class="topline"><a href="#">Mountaineering Software</a></div>
            </div>
            
			<div class="clear"></div>
		</div><div class="clear"><br><br></div>
        
        <!-- Blog Teasers
		================================================== -->
		
		<div align="center"><a href="#"><a href="register.jsp"><img src="images/thumbs/6.jpg" border="0"/></a><br><br><br><br></div>
		
	
	<footer class="footer">
<p>
@2014 Microblogging Management &nbsp;<a href="" target="_blank">开发者中心</a> | <a href="" target="_blank">服务协议</a> | <a href="" target="_blank">权利声明</a> | <a href="" target="_blank">版本更新</a> | <a href="" target="_blank">帮助中心</a> | <a href="" target="_blank">问题反馈</a>
</p>
</footer>
        <!-- Blog Teasers
		================================================== -->
       <div id="light" class="white_content">
<a href="javascript:void(0)" onClick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
<div align="right">关闭</div></a><br><br>
<br>
<div id="login-wrapper" class="png_bg">

  <!-- End #logn-top -->
  <div id="login-content">
    <form action="#">
      <div class="notification information png_bg">
       
      </div>
      <p>
        <label>用户名</label>
        <input class="text-input" type="text" />
      </p>
      <div class="clear"></div>
      <p>
        <label>密码</label>
        <input class="text-input" type="password" />
      </p>
      <div class="clear"></div>
      <p id="remember-password">
        <input type="checkbox" />记住密码 </p>
      <div class="clear"></div>
      <p>
        <input class="button" type="submit" value="登录" />
      </p>
    </form>
  </div>
  <!-- End #login-content -->
</div>
</div>
<div id="fade" class="black_overlay"></div>   
        

<!-- End Document
================================================== -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
