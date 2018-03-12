<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>河北省重大技术需求征集系统</title>
<%@include file="/WEB-INF/views/common/head.jsp"%>
<style type="text/css">
table {
	border-collapse: collapse;
	margin: 0 auto;
	width: 1100px;
}

table, th, td {
	border: 1px solid white;
}

td {
	text-align: center;
	height: 30px;
}

.btn {
	font-size: 15px;
	background-color: DeepSkyBlue;
	color: white;
}

a {
	text-decoration: none;
	color: MediumBlue;
}

span {
	font-size: 15px;
	color: white;
}

div {
	text-align: center;
}
</style>
</head>
<body>
	<center>
		<s:debug />
		<br />
		<s:form action="user" id="domainForm">
			<s:textfield name="baseQuery.currentPage" />
			用户名:
			<s:textfield name="baseQuery.userName" placeholder="用户名" />
			机构名称:
			<s:textfield name="baseQuery.userJGMC" placeholder="机构名称" />
			<!-- 角色: -->
			<%-- <s:select list="#allDepts" name="baseQuery.deptId" listValue="name" --%>
			<%-- listKey="id" headerKey="-1" headerValue="--请选择--" /> --%>
			<a href="javascript:;" onclick="go(1);"> 搜索 </a>
			<a href="user_input.action">添加</a>
			<br />
			<br />
			<table>
				<tr style="background-color: DodgerBlue;">
					<td><span>用户名</span></td>
					<td><span>密码</span></td>
					<td><span>Email</span></td>
					<td><span>机构名称</span></td>
					<td><span>角色</span></td>
					<td colspan="2"><span>操作</span></td>
					<td><span>密码</span></td>
				</tr>
				<s:iterator value="pageList.rows">
					<tr>
						<td>${userName}</td>
						<td>${userPwd}</td>
						<td>${userYX}</td>
						<td>${userJGMC}</td>
						<td>${userJS}</td>
						<td><a href="user_input?user.userId=${userId}">编辑</a></td>
						<td><a href="user_delete?user.userId=${userId}">删除</a></td>
						<td><a href="user_CZ?user.userId=${userId}">重置</a></td>
					</tr>
				</s:iterator>
			</table>
			<br />
			<%@include file="/WEB-INF/views/common/page.jsp"%>
		</s:form>
	</center>
</body>
</html>