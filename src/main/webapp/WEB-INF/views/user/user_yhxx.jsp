<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>河北省重大技术需求征集系统</title>
<%@include file="/WEB-INF/views/common/head.jsp"%>
<script type="text/javascript" src="/js/yhxx.js"></script>
<style type="text/css">
table {
	border-collapse: collapse;
	margin: 0 auto;
	width: 900px;
}

table, th, td {
	border: 1px solid black;
}

td {
	text-align: left;
	height: 40px;
}

input {
	/* background: none transparent scroll repeat 0% 0%; */
	width: 99.5%;
	height: 40px;
	border: none;
}

div {
	text-align: center
}

span {
	color: red;
	font-size: 12px;
}

.btn {
	width: 60px;
	height: 30px;
	font-size: 16px;
	background-color: DeepSkyBlue;
	color: white;
}

.tbright {
	text-align: right;
}

a {
	text-decoration: none;
	font-size: 20px;
}
</style>
</head>
<body>
	<br />
	<center>
<%-- 				<s:debug /> --%>
		<s:form action="modify_save" id="modify_yhxxForm">
			<s:hidden id="userId" name="userId" />
			<a href="#" id="jbxx">基本信息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#" id="jgxx">机构信息</a>
			<br />
			<br />
			<div id="jbxx_jsp"><%@include
					file="/WEB-INF/views/user/user_jbxx.jsp"%></div>
			<div id="jgxx_jsp" style="display: none"><%@include
					file="/WEB-INF/views/user/user_jgxx.jsp"%></div>
			<br />
		</s:form>
	</center>
</body>
</html>