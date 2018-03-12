<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

<frameset cols="200,*" rows="*" frameborder="no" border="0" framespacing="0">
	<frame src="/WEB-INF/views/requirementFLJS/1LeftFrm.jsp/admin/1LeftFrm.jsp" name="searchLeftFrm" id="searchLeftFrm" scrolling="auto" noresize="noresize">
	<frameset rows="168,*" cols="*" frameborder="no" border="0" framespacing="0">
		<frame src="<%=path %>/admin/1TopFrm.jsp" name="searchTopFrm" id="searchTopFrm" scrolling="auto" noresize="noresize">
		<frame src="<%=path %>/admin/1RightFrm.jsp" name="searchRightFrm" id="searchRightFrm" scrolling="auto" noresize="noresize">
	</frameset>
</frameset>

<noframes>
	<body>
	</body>
</noframes>
</html>
