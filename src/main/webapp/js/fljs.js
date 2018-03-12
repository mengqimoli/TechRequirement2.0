$(function() {
	$("#reqGJZ").css('display', 'none');
	$("#reqJGSX").css('display', 'none');
	$("#deptId").css('display', 'none');
	$("#putId").css('display', 'none');
	$("#areaId").css('display', 'none');
	$("#staId").css('display', 'none');
	$("#reqJSXQHZMS").css('display', 'none');
	$("#reqYJLX").css('display', 'none');
	$("#tablexkfl").css('display', 'none');
	$("#tablejsxqyyhy").css('display', 'none');
	if ($("#selfljs option:selected").val() == 1) {
		$("#reqGJZ").css('display', 'block');
	} else if ($("#selfljs option:selected").val() == 2) {
		$("#reqJGSX").css('display', 'block');
	} else if ($("#selfljs option:selected").val() == 3) {
		$("#deptId").css('display', 'block');
	} else if ($("#selfljs option:selected").val() == 4) {
		$("#putId").css('display', 'block');
	} else if ($("#selfljs option:selected").val() == 5) {
		$("#staId").css('display', 'block');
	} else if ($("#selfljs option:selected").val() == 6) {
		$("#areaId").css('display', 'block');
	} else if ($("#selfljs option:selected").val() == 7) {
		$("#reqJSXQHZMS").css('display', 'block');
	} else if ($("#selfljs option:selected").val() == 8) {
		$("#reqYJLX").css('display', 'block');
	} else if ($("#selfljs option:selected").val() == 9) {
		$("#tablexkfl").css('display', 'block');
	} else if ($("#selfljs option:selected").val() == 10) {
		$("#tablejsxqyyhy").css('display', 'block');
	}else{
		
	}
	$("#selfljs").change(function() {
		$("#reqGJZ").val("");
		$("#reqJGSX").val("");
		$("#deptId").val(-1);
		$("#putId").val(-1);
		$("#areaId").val(-1);
		$("#staId").val(-1);
		$("#reqJSXQHZMS").val("");
		$("#reqYJLX").val("");
		$("#reqXKFL1").val("");
		$("#reqXKFL2").val("");
		$("#reqXKFL3").val("");
		$("#reqXQJSYYHY1").val("");
		$("#reqXQJSYYHY2").val("");
		$("#reqXQJSYYHY3").val("");
		if ($("#selfljs option:selected").val() == 1) {
			$("#reqGJZ").css('display', 'block');
			$("#reqJGSX").css('display', 'none');
			$("#deptId").css('display', 'none');
			$("#putId").css('display', 'none');
			$("#areaId").css('display', 'none');
			$("#staId").css('display', 'none');
			$("#reqJSXQHZMS").css('display', 'none');
			$("#reqYJLX").css('display', 'none');
			$("#tablexkfl").css('display', 'none');
			$("#tablejsxqyyhy").css('display', 'none');
		}
		if ($("#selfljs option:selected").val() == 2) {
			$("#reqGJZ").css('display', 'none');
			$("#reqJGSX").css('display', 'block');
			$("#deptId").css('display', 'none');
			$("#putId").css('display', 'none');
			$("#areaId").css('display', 'none');
			$("#staId").css('display', 'none');
			$("#reqJSXQHZMS").css('display', 'none');
			$("#reqYJLX").css('display', 'none');
			$("#tablexkfl").css('display', 'none');
			$("#tablejsxqyyhy").css('display', 'none');
		}
		if ($("#selfljs option:selected").val() == 3) {
			$("#reqGJZ").css('display', 'none');
			$("#reqJGSX").css('display', 'none');
			$("#deptId").css('display', 'block');
			$("#putId").css('display', 'none');
			$("#areaId").css('display', 'none');
			$("#staId").css('display', 'none');
			$("#reqJSXQHZMS").css('display', 'none');
			$("#reqYJLX").css('display', 'none');
			$("#tablexkfl").css('display', 'none');
			$("#tablejsxqyyhy").css('display', 'none');
		}
		if ($("#selfljs option:selected").val() == 4) {
			$("#reqGJZ").css('display', 'none');
			$("#reqJGSX").css('display', 'none');
			$("#deptId").css('display', 'none');
			$("#putId").css('display', 'block');
			$("#areaId").css('display', 'none');
			$("#staId").css('display', 'none');
			$("#reqJSXQHZMS").css('display', 'none');
			$("#reqYJLX").css('display', 'none');
			$("#tablexkfl").css('display', 'none');
			$("#tablejsxqyyhy").css('display', 'none');
		}
		if ($("#selfljs option:selected").val() == 5) {
			$("#reqGJZ").css('display', 'none');
			$("#reqJGSX").css('display', 'none');
			$("#deptId").css('display', 'none');
			$("#putId").css('display', 'none');
			$("#areaId").css('display', 'none');
			$("#staId").css('display', 'block');
			$("#reqJSXQHZMS").css('display', 'none');
			$("#reqYJLX").css('display', 'none');
			$("#tablexkfl").css('display', 'none');
			$("#tablejsxqyyhy").css('display', 'none');
		}
		if ($("#selfljs option:selected").val() == 6) {
			$("#reqGJZ").css('display', 'none');
			$("#reqJGSX").css('display', 'none');
			$("#deptId").css('display', 'none');
			$("#putId").css('display', 'none');
			$("#areaId").css('display', 'block');
			$("#staId").css('display', 'none');
			$("#reqJSXQHZMS").css('display', 'none');
			$("#reqYJLX").css('display', 'none');
			$("#tablexkfl").css('display', 'none');
			$("#tablejsxqyyhy").css('display', 'none');
		}
		if ($("#selfljs option:selected").val() == 7) {
			$("#reqGJZ").css('display', 'none');
			$("#reqJGSX").css('display', 'none');
			$("#deptId").css('display', 'none');
			$("#putId").css('display', 'none');
			$("#areaId").css('display', 'none');
			$("#staId").css('display', 'none');
			$("#reqJSXQHZMS").css('display', 'block');
			$("#reqYJLX").css('display', 'none');
			$("#tablexkfl").css('display', 'none');
			$("#tablejsxqyyhy").css('display', 'none');
		}
		if ($("#selfljs option:selected").val() == 8) {
			$("#reqGJZ").css('display', 'none');
			$("#reqJGSX").css('display', 'none');
			$("#deptId").css('display', 'none');
			$("#putId").css('display', 'none');
			$("#areaId").css('display', 'none');
			$("#staId").css('display', 'none');
			$("#reqJSXQHZMS").css('display', 'none');
			$("#reqYJLX").css('display', 'block');
			$("#tablexkfl").css('display', 'none');
			$("#tablejsxqyyhy").css('display', 'none');
		}
		if ($("#selfljs option:selected").val() == 9) {
			$("#reqGJZ").css('display', 'none');
			$("#reqJGSX").css('display', 'none');
			$("#deptId").css('display', 'none');
			$("#putId").css('display', 'none');
			$("#areaId").css('display', 'none');
			$("#staId").css('display', 'none');
			$("#reqJSXQHZMS").css('display', 'none');
			$("#reqYJLX").css('display', 'none');
			$("#tablexkfl").css('display', 'block');
			$("#tablejsxqyyhy").css('display', 'none');
		}
		if ($("#selfljs option:selected").val() == 10) {
			$("#reqGJZ").css('display', 'none');
			$("#reqJGSX").css('display', 'none');
			$("#deptId").css('display', 'none');
			$("#putId").css('display', 'none');
			$("#areaId").css('display', 'none');
			$("#staId").css('display', 'none');
			$("#reqJSXQHZMS").css('display', 'none');
			$("#reqYJLX").css('display', 'none');
			$("#tablexkfl").css('display', 'none');
			$("#tablejsxqyyhy").css('display', 'block');
		}
		
	})
})