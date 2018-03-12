<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>河北省重大技术需求征集系统</title>
<%@include file="/WEB-INF/views/common/head.jsp"%>
<style type="text/css">
.grey {
	background-color: SkyBlue;
}

.bgzuo {
	width: 100px;
}

.xx {
	color: red;
	font-size: 12px;
}

.title {
	color: black;
	font-size: 18px;
}

.zhushi {
	color: red;
	font-size: 14px;
}

.tbright {
	text-align: right;
}

table {
	border-collapse: collapse;
	margin: 0 auto;
	width: 700px;
}

table, th, td {
	border: 0px solid black;
}

td {
	height: 30px;
}

input {
	width: 200px;
}

.btn {
	width: 80px;
	font-size: 15px;
	background-color: DeepSkyBlue;
	position: relative;
	top: 20px;
	right: 50px;
	color: white;
}
</style>
</head>
<body>
	<br />
	<s:form action="user_save">
		<s:hidden name="user.userId" />
		<table>
			<tr>
				<td class="grey"><span id="title">用户名和密码</span></td>
			</tr>
		</table>
		<table>
			<tr>
				<td class="bgzuo"></td>
				<td class="tbright" width="120px;">用户名：</td>
				<td><s:textfield id="userName" name="userName"
						placeholder="用户名" /> <span class="xx">*
						用户名不包括~,*,/等特殊符号(用于登录)</span></td>
			</tr>
			<tr>
				<td class="bgzuo"></td>
				<td class="tbright">密码：</td>
				<td><s:password id="userPwd" name="userPwd" /> <span
					class="xx">* 6-20位的字母和数字</span></td>

			</tr>
			<tr>
				<td class="bgzuo"></td>
				<td class="tbright">确认密码：</td>
				<td><s:password id="userPwd1" name="userPwd1" /> <span
					class="xx">* 输入的密码必须一致</span></td>
			</tr>
		</table>
		<!--用户信息 -->
		<table>
			<tr>
				<td class="grey"><span id="title">用户信息</span></td>
			</tr>
		</table>
		<table>
			<tr>
				<td class="bgzuo"></td>
				<td class="tbright">真实姓名：</td>
				<td><s:textfield id="userZSXM" name="userZSXM" /> <span
					class="xx">* 真实名字(不可更改)</span></td>
			</tr>
			<tr>
				<td class="bgzuo"></td>
				<td class="tbright" width="120px;">身份证号：</td>
				<td><s:textfield id="userSFZ" name="userSFZ" /> <span
					class="xx">* 正确的身份证号(不可更改)</span></td>
			</tr>
			<tr>
				<td class="bgzuo"></td>
				<td class="tbright">电子邮箱：</td>
				<td><s:textfield id="userYX" name="userYX" /> <span class="xx">*
						正确的邮箱(非常重要)</span></td>
			</tr>
			<tr>
				<td class="bgzuo"></td>
				<td class="tbright">手机：</td>
				<td><s:textfield id="userSJ" name="userSJ" /> <span class="xx">*
						正确的手机号</span></td>
			</tr>
		</table>
		<!--公司信息-->
		<table>
			<tr>
				<td class="grey"><span id="title">机构信息</span></td>
			</tr>
		</table>
		<table>
			<tr>
				<td class="bgzuo"></td>
				<td class="tbright" width="120px;">机构代码：</td>
				<td><s:textfield id="userJGDM" name="userJGDM" /> <span
					class="xx">* 此代码为唯一(不可更改)</span></td>
			</tr>
			<tr>
				<td class="bgzuo"></td>
				<td class="tbright">机构名称：</td>
				<td><s:textfield id="userJGMC" name="userJGMC" /> <span
					class="xx">* 工商局注册时登记的机构全称</span></td>
			</tr>
			<tr>
				<td class="bgzuo"></td>
				<td class="tbright">邮政编码：</td>
				<td><s:textfield id="userYZBM" name="userYZBM" /> <span
					class="xx">* 公司所在地的邮政编码</span></td>
			</tr>
			<tr>
				<td style="text-align: center;" colspan="3"><s:submit
						class="btn" value="注册" onclick="return Check1()" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>