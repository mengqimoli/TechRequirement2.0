<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP '1.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<%@include file="/WEB-INF/views/common/head.jsp"%>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<frameset cols="200,*" rows="*" frameborder="no" border="0"
	framespacing="0">
	<frame src="/1LeftFrm.jsp" name="searchLeftFrm" id="searchLeftFrm"
		scrolling="auto" noresize="noresize">
	<frame src="/requirementFLJS.jsp" name="searchRightFrm" id="searchRightFrm"
		scrolling="auto" noresize="noresize">
</frameset>

<noframes>
	<body>
	</body>
</noframes>
</html>
