<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>河北省重大技术需求征集系统</title>
<%@include file="/WEB-INF/views/common/head.jsp"%>
<script type="text/javascript" src="/js/tjcx.js"></script>
<script type="text/javascript">
	$(function() {
		$("html,body").animate({
			scrollTop : $("#mao").offset().top
		}, 0);
		$("#xsqb").click(function() {
			window.location.href = "requirementTJCX.action"
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
.btnn {
	font-size: 18px;
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

select {
	width: 250px;
}

.longtext {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 300px;
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
		<s:form id="domainForm" action="requirementTJCX">
			<fieldset>
				<legend>统计检索</legend>
				<table>
					<tr>
						<td style="width: 32%;">机构名称: <s:textfield
								name="baseQuery.reqJGMC" placeholder="机构名称" size="37" /></td>
						<td style="width: 32%;">需求名称: <s:textfield
								name="baseQuery.reqJSXQMC" placeholder="技术需求名称" size="37" /></td>
						<td></td>
					</tr>
					<tr>
						<td>关键字:&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield
								name="baseQuery.reqGJZ" placeholder="关键字" size="37" />
						</td>
						<td>机构属性: <s:select name="baseQuery.reqJGSX"
								onchange='$("#domainForm").submit();'
								list="#{'':'-------------------请选择-------------------','企业':'企业','高等院校':'高等院校','研究机构':'研究机构','其他':'其他'}" />
						</td>
						<td></td>
					</tr>
					<tr>

						<td>管理处室: <s:select list="#allDepts" name="baseQuery.deptId"
								listValue="deptName" listKey="deptId" headerKey="-1"
								headerValue="-------------------请选择-------------------"
								onchange='$("#domainForm").submit();' /></td>
						<td>归口管理: <s:select list="#allPuts" name="baseQuery.putId"
								listValue="putName" listKey="putId" headerKey="-1"
								headerValue="-------------------请选择-------------------"
								onchange='$("#domainForm").submit();' /></td>
						<td></td>
					</tr>
					<tr>
						<td>所在地域: <s:select list="#allAreas" name="baseQuery.areaId"
								listValue="areaName" listKey="areaId" headerKey="-1"
								headerValue="-------------------请选择-------------------"
								onchange='$("#domainForm").submit();' /></td>
						<td>审核状态: <s:select list="#allStas" name="baseQuery.staId"
								listValue="staName" listKey="staId" headerKey="-1"
								headerValue="-------------------请选择-------------------"
								onchange='$("#domainForm").submit();' /></td>
						<td></td>
					</tr>
					<tr>
						<td>解决方式: <s:select name="baseQuery.reqJSXQHZMS"
								onchange='$("#domainForm").submit();'
								list="#{'':'-------------------请选择-------------------','独立研发':'独立研发','委托研发':'委托研发','合作研发':'合作研发','其他':'其他'}" /></td>
						<td>活动类型: <s:select name="baseQuery.reqYJLX"
								onchange='$("#domainForm").submit();'
								list="#{'':'-------------------请选择-------------------','基础研究':'基础研究','应用研究':'应用研究','试验发展':'试验发展','研究与试验发展成果应用':'研究与试验发展成果应用','技术推广与科技服务':'技术推广与科技服务','生产性活动':'生产性活动'}" /></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td style="text-align: center;"><button href="javascript:;"
								onclick="go(1);" id="btnchjs" class="btn">综合查询</button></td>
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
			<s:hidden value="%{baseQuery.staId}" id="hiddenstate" />
			<fieldset id="jgshow">
				<legend>结果显示</legend>
				<table>
					<tr>
						<td width="117px;"><s:hidden name="baseQuery.orderJSXQMC"
								id="orderJSXQMC" /> <span id="mcsx"><button
									type="submit" id="jsxqmcsx" class="btn2">
									技术需求名称 <img src="/images/up.jpg">
								</button></span> <span id="mcjx"><button type="submit" id="jsxqmcjx"
									class="btn2">
									技术需求名称 <img src="/images/down.jpg">
								</button></span></td>
						<td width="92px;"><s:hidden name="baseQuery.orderTBSJ"
								id="orderTBSJ" /><span id="sjsx"><button type="submit"
									id="tbsjsx" class="btn2">
									填报时间 <img src="/images/up.jpg">
								</button></span><span id="sjjx"><button type="submit" id="tbsjjx"
									class="btn2">
									填报时间 <img src="/images/down.jpg">
								</button></span></td>
						<td><s:hidden name="baseQuery.orderXQSX" id="orderXQSX" /><span
							id="sxsx"><button type="submit" id="xqsxsx" class="btn2">
									需求时限 <img src="/images/up.jpg">
								</button></span><span id="sxjx"><button type="submit" id="xqsxjx"
									class="btn2">
									需求时限 <img src="/images/down.jpg">
								</button></span></td>
						<td style="text-align: left;"><button type="button"
								class="btnn"
								onclick="updateDomain('requirementTJCX_chart3.action');">2D饼图</button>
							<button type="button" class="btnn"
								onclick="updateDomain('requirementTJCX_chart1.action');">3D饼图</button>
							<button type="button" class="btnn"
								onclick="updateDomain('requirementTJCX_chart2.action');">percent饼图</button>
						</td>
					</tr>
				</table>
				<table>
					<thead>
						<tr style="background-color: DodgerBlue;">
							<th width="4%"><span>序号</span></th>
							<th width="12%"><span>需求编号</span></th>
							<th><span>技术需求名称</span></th>
							<th width="9%"><span>需求时限</span></th>
							<th width="11%"><span>归口管理部门</span></th>
							<th width="9%"><span>地域</span></th>
							<th width="9%"><span>管理处室</span></th>
							<th width="10%"><s:select list="#allStas"
									name="baseQuery.stasId" listValue="staName" listKey="staId"
									headerKey="-1" headerValue="-审核状态-"
									onchange='$("#domainForm").submit();' style="width:90px;" /></th>
							<th width="5%"><span>操作</span></th>
						</tr>
					</thead>
					<tbody id="reqlist">
						<s:iterator value="pageList.rows" status="st">
							<tr
								<s:if test="#st.count%2==0">style="background-color: white;"</s:if>
								<s:else>style="background-color: LightSlateBlue;" </s:else>>
								<td style="text-align: center;"><s:property
										value='#st.count' /></td>
								<td>${reqNum}</td>
								<td><div class="longtext" title="${reqJSXQMC}">${reqJSXQMC}</div></td>
								<td>${reqQSXQNF}-${reqJZXQNF}</td>
								<td><div class="longtext1" title="${putunder.putName}">${putunder.putName}</div></td>
								<td><div class="longtext2" title="${area.areaName}">${area.areaName}</div></td>
								<td><div class="longtext2" title="${department.deptName}">${department.deptName}</div></td>
								<td <s:if test="state.staId==2">style="color: Green "</s:if>
									<s:if test="state.staId==3">style="color: red"</s:if>
									<s:if test="state.staId==4">style="color: Maroon "</s:if>
									<s:if test="state.staId==5">style="color: red"</s:if>
									<s:if test="state.staId==6">style="color: Purple "</s:if>>${state.staName}</td>
								<td style="text-align: center;"><button type="button"
										class="btn1"
										onclick="updateDomain('requirementTJCX_input.action?reqId=${reqId}');">查看</button></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
				<%@include file="/WEB-INF/views/common/page.jsp"%>
			</fieldset>
		</s:form>
	</center>
</body>
</html>