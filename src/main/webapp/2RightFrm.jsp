<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!--     <base href="<%=basePath%>"> -->

<title>My JSP '2RightFrm.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<%@include file="/WEB-INF/views/common/head.jsp"%>

</head>

<body>
	<s:debug />
	<s:if
		test="#fljsresults.skillinfoSearch == null || #fljsresults.skillinfoSearch.size() == 0">
    	没有信息
    </s:if>
	<s:else>
		<table class="tablelist">
			<tr>
				<th>需求名称</th>
				<th>提交时间</th>
				<th>类型</th>
				<th>操作</th>
			</tr>
			<s:iterator value="fljsresults" status="st">
				<tr>
					<td>${s_name}</td>
					<td>#</td>
					<td>${s_type}</td>
					<td><a href="skillinfo-show?s_id=${s_id}"
						style="color: #0080FF" target="frmright">查看</a></td>
				</tr>
			</s:iterator>
		</table>
	</s:else>
</body>
</html>
