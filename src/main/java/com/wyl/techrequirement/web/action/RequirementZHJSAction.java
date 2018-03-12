package com.wyl.techrequirement.web.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.wyl.techrequirement.domain.Requirement;
import com.wyl.techrequirement.domain.User;
import com.wyl.techrequirement.query.PageList;
import com.wyl.techrequirement.query.RequirementQuery;
import com.wyl.techrequirement.service.IAreaService;
import com.wyl.techrequirement.service.IDepartmentService;
import com.wyl.techrequirement.service.IPutunderService;
import com.wyl.techrequirement.service.IRequirementService;
import com.wyl.techrequirement.service.IStateService;
import com.wyl.techrequirement.service.IUserService;

public class RequirementZHJSAction extends BaseAction {
	private IRequirementService requirementService;// setter
	private IStateService stateService;// setter
	private IUserService userService;// setter
	private IDepartmentService departmentService;// setter
	private IPutunderService putunderService;// setter
	private IAreaService areaService;// setter
	private PageList pageList;// getter
	private User user;
	private Requirement requirement;
	private RequirementQuery baseQuery = new RequirementQuery();

	private Long reqId;

	private String chaxun;

	public String getChaxun() {
		return chaxun;
	}

	public void setChaxun(String chaxun) {
		this.chaxun = chaxun;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String jiansuo() throws Exception {
		System.out.println("chaxun............." + chaxun);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		List<Requirement> findByjiansuo = requirementService.findByjiansuo(chaxun);
		System.out.println(findByjiansuo.size());
		for (Requirement requirement : findByjiansuo) {
			System.out.println(requirement);
		}
		System.out.println(".........1");
		String json = JSON.toJSONString(findByjiansuo);
		System.out.println(".........2");
		out.print(json);
		System.out.println(".........3");
		return NONE;
	}

	public void setRequirementService(IRequirementService requirementService) {
		this.requirementService = requirementService;
	}

	public void setStateService(IStateService stateService) {
		this.stateService = stateService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public void setDepartmentService(IDepartmentService departmentService) {
		this.departmentService = departmentService;
	}

	public void setPutunderService(IPutunderService putunderService) {
		this.putunderService = putunderService;
	}

	public void setAreaService(IAreaService areaService) {
		this.areaService = areaService;
	}

	public PageList getPageList() {
		return pageList;
	}

	public void setPageList(PageList pageList) {
		this.pageList = pageList;
	}

	public RequirementQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(RequirementQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public Long getReqId() {
		return reqId;
	}

	public void setReqId(Long reqId) {
		this.reqId = reqId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
