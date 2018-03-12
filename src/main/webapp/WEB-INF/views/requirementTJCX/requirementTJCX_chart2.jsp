<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="/js/highcharts/jquery-1.8.2.min.js"></script>
<title>河北省重大需求征集系统计图</title>
<style type="text/css">
body {
	background-color: white;
}
${
demo




.css




}
</style>
<script type="text/javascript">
	$(function() {
		$.get('requirementTJCX_json.action?', function(myData) {

			$('#container').highcharts({
				chart : {
					type : 'pie',
					options3d : {
						enabled : true,
						alpha : 45
					}
				},
				title : {
					text : '需求统计'
				},
				plotOptions : {
					pie : {
						innerSize : 100,
						depth : 45
					}
				},
				series : [ {
					name : 'Delivered amount',
					data : myData
				} ]
			});
		});
	});
</script>
</head>
<body>
	<script src="/js/highcharts/highcharts.js"></script>
	<script src="/js/highcharts/highcharts-3d.js"></script>
	<script src="/js/highcharts/modules/exporting.js"></script>
	<div id="container" style="height: 400px"></div>
</body>
</html>
