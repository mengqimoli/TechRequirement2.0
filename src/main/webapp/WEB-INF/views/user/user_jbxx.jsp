<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript">
	var xhr;
	//统一获取XMLHttpRequest的方法
	function createXhr() {
		try {
			xhr = new XMLHttpRequest();
		} catch (e) {
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	function checkName() {
		var reg = /^[0-9a-zA-Z]+$/; //数字和字母
		var userName = document.getElementById("userName").value;
		var pdName = document.getElementById("pdName");
		createXhr();
		var userId = document.getElementById("userId").value;
		xhr.open("GET", "/user_checkName.action?userId=" + userId
				+ "&userName=" + userName + "&" + new Date().getTime(), true);
		xhr.onreadystatechange = function() {//匿名函数
			if (xhr.readyState == 4 && xhr.status == 200) {
				var text = xhr.responseText;
				if (userName.length > 20 || userName.length < 6
						|| !reg.test(userName)) {
					pdName.innerHTML = "请输入6-20位数字或字母";
					document.getElementById("btnjbsave").disabled = true;
				} else if ("false" == text) {// 用户名已经存在
					pdName.innerHTML = "<font color='red'>用户名已经存在</font>";
					document.getElementById("btnjbsave").disabled = true;
				} else {
					pdName.innerHTML = "<font color='green'>√</font>";
					document.getElementById("btnjbsave").disabled = false;
				}
			}
		}
		xhr.send();
	}
</script>
<script type="text/javascript">
	function checkSJ() {
		var re = /^[0-9]{11}$/;
		var userSJ = document.getElementById("userSJ").value;
		var pdSJ = document.getElementById("pdSJ");
		if (re.test(userSJ) == false) {
			pdSJ.innerHTML = "请输入正确的手机号";
		} else {
			pdSJ.innerHTML = "<font color='green'>√</font>";
		}
	}
</script>
<script type="text/javascript">
	function checkYX() {
		var strReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;// 判定邮箱是否正确
		var userYX = document.getElementById("userYX").value;
		var pdYX = document.getElementById("pdYX");
		if (!strReg.test(userYX)) {
			pdYX.innerHTML = "请输入正确的邮箱";
		} else {
			pdYX.innerHTML = "<font color='green'>√</font>";
		}
	}
</script>
<table style="border: none">
	<tr>
		<td class="tbright" width="35%;" style="border: none">用户名：</td>
		<td style="border: none"><s:textfield id="userName"
				name="userName" placeholder="用户名" onblur="checkName()"
				style="width:50%;height:25px;border:1px solid Gray;" /> <span id="pdName"> * </span></td>
	</tr>
	<tr>
		<td class="tbright" style="border: none">真实姓名：</td>
		<td style="border: none"><s:textfield id="userZSXM"
				name="userZSXM" readonly="true" style="width:50%;height:25px;border:1px solid Gray;" /> <span
			id="pdZSXM">*</span></td>
	</tr>
	<tr>
		<td class="tbright" width="120px;" style="border: none">身份证号：</td>
		<td style="border: none"><s:textfield id="userSFZ" name="userSFZ"
				readonly="true" style="width:50%;height:25px;border:1px solid Gray;" /> <span id="pdSFZ">*</span></td>
	</tr>
	<tr>
		<td class="tbright" style="border: none">电子邮箱：</td>
		<td style="border: none"><s:textfield id="userYX" name="userYX"
				onblur="checkYX()"
				style="width:50%;height:25px;border:1px solid Gray;" /> <span
			id="pdYX"> * </span></td>
	</tr>
	<tr>
		<td class="tbright" style="border: none">手机：</td>
		<td style="border: none"><s:textfield id="userSJ" name="userSJ"
				onblur="checkSJ()" style="width:50%;height:25px;border:1px solid Gray;" /> <span
			id="pdSJ"> * </span></td>
	</tr>
	<tr>
		<td class="tbright" style="border: none">机构代码：</td>
		<td style="border: none"><s:textfield id="userJGDM"
				name="userJGDM" style="width:50%;height:25px;border:1px solid Gray;" readonly="true" /> <span
			id="pdJGDM"> * </span></td>
	</tr>
	<tr>
		<td style="text-align: center; border: none" colspan="3"><s:submit
				id="btnjbsave" class="btn" value="保存" onclick="return checkjb()" />
	</tr>
</table>
