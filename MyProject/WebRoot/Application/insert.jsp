<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path1 = request.getContextPath();
String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" 

<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="resources/css/reset.css" 

type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css" 

type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it 

if you want the CSS completely valid -->
<link rel="stylesheet" href="resources/css/invalid.css" 

type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="resources/scripts/jquery-

1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" 

src="resources/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" 

src="resources/scripts/facebox.js"></script>
<!-- jQuery WYSIWYG Plugin -->
<script type="text/javascript" 

src="resources/scripts/jquery.wysiwyg.js"></script>
<!-- jQuery Datepicker Plugin -->
<script type="text/javascript" 

src="resources/scripts/jquery.datePicker.js"></script>
<script type="text/javascript" 

src="resources/scripts/jquery.date.js"></script>
</head>
<body >

        
      
        <!-- Accordion Menu -->
   
      <!-- End #main-nav -->
    
      <!-- End #messages -->
  

  <!-- End #sidebar -->
  <div id="main-content">
    <!-- Main Content Section with everything -->

    <!-- Page Head -->
    
    <!-- End .shortcut-buttons-set -->
    <div class="clear"></div>
    <!-- End .clear -->
    <div class="content-box">
      <!-- Start Content Box -->

   
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab" id="tab1">
          <!-- This is the target div. id must match the href of 

this div's tab -->
        
          <table width="90%">
            <thead>
              <tr>
                <th width="7%">&nbsp;</th>
                <th width="24%"><div align="center">应用名称

</div></th>
                <th width="17%">&nbsp;</th>
                <th width="20%"><div align="left">分享平台

</div></th>
                <th width="20%">&nbsp;</th>
                <th width="12%">&nbsp;</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td colspan="6">
                  <div class="bulk-actions align-left"><a 

class="button" href="#">提交</a> &nbsp;&nbsp;&nbsp;</div>
				  <div class="bulk-actions align-

left"><a class="button" href="#">重置</a> </div>
                  <div class="pagination"> <a href="#" 

title="First Page">&laquo;首页</a><a href="#" title="Previous 

Page">&laquo;上一页</a> <a href="#" class="number current" 

title="1">1</a> <a href="#" class="number" title="2">2</a> <a 

href="#" title="Next Page">下一页&raquo;</a><a href="#" 

title="Last Page">末页&raquo;</a> </div>
                  <!-- End .pagination -->
                  <div class="clear"></div>                </td>
              </tr>
            </tfoot>
            <tbody>
              <tr>
                <td>&nbsp;</td>
                <td><div align="center">计步器</div></td>
                <td><input name="checkbox" type="checkbox" 

value="" checked="checked" />
                  新浪微博 </td>
                <td><input name="checkbox2" type="checkbox" 

value="" checked="checked" />
                腾讯微博</td>
                <td><input name="checkbox3" type="checkbox" 

value="" checked="checked" />
                人人网</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><div align="center">社交名片</div></td>
                <td><input name="checkbox4" type="checkbox" 

value="" checked="checked" /> 
                  新浪微博 </td>
                <td><input name="checkbox22" type="checkbox" 

value="" checked="checked" /> 
                  腾讯微博</td>
                <td><input name="checkbox32" type="checkbox" 

value="" checked="checked" /> 
                  人人网</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><div align="center">备忘录</div></td>
                <td><a href="#" title="title"></a>
                  <input name="checkbox5" type="checkbox" value="" 

checked="checked" /> 
                  新浪微博 </td>
                <td><input name="checkbox23" type="checkbox" 

value="" checked="checked" /> 
                  腾讯微博</td>
                <td><input name="checkbox33" type="checkbox" 

value="" checked="checked" /> 
                  人人网</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><a href="#" title="title"></a></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><a href="#" title="title"></a></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><a href="#" title="title"></a></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><a href="#" title="title"></a></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </tbody>
          </table>
        </div>
        <!-- End #tab1 -->
        
        <!-- End #tab2 -->
      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->
    
    <!-- End Notifications -->
    <div id="footer"> <small>
      <!-- Remove this notice or replace it with whatever you want 

-->
      &#169; Copyright 2014 Your Company | Powered by <a href="#">

福建师范大学</a> | <a href="#">Top</a> </small> </div>
    <!-- End #footer -->
  </div>
  <!-- End #main-content -->
  <%@ include file="leftmenu.jsp"%>
</div>
</body>

<!-- Download From www.exet.tk-->
</html>

