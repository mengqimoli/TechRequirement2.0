$(function() {
	// 需求技术名称排序
	if ($("#orderJSXQMC").val() == "") {
		$("#mcjx").css('display', 'none');
	} else if ($("#orderJSXQMC").val() == "asc") {
		$("#mcsx").css('display', 'none');
		$("#mcjx").css('display', 'block');
		$("#orderJSXQMC").val("");
	} else {
		$("#mcsx").css('display', 'block');
		$("#mcjx").css('display', 'none');
		$("#orderJSXQMC").val("");
	}
	$("#jsxqmcsx").click(function() {
		$("#orderJSXQMC").val("asc");
	});
	$("#jsxqmcjx").click(function() {
		$("#orderJSXQMC").val("desc");
	});
	// 需求时限排序
	if ($("#orderXQSX").val() == "") {
		$("#sxjx").css('display', 'none');
	} else if ($("#orderXQSX").val() == "asc") {
		$("#sxsx").css('display', 'none');
		$("#sxjx").css('display', 'block');
		$("#orderXQSX").val("");
	} else {
		$("#sxsx").css('display', 'block');
		$("#sxjx").css('display', 'none');
		$("#orderXQSX").val("");
	}
	$("#xqsxsx").click(function() {
		$("#orderXQSX").val("asc");
	});
	$("#xqsxjx").click(function() {
		$("#orderXQSX").val("desc");
	});
	// 填报时间排序
	if ($("#orderTBSJ").val() == "") {
		$("#sjjx").css('display', 'none');
	} else if ($("#orderTBSJ").val() == "asc") {
		$("#sjsx").css('display', 'none');
		$("#sjjx").css('display', 'block');
		$("#orderTBSJ").val("");
	} else {
		$("#sjsx").css('display', 'block');
		$("#sjjx").css('display', 'none');
		$("#orderTBSJ").val("");
	}
	$("#tbsjsx").click(function() {
		$("#orderTBSJ").val("asc");
	});
	$("#tbsjjx").click(function() {
		$("#orderTBSJ").val("desc");
	});

	// 点击搜索
	$("#jgshow").css('display', 'none');
	if ($("#hiddenstate").val() != "") {
		$("#jgshow").css('display', 'block');
	}
})