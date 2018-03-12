<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>河北省重大技术需求征集系统</title>
<%@include file="/WEB-INF/views/common/head.jsp"%>
<script type="text/javascript" src="/js/zhjs.js"></script>
<script type="text/javascript">
	$(function() {
		$("html,body").animate({
			scrollTop : $("#mao").offset().top
		}, 0);
		$("#xsqb").click(function() {
			window.location.href = "requirementZHJS.action"
		})
	})
</script>
<style type="text/css">
fieldset {
	width: 1050px;
}

legend {
	font-size: 13px;
}

table {
	border-collapse: collapse;
	margin: 0 auto;
	width: 1100px;
}

table, th, td {
	border: 0px solid white;
}

td {
	text-align: left;
	height: 29px;
	font-size: 13px;
}

.btn {
	font-size: 15px;
	background-color: DeepSkyBlue;
	color: white;
}

.btn1 {
	font-size: 12px;
	background-color: DeepSkyBlue;
	color: white;
}

.btn2 {
	font-size: 13px;
	background-color: DeepSkyBlue;
	color: white;
}

span {
	font-size: 14px;
	color: white;
}

a {
	text-decoration: none;
}

.longtext {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 300px;
}

.sel1 {
	width: 90px;
	text-align: center;
}

.sel2 {
	width: 150px;
}

.longtext1 {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 100px;
}

.longtext2 {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 80px;
}
</style>
</head>
<body>
	<center>
		<%-- 		<s:debug /> --%>
		<fieldset>
			<legend>综合检索</legend>
			<table style="max-width: 65%" id="table">
				<tr>
					<td style="width: 15%;">
						<button type="button" class="btn1" id="add">添加</button>
						<button type="button" class="btn1" id="del">删除</button>
					</td>
					<td style="width: 20%"><select id="TJName0" class="sel2">
							<option value="o.reqGJZ">关键字</option>
							<option value="o.reqJGSX">机构属性</option>
							<option value="o.department.deptName">管理处室</option>
							<option value="o.putunder.putName">归口管理部门</option>
							<option value="o.state.staName">审核状态</option>
							<option value="o.area.areaName">所在地域</option>
							<option value="o.reqJSXQHZMS">技术需求解决方式</option>
							<option value="o.reqYJLX">科技活动类型</option>
					</select></td>
					<td><input type="search" style="width: 100%;"
						placeholder="请输入检索内容" id="TJ0"></td>
					<td style="width: 10%"><select class="sel1" id="TJzq0">
							<option value="=">精确</option>
							<option value="like">模糊</option>
					</select></td>
				</tr>
			</table>
			<table>
				<tr>
					<td style="text-align: right;"><button id="jiansuo"
							class="btn">综合查询</button></td>
					<td style="width: 5%;"></td>
				</tr>
			</table>
		</fieldset>
		<table>
			<tr>
				<td>
					<hr id="mao" color="LightSlateBlue" width="100%" />
				</td>
			</tr>
		</table>
		<fieldset id="jgshow">
			<legend>结果显示</legend>
			<table>
				<thead>
					<tr style="background-color: DodgerBlue;">
						<th width="4%"><span>序号</span></th>
						<th width="12%"><span>需求编号</span></th>
						<th><span>技术需求名称</span></th>
						<th width="9%"><span>需求时限</span></th>
						<th width="11%"><span>归口管理部门</span></th>
						<th width="9%"><span>地域</span></th>
						<th width="9%"><span>机构属性</span></th>
						<th width="10%"><span>审核状态</span> <%-- <s:select list="#allStas"
									name="baseQuery.stasId" listValue="staName" listKey="staId"
									headerKey="-1" headerValue="-审核状态-"
									onchange='$("#domainForm").submit();' style="width:90px;" /> --%></th>
						<th width="5%"><span>操作</span></th>
					</tr>
				</thead>
				<tbody id="reqlist">

				</tbody>
			</table>
			总共 <span style="color: red" id="totalCount1"></span> 条记录 <br /> 每页
			<s:select list="{5,10,20,50}" name="baseQuery.pageSize"
				onchange='$("#domainForm").submit();' style="width:40px;" />
			条/第
			<!--s:textfield 默认提交值使用name属性，显示值是value，如果没有value默认使用name -->
			<!--value里面使用ognl表达式，以%{}开头 -->
			<s:textfield id="pageNo" name="baseQuery.currentPage" value="1"
				size="1" />
			页
			<button class="btn" type="submit">Go</button>
			<br />
			<div style="position: relative; top: 5px;">
				<a href='javascript:;' class='page'>首页</a>&nbsp; <a
					href='javascript:;' class='page'>上一页</a>&nbsp; <a
					href='javascript:;' class='curpage' id="yeshu"></a>&nbsp; <a
					href='javascript:;' class='page'>下一页</a>&nbsp; <a
					href='javascript:;' class='page'>末页</a>&nbsp;
			</div>
		</fieldset>
	</center>
</body>
</html>