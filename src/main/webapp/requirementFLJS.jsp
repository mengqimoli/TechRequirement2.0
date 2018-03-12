<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>河北省重大技术需求征集系统</title>
<%@include file="/WEB-INF/views/common/head.jsp"%>
<script type="text/javascript" src="/js/fljs.js"></script>
<script type="text/javascript" src="/js/tjcx.js"></script>
<style type="text/css">
fieldset {
	width: 850px;
}

legend {
	font-size: 13px;
}

table {
	border-collapse: collapse;
	margin: 0 auto;
	width: 900px;
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
	width: 200px;
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
		<s:form id="domainForm" action="requirementFLJS_getForTree">
			<s:hidden value="%{baseQuery.staId}" id="hiddenstate" />
			<s:hidden name="type" />
			<s:hidden name="code" />
			<fieldset>
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
						<td width="92px;"><s:hidden name="baseQuery.orderXQSX"
								id="orderXQSX" /><span id="sxsx"><button type="submit"
									id="xqsxsx" class="btn2">
									需求时限 <img src="/images/up.jpg">
								</button></span><span id="sxjx"><button type="submit" id="xqsxjx"
									class="btn2">
									需求时限 <img src="/images/down.jpg">
								</button></span></td>
						<td><s:hidden name="baseQuery.orderTBSJ" id="orderTBSJ" /><span
							id="sjsx"><button type="submit" id="tbsjsx" class="btn2">
									填报时间 <img src="/images/up.jpg">
								</button></span><span id="sjjx"><button type="submit" id="tbsjjx"
									class="btn2">
									填报时间 <img src="/images/down.jpg">
								</button></span></td>
					</tr>
				</table>
				<table>
					<thead>
						<tr style="background-color: DodgerBlue;">
							<th width="8%"><span>序号</span></th>
							<th width="15%"><span>需求编号</span></th>
							<th><span>技术需求名称</span></th>
							<th width="10%"><span>需求时限</span></th>
							<th width="15%"><span>审核状态</span></th>
							<th width="10%"><span>操作</span></th>
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
								<td <s:if test="state.staId==2">style="color: Green "</s:if>
									<s:if test="state.staId==3">style="color: red"</s:if>
									<s:if test="state.staId==4">style="color: Maroon "</s:if>
									<s:if test="state.staId==5">style="color: red"</s:if>
									<s:if test="state.staId==6">style="color: Purple "</s:if>
									<s:else>style="color: Purple"</s:else> >${state.staName}</td>
								<td style="text-align: center;"><button type="button"
										class="btn1"
										onclick="updateDomain('requirementFLJS_input.action?reqId=${reqId}');">查看</button></td>
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