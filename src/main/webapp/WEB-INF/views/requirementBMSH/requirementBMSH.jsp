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
	font-size: 13px;
	background-color: DeepSkyBlue;
	color: white;
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
		<s:form id="domainForm" action="requirementBMSH">
			<font size="5px;">未审核征集表清单</font>
			<table>
				<tr style="background-color: DodgerBlue;">
					<th width="15%"><span>需求编号</span></th>
					<th><span>技术需求名称</span></th>
					<th width="10%"><span>需求时限</span></th>
					<th width="15%"><span>归口管理部门</span></th>
					<th width="10%"><span>地域</span></th>
					<th width="10%"><span>管理处室</span></th>
					<th width="8%"><span>操作</span></th>
				</tr>
				<s:iterator value="pageList.rows" status="st">
					<tr
						<s:if test="#st.count%2==0">style="background-color: white;"</s:if>
						<s:else>style="background-color: LightSlateBlue;" </s:else>>
						<td>${reqNum}</td>
						<td><div class="longtext" title="${reqJSXQMC}">${reqJSXQMC}</div></td>
						<td>${reqQSXQNF}-${reqJZXQNF}</td>
						<td>${putunder.putName}</td>
						<td>${area.areaName}</td>
						<td>${department.deptName}</td>
						<td><button type="button" class="btn"
								onclick="updateDomain('requirementBMSH_input.action?reqId=${reqId}');">审核</button></td>
					</tr>
				</s:iterator>
			</table>
			<%@include file="/WEB-INF/views/common/page.jsp"%>
		</s:form>
	</center>
</body>
</html>