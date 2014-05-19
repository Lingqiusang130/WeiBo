<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path1 = request.getContextPath();
String basePath1 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
%>
<%@ include file="leftmenu.jsp"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<div class="line"></div>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript">
     $(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: '计步器应用微博用户'
        },
        subtitle: {
            text: '来源: 微博服务管理平台'
        },
        xAxis: {
            categories: [
                '一月',
                '二月',
                '三月',
                '四月',
                '五月',
                '六月',
                '七月',
                '八月',
                '九月',
                '十月',
                '十一月',
                '十二月'
            ]
        },
        yAxis: {
            min: 0,
            title: {
                text: '用户数量 (个)'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} 个</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: '新浪微博用户',
            data: [39.9, 81.5, 66.4, 139.2, 104.0, 126.0, 195.6, 137.5, 230.4, 194.1, 65.6, 104.4]

        }, {
            name: '腾讯微博用户',
            data: [183.6, 48.8, 138.5, 43.4, 106.0, 84.5, 155.0, 54.3, 91.2, 83.5, 156.6, 92.3]

        }, {
            name: '人人网用户',
            data: [38.9, 68.8, 79.3, 91.4, 147.0, 68.3, 59.0, 59.6, 82.4, 25.2, 79.3, 41.2]

        }, {
            name: '搜狐微博用户',
            data: [62.4, 73.2, 14.5, 99.7, 103.6, 75.5, 88.4, 90.4, 47.6, 39.1, 46.8, 51.1]

        }]
    });
});				
  </script>

	</head>
	<body>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>
      <script src="Application/highcharts/js/highcharts.src.js"></script>
      <script src="highcharts/js/modules/highcharts.js"></script>
      
    </p>
    <div id="container" style="min-width: 310px; height: 400px; margin:0 0 20px 230px"></div>
	
	</body>

</html>

