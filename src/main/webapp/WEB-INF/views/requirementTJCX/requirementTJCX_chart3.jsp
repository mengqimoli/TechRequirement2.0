<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="/js/highcharts/jquery-1.8.2.min.js"></script>
<title>Highcharts Example</title>
<style type="text/css">
body {
	background-color: white;
}
</style>
<script type="text/javascript">
	$(function() {
		//先获取返回的json数据,在赋值给highcharts处理
		$
				.get(
						'requirementTJCX_json.action?',
						function(myData) {
							$('#container')
									.highcharts(
											{
												chart : {
													plotBackgroundColor : null,
													plotBorderWidth : 1,//null,
													plotShadow : false
												},
												title : {
													text : '需求统计'
												},
												tooltip : {
													pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
												},
												plotOptions : {
													pie : {
														allowPointSelect : true,
														cursor : 'pointer',
														dataLabels : {
															enabled : true,
															format : '<b>{point.name}</b>: {point.percentage:.1f} %',
															style : {
																color : (Highcharts.theme && Highcharts.theme.contrastTextColor)
																		|| 'black'
															}
														}
													}
												},
												series : [ {
													type : 'pie',
													name : 'Browser share',
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
	<div id="container"></div>
</body>
</html>
