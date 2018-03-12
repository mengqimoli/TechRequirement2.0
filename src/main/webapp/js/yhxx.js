$(function() {
	$("#jgxx").css({color:"white"});
	$("#jbxx").css({color:"Olive"});
	$("#jbxx").click(function() {
		$("#jbxx_jsp").css('display', 'block');
		$("#jgxx_jsp").css('display', 'none');
		$("#jgxx").css({color:"white"});
		$("#jbxx").css({color:"Olive"});
	})
	$("#jgxx").click(function() {
		$("#jgxx_jsp").css('display', 'block');
		$("#jbxx_jsp").css('display', 'none');
		$("#jbxx").css({color:"white"});
		$("#jgxx").css({color:"Olive"});
	})
	// 固定电话
	$("#userGDDH").keyup(function() { // keyup事件处理
		$(this).val($(this).val().replace(/\D|^0/g, ''))
	}).bind("paste", function() { // CTR+V事件处理
		$(this).val($(this).val().replace(/\D|^0/g, ''))
	}).css("ime-mode", "disabled"); // CSS设置输入法不可用
	// 移动电话
	$("#userYDDH").keyup(function() { // keyup事件处理
		$(this).val($(this).val().replace(/\D|^0/g, ''))
	}).bind("paste", function() { // CTR+V事件处理
		$(this).val($(this).val().replace(/\D|^0/g, ''))
	}).css("ime-mode", "disabled"); // CSS设置输入法不可用
	// 传真
	$("#userCZ").keyup(function() { // keyup事件处理
		$(this).val($(this).val().replace(/\D|^0/g, ''))
	}).bind("paste", function() { // CTR+V事件处理
		$(this).val($(this).val().replace(/\D|^0/g, ''))
	}).css("ime-mode", "disabled"); // CSS设置输入法不可用
	// 基本信息保存按钮
})
function checkjb() {
	var flag = 0;
	var re = /^[0-9]{11}$/;
	var userSJ = $("#userSJ").val();
	if (!re.test(userSJ)) {
		$("#pdSJ").html("请输入正确的手机号");
		flag = 1;
	}
	var strReg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;// 判定邮箱是否正确
	var userYX = $("#userYX").val();
	if (strReg.test(userYX) == false) {
		$("#pdYX").html("请输入正确的邮箱");
		flag = 1;
	}
	if (flag == 1) {
		return false;
	} else {
		return true;
	}
}
