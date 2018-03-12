$(function() {
	var i = 1;
	$("#add")
			.click(
					function() {
						
						$('#table')
								.append(
										"  <tr id="
												+ i
												+ ">"
												+ " <td><select class='sel1' id='Lianjie"
												+ i
												+ "' type='text'>"
												+ "  <option value='or'>或者</option>"
												+ "  <option value='and'>并且</option>"
												+ "  <option  value='not'>不含</option>"
												+ " </td>"
												+ "  <td><select class='sel2' type='text' id='TJName"
												+ i
												+ "'>"
												+ "<option value='o.reqGJZ'>关键字</option>"
												+ "<option value='o.reqJGSX'>机构属性</option>"
												+ "<option value='o.department.deptName'>管理处室</option>"
												+ "<option value='o.putunder.putName'>归口管理部门</option>"
												+ "<option value='o.state.staName'>审核状态</option>"
												+ "<option value='o.area.areaName'>所在地域</option>"
												+ "<option value='o.reqJSXQHZMS'>技术需求解决方式</option>"
												+ "<option value='o.reqYJLX'>科技活动类型</option>"
												+ "</td>"
												+ "   <td><input style='width: 100%;'  type='search' id='TJ"
												+ i
												+ "'  placeholder=请输入检索内容></td>"
												+ "  <td><select class='sel1' type='text' id='TJzq"
												+ i
												+ "'>"
												+ "  <option value= '='>精确</option>"
												+ "  <option value= 'like'>模糊</option>"
												+ " </td>" + " </tr>");
						++i;
					});
	$('#del').click(function() {
		i--;
		$('#' + i).remove();
		if (i <= 0) {
			i = 1;
		}
	});
	$('#jiansuo')
			.click(
					function() {
						var hql = "from Requirement o where  ";
						var Lianjie = "";
						for (var sy = 0; sy < i; sy++) {
							var tjnr = document.getElementById("TJ" + sy).value
									.trim();// 检索内容
							var tjname = document.getElementById("TJName" + sy).value
									.trim();// 检索类型
							var TJzq = document.getElementById("TJzq" + sy).value
									.trim();// 是否模糊
							if (sy != 0) {
								Lianjie = document.getElementById("Lianjie"
										+ sy).value;
							}

							if (tjnr != "") {
								if (Lianjie != "") {
									if (TJzq == "like" && Lianjie == "not") {
										hql = hql + " and " + tjname
												+ "   not  like  '%" + tjnr
												+ "%'  ";
									} else if (TJzq == "=" && Lianjie == "not") {
										hql = hql + " and  " + tjname
												+ "  !=  '" + tjnr + "' ";
									} else {
										if (TJzq == "=") {
											hql = hql + " " + Lianjie + "  "
													+ tjname + " = '" + tjnr
													+ "' ";
										} else {
											hql = hql + " " + Lianjie + "  "
													+ tjname + " like  '%"
													+ tjnr + "%' ";
										}
									}
								} else// 解决第一次循环
								{
									if (TJzq == "like") {
										hql = hql + " " + tjname + " like  '%"
												+ tjnr + "%'  ";
									} else {
										hql = hql + " " + tjname + " = '"
												+ tjnr + "' ";
									}
								}
							}
						}
						// alert(hql);
						var tbody = "";
						$
								.ajax({
									type : "get",
									url : "requirementZHJS_jiansuo.action",
									data : {
										"chaxun" : hql,
									},
									async : false,
									dataType : "json",
									success : function(data) {
										var totleCount = data.length;
										var pageSize = totleCount > 7 ? 7
												: totleCount;
										$("#totalCount").html(totleCount);
										$("#totalCount1").html(totleCount);
										var pageCount = totleCount % 8 == 0 ? totleCount / 8
												: totleCount / 8 + 1;
										var yeshu = "";
										for (var p = 1; p <= pageCount; p++) {
											yeshu += p + " ";
										}
										$("#yeshu").html(yeshu);
										var tbody = "";
										var num = "";
										for (var i = 0; i < pageSize; i++) {
											num++;
											if (i % 2 == 0) {
												tbody += "<tr style='background-color: LightSlateBlue'><td style='text-align:center;'>"
														+ num
														+ "</td><td>"
														+ data[i].reqNum
														+ "</td><td><div class='longtext' title='"
														+ data[i].reqJSXQMC
														+ "'>"
														+ data[i].reqJSXQMC
														+ "</td><td>"
														+ data[i].reqQSXQNF
														+ "-"
														+ data[i].reqJZXQNF
														+ "</td><td><div class='longtext1' title='"
														+ (data[i].putunder.putName == undefined ? " "
																: data[i].putunder.putName)
														+ "'>"
														+ (data[i].putunder.putName == undefined ? " "
																: data[i].putunder.putName)
														+ "</div></td><td><div class='longtext2' title='"
														+ (data[i].area.areaName == undefined ? " "
																: data[i].area.areaName)
														+ "'>"
														+ (data[i].area.areaName == undefined ? " "
																: data[i].area.areaName)
														+ "</div></td><td>"
														+ data[i].reqJGSX
														+ "</td><td>"
														+ (data[i].state.staName == undefined ? " "
																: data[i].state.staName)
														+ "</td><td style='text-align:center;'><button type='button' class='btn1' onclick='updateDomain('requirementTJCX_input.action?reqId="
														+ data[i].reqId
														+ "');'>查看</button></td></tr>"
											} else {
												tbody += "<tr style='background-color: white'><td style='text-align:center;'>"
														+ num
														+ "</td><td>"
														+ data[i].reqNum
														+ "</td><td><div class='longtext' title='"
														+ data[i].reqJSXQMC
														+ "'>"
														+ data[i].reqJSXQMC
														+ "</div></td><td>"
														+ data[i].reqQSXQNF
														+ "-"
														+ data[i].reqJZXQNF
														+ "</td><td><div class='longtext1' title='"
														+ (data[i].putunder.putName == undefined ? " "
																: data[i].putunder.putName)
														+ "'>"
														+ (data[i].putunder.putName == undefined ? " "
																: data[i].putunder.putName)
														+ "</div></td><td><div class='longtext2' title='"
														+ (data[i].area.areaName == undefined ? " "
																: data[i].area.areaName)
														+ "'>"
														+ (data[i].area.areaName == undefined ? " "
																: data[i].area.areaName)
														+ "</div></td><td>"
														+ data[i].reqJGSX
														+ "</td><td>"
														+ (data[i].state.staName == undefined ? " "
																: data[i].state.staName)
														+ "</td><td style='text-align:center;'><a href='requirementTJCX_input.action?reqId="
														+ data[i].reqId
														+ "' ><button class='btn1'>查看</button></a></td></tr>"
											}

										}
										$("#reqlist").empty();
										$("#reqlist").append(tbody);
										$("html,body").animate({
											scrollTop : $("#mao").offset().top
										}, 0);
										// var zhjsfl = "";
										// zhjsfl = "第 <span style='color:red'>"
										// + 1
										// + "</span> 到 <span
										// style='color:red'>"
										// + 8
										// + "</span> 条/总共 <span
										// style='color:red'>"
										// + totleCount
										// + "</span>条记录 <br />";
										// $("#zhjsfl").HTML(zhjsfl);
									}
								});
					});
});
