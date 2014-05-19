<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path1 = request.getContextPath();
String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>群发功能</title>
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

<style type="text/css">
.black_overlay{display:none;position:absolute;top:0%;left:0%;width:100%;height:100%;background-color:black;z-index:1001;-moz-opacity:0.8;opacity:.80;filter:alpha(opacity=80);}
.white_content{display:none;position:absolute;top:25%;left:25%;width:50%;height:50%;padding:16px;border:3px solid orange;background-color:white;z-index:1002;overflow:auto;}
</style>

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
    <div class="clear"><div align="right"><!-- Start Content Box -->
      </div>
        <div class="search_bar">
            &nbsp;
        	<div align="right"><span class="frm_input_box search prepend">
        	  <a href="javascript:void(0);" class="frm_input_append search_gray icon16_common" id="msgSearchBtn"><strong>搜索</strong></a>
        	  <input id="msgSearchInput" type="text" placeholder="" value="" class="frm_input">
       	    </span>
   	      </div>
      </div>
	</div>
	<div class="main_bd">
		<div class="sub_title_bar white">
			<div class="info">
				<h3 id="page_title"></h3>
                <label for="" class="frm_checkbox_label selected" style="display: none;"><i class="icon_checkbox"></i><input type="checkbox" class="frm_checkbox" data-label='不提醒'>隐藏关键词消息</label>
			</div>
			<div class="pagination_wrp pageNavigator"></div>
		</div></div>
    <!-- End .clear -->
    <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
   
        <ul class="content-box-tabs">
          <li><a href="#tab1" class="default-tab">已发送</a></li>
          <!-- href must be unique and match the id of target div -->
          <li><a href="#tab2">新建群发消息</a></li>
        </ul>
        <div class="clear"></div>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <div class="tab-content default-tab" id="tab1">
          <!-- This is the target div. id must match the href of this div's tab -->
        
          <table>
            <thead>
              <tr>
                <th width="7%">
                <input class="check-all" type="checkbox" />                </th>
                <th width="19%">发送时间</th>
                <th width="38%">发送内容</th>
                <th width="11%">&nbsp;</th>
                <th width="7%">&nbsp;</th>
                <th width="18%">操作</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td colspan="6">
                  <div class="bulk-actions align-left"></div>
                  <div class="pagination"> <a href="#" title="First Page">&laquo;首页</a><a href="#" title="Previous Page">&laquo;上一页</a> <a href="#" class="number current" title="1">1</a> <a href="#" class="number" title="2">2</a> <a href="#" class="number" title="3">3</a> <a href="#" class="number" title="4">4</a> <a href="#" title="Next Page">下一页&raquo;</a><a href="#" title="Last Page">末页&raquo;</a> </div>
                  <!-- End .pagination -->
                  <div class="clear"></div>                </td>
              </tr>
            </tfoot>
            <tbody>
              <tr>
                <td>
                  <input type="checkbox" />                </td>
                <td>2012-12-12 18:30</td>
                <td><a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block'; document.getElementById('fade').style.display='block'">本平台上线新接口提供...</a></td>
				<div id="light" class="white_content">
<a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
<div align="right">关闭</div></a><br><br>
<br>本平台上线新接口提供...
</div>
<div id="fade" class="black_overlay"></div>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                  <!-- Icons -->
                  <a href="#" title="Edit"></a> <a href="#" title="Delete">&nbsp;&nbsp;&nbsp;<img src="resources/images/icons/cross.png" alt="Delete" /></a></td>
              </tr>
              <tr>
                <td>
                  <input type="checkbox" />                </td>
                <td>2012-12-10 17:30</td>
                <td><a href="#" title="title">本平台将于明日进行...</a></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                  <!-- Icons -->
                  <a href="#" title="Edit"></a> <a href="#" title="Delete">&nbsp;&nbsp;&nbsp;<img src="resources/images/icons/cross.png" alt="Delete" /></a> <a href="#" title="Edit Meta"></a> </td>
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
        <div class="tab-content" id="tab2">
          <form action="#" method="post">
            <fieldset>
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
           
           
            <p>
              
              <textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="15"></textarea>
            </p>
            <p>
              <input class="button" type="submit" value="发送新消息" />
            </p>
            </fieldset>
            <div class="clear"></div>
            <!-- End .clear -->
          </form>
        </div>
        <!-- End #tab2 -->
      </div>
      <!-- End .content-box-content -->
    </div>
    <!-- End .content-box -->
    
    <!-- End Notifications -->
    <div id="footer"> <small>
      <!-- Remove this notice or replace it with whatever you want -->
      &#169; Copyright 2014 Your Company | Powered by <a href="#">福建师范大学</a> | <a href="#">Top</a> </small> </div>
    <!-- End #footer -->
  </div>
  <!-- End #main-content -->
  <%@ include file="leftmenu.jsp"%>
</div>
</body>

<!-- Download From www.exet.tk-->
</html>

