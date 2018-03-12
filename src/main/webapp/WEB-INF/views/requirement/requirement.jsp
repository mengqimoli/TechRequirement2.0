<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>河北省重大技术需求征集系统</title>
<%@include file="/WEB-INF/views/common/head.jsp"%>
</head>
<style type="text/css">
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

.add {
	font-size: 15px;
	background-color: DeepSkyBlue;
	color: white;
	padding: 3px;
	border: 2px solid white;
}

a {
	text-decoration: none;
}

span {
	font-size: 14px;
	color: white;
}

.longtext {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 250px;
}
</style>
<body>
	<br />
	<center>
		<%-- 		<s:debug /> --%>
		<s:form id="domainForm" action="requirement">
			<%-- <s:textfield name="baseQuery.currentPage" /> --%>
			技术需求名称: <s:textfield name="baseQuery.reqJSXQMC" placeholder="技术需求名称" />&nbsp;&nbsp;
			技术需求解决方式: <s:select name="baseQuery.reqJSXQHZMS"
				onchange='$("#domainForm").submit();'
				list="#{'':'--------请选择--------','独立研发':'独立研发','委托研发':'委托研发','合作研发':'合作研发','其他':'其他'}" />&nbsp;&nbsp;
			科技活动类型: <s:select name="baseQuery.reqYJLX"
				onchange='$("#domainForm").submit();'
				list="#{'':'-----------请选择-----------','基础研究':'基础研究','应用研究':'应用研究','试验发展':'试验发展','研究与试验发展成果应用':'研究与试验发展成果应用','技术推广与科技服务':'技术推广与科技服务','生产性活动':'生产性活动'}" />&nbsp;&nbsp;
			<button href="javascript:;" onclick="go(1);" class="btn">搜索
			</button>&nbsp;&nbsp;
			<a href="requirement_input.action" class="add">添加技术需求</a>
			<br />
			<br />
			<table>
				<tr style="background-color: DodgerBlue;">
					<th width="12%"><span>需求编号</span></th>
					<th><span>技术需求名称</span></th>
					<th width="10%"><span>需求时限</span></th>
					<th width="12%"><span>技术需求解决方式 </span></th>
					<th width="12%"><span>科技活动类型</span></th>
					<th width="10%"><span></span> <s:select list="#allStas"
							name="baseQuery.staId" listValue="staName" listKey="staId"
							headerKey="-1" headerValue="-需求状态-"
							onchange='$("#domainForm").submit();' style="width:90px;" /></th>
					<th colspan="2" width="11%"><span>操作</span></th>
				</tr>
				<s:iterator value="pageList.rows" status="st">
					<tr
						<s:if test="reqId==#parameters['reqId'][0]">style="color: red"</s:if>
						<s:if test="#st.count%2==0">style="background-color: white;"</s:if>
						<s:else>style="background-color: LightSlateBlue;" </s:else>>
						<td>${reqNum}</td>
						<td><div class="longtext" title="${reqJSXQMC}">${reqJSXQMC}</div></td>
						<td>${reqQSXQNF}-${reqJZXQNF}</td>
						<td>${reqJSXQHZMS}</td>
						<td>${reqYJLX}</td>
						<td <s:if test="state.staId==2">style="color: Green "</s:if>
							<s:if test="state.staId==3">style="color: red"</s:if>
							<s:if test="state.staId==4">style="color: Maroon "</s:if>
							<s:if test="state.staId==5">style="color: red"</s:if>
							<s:if test="state.staId==6">style="color: Purple "</s:if>>${state.staName}</td>
						<s:if test="state.staId==1">
							<td><button type="button" class="btn1"
									onclick="updateDomain('requirement_input.action?reqId=${reqId}');">修改</button></td>
						</s:if>
						<s:else>
							<td><button type="button" class="btn1"
									onclick="updateDomain('requirementTJCX_input.action?reqId=${reqId}');">查看</button></td>
						</s:else>
						<td><button type="button" class="btn1"
								onclick="deleteDomain('requirement_delete.action?reqId=${reqId}');">删除</button></td>
					</tr>
				</s:iterator>
			</table>
			<%@include file="/WEB-INF/views/common/page.jsp"%>
		</s:form>
	</center>
</body>
</html>