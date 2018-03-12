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
	width: 800px;
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
	padding: 4px;
	border: 2px solid white;
}

a {
	text-decoration: none;
}

span {
	font-size: 14px;
	color: white;
}
</style>
<body>
	<br />
	<center>
		<%-- 		<s:debug /> --%>
		<s:form id="domainForm" action="role">
			<%-- <s:textfield name="baseQuery.currentPage" /> --%>
			名称: <s:textfield name="baseQuery.roleName" placeholder="名称" />&nbsp;&nbsp;
			<button href="javascript:;" onclick="go(1);" class="btn">搜索
			</button>&nbsp;&nbsp;
			<a href="role_input.action" class="add">添加</a>
			<br />
			<br />
			<table>
				<tr style="background-color: DodgerBlue;">
					<th width="10%"><span>角色编号</span></th>
					<th><span>角色名称</span></th>
					<th colspan="2" width="15%"><span>操作</span></th>
				</tr>
				<s:iterator value="pageList.rows" status="st">
					<tr
						<s:if test="roleId==#parameters['roleId'][0]">style="color: red"</s:if>
						<s:if test="#st.count%2==0">style="background-color: white;"</s:if>
						<s:else>style="background-color: LightSlateBlue;" </s:else>>
						<td style="text-align: center;">${roleId}</td>
						<td>${roleName}</td>
						<td><button type="button" class="btn1"
								onclick="updateDomain('role_input.action?roleId=${roleId}');">编辑</button></td>
						<td><button type="button" class="btn1"
								onclick="deleteDomain('role_delete.action?roleId=${roleId}');">删除</button></td>
					</tr>
				</s:iterator>
			</table>
			<%@include file="/WEB-INF/views/common/page.jsp"%>
		</s:form>
	</center>
</body>
</html>