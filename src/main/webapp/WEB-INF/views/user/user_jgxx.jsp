<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript">
	$(function() {
		var zishu = $("#userJGJJ").val().length;
		$("#jgjjNum").html(zishu);
	})
	/* **************************************************************************邮箱判定 */
	function usercheckDZXX() {
		var strReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;// 判定邮箱是否正确
		var userDZXX = document.getElementById("userDZXX");
		if (!strReg.test(userDZXX.value)) {
			userDZXX.style.backgroundColor = 'red';
			document.getElementById("btnjgsave").disabled = true;
		} else {
			userDZXX.style.backgroundColor = 'white';
			document.getElementById("btnjgsave").disabled = false;
		}
	}
	/* **************************************************************************手机判定 */
	function usercheckSJ() {
		var re = /^[0-9]{11}$/;
		var userYDDH = document.getElementById("userYDDH");
		if (!re.test(userYDDH.value)) {
			userYDDH.style.backgroundColor = 'red';
			document.getElementById("btnjgsave").disabled = true;
		} else {
			userYDDH.style.backgroundColor = 'white';
			document.getElementById("btnjgsave").disabled = false;
		}
	}
	/* *****************************************************************实时显示机构简介的字数 */
	function showJGJJ() {
		var maxl = 500;
		var count1 = 0;
		var textIIntro = document.getElementById("userJGJJ").value;
		var lenIIntro = textIIntro.length;
		for (var i = 0; i < lenIIntro; i++) {
			var enter1 = textIIntro.substr(i, 1);
			if (enter1 == "\n") {
				count1++;
			}
		}
		lenIIntro -= count1;
		var showIIntro = lenIIntro;
		if (showIIntro > maxl) {
			document.getElementById("userJGJJ").value = document
					.getElementById("userJGJJ").value.substr(0, maxl - 1);
		}
		document.getElementById("jgjjNum").innerHTML = showIIntro;
	}
	/* **************************************************************************网址判定 */
	function usercheckDWWZ() {
		var strUrl = /http(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w- .\/?%&=]*)?/;// 网址
		var userDWWZ = document.getElementById("userDWWZ");
		if (strUrl.test(userDWWZ.value)) {
			userDWWZ.style.backgroundColor = 'white';
		}
	}
	function checkjg() {
		var userTXDZ = $("#userTXDZ").val();
		var userDZXX = $("#userDZXX").val();
		var userFRDB = $("#userFRDB").val();
		var userLXR = $("#userLXR").val();
		var userYDDH = $("#userYDDH").val();
		var userJGJJ = $("#userJGJJ").val();
		var userDWWZ = $("#userDWWZ").val();
		var strUrl = /http(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w- .\/?%&=]*)?/;// 网址
		if (!strUrl.test(userDWWZ)) {
			document.getElementById("userDWWZ").style.backgroundColor = 'red';
			alert("网址输入错误");
			return false;
		}
		// 机构属性
		var userJGSX = $("input[name=userJGSX]");
		var jssx = 0;
		for (var i = 0; i < userJGSX.length; i++) {
			if (userJGSX[i].checked) {
				jssx = 1;
			}
		}
		if (jssx == 0) {
			alert("请选择机构属性");
			return false;
		}
		if (userTXDZ == "" || userDZXX == "" || userFRDB == "" || userLXR == ""
				|| userYDDH == "" || userJGJJ == "") {
			alert("带 * 的为必填内容");
			return false;
		} else {
			var sure = confirm("确认保存吗?");
			if (sure == true) {
				return true;
			} else {
				return false;
			}
		}
	}
</script>
<table>
	<tr>
		<td style="width: 120px;">
			<div>
				<span>*&nbsp;</span>机构全称
			</div>
		</td>
		<td style="width: 40%;"><s:textfield name="userJGMC" /></td>
		<td style="width: 120px;">
			<div>归口管理部门</div>
		</td>
		<td><s:select list="#allPuts" name="putunder.putId" id="putunder"
				listValue="putName" listKey="putId" headerKey="-1"
				headerValue="-----------------请选择-----------------" /></td>
	</tr>
	<tr>
		<td>
			<div>
				<span>*&nbsp;</span>通讯地址
			</div>
		</td>
		<td><s:textfield name="userTXDZ" id="userTXDZ"
				placeholder="例如:石家庄北二环东路17号" /></td>
		<td>
			<div>
				<span>*&nbsp;</span>所在地域
			</div>
		</td>
		<td><s:select list="#allAreas" name="area.areaId" id="area"
				listValue="areaName" listKey="areaId" headerKey="-1"
				headerValue="-----------------请选择-----------------" /></td>
		<%-- 		<td><s:textfield name="area.areaName" id="area_id" --%>
		<%-- 				placeholder="输入地域编号" /></td> --%>
	</tr>
	<tr>
		<td>
			<div>单位网址</div>
		</td>
		<td><s:textfield name="userDWWZ" id="userDWWZ"
				placeholder="例如:http(s)://www.stdu.edu.cn/" style="width: 99.5%"
				onblur="usercheckDWWZ()" /></td>
		<td>
			<div>
				<span>*&nbsp;</span>电子信箱
			</div>
		</td>
		<td><s:textfield name="userDZXX" id="userDZXX"
				placeholder="例如:123456@qq.com" onblur="usercheckDZXX()" /></td>
	</tr>
	<tr>
		<td>
			<div>
				<span>*&nbsp;</span>法人代表
			</div>
		</td>
		<td><s:textfield name="userFRDB" id="userFRDB"
				placeholder="例如:张三" /></td>
		<td>
			<div>邮政编码</div>
		</td>
		<td><s:textfield name="userYZBM" id="userYZBM" /></td>
	</tr>
	<tr>
		<td>
			<div>
				<span>*&nbsp;</span>联系人
			</div>
		</td>
		<td><s:textfield name="userLXR" id="userLXR" placeholder="例如:李四" /></td>
		<td>
			<div>固定电话</div>
		</td>
		<td><s:textfield name="userGDDH" id="userGDDH"
				placeholder="例如:0311-1234567" /></td>
	</tr>
	<tr>
		<td>
			<div>
				<span>*&nbsp;</span>手 机
			</div>
		</td>
		<td><s:textfield name="userYDDH" id="userYDDH"
				placeholder="例如:12345678910" onblur="usercheckSJ()" /></td>
		<td>
			<div>传 真</div>
		</td>
		<td><s:textfield name="userCZ" id="userCZ" placeholder="传真" /></td>
	</tr>
	<tr>
		<td style="height: 40px;">
			<div>
				<span>*&nbsp;</span>机构属性
			</div>
		</td>
		<td colspan="3"><s:radio name="userJGSX" id="userJGSX"
				style="width:10px; height:10px;"
				list="#{'企业':'企业','高等院校':'高等院校','研究机构':'研究机构','其它':'其它'}" /></td>
	</tr>
	<tr>
		<td colspan="4" style="border-bottom: none;"><div
				style="text-align: left">
				<span>&nbsp;&nbsp;&nbsp;&nbsp;*&nbsp;</span>
				机构简介（主要包括基本情况、现有研究基础等，限500字以内） <span id="jgjjNum">0</span><span
					style="color: black">/500</span><br />
			</div> <s:textarea name="userJGJJ" id="userJGJJ" onkeyup="showJGJJ()"
				rows="5" cols="107" placeholder="例如:xxx公司/企业/机构成立于xxxx年" /></td>
	</tr>
</table>
<br />
<s:submit id="btnjgsave" class="btn" value="保存"
	onclick="return checkjg()" />