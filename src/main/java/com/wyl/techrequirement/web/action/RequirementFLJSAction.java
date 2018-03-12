package com.wyl.techrequirement.web.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;
import com.wyl.techrequirement.domain.Department;
import com.wyl.techrequirement.domain.Requirement;
import com.wyl.techrequirement.domain.State;
import com.wyl.techrequirement.domain.SubjectCode;
import com.wyl.techrequirement.domain.User;
import com.wyl.techrequirement.query.PageList;
import com.wyl.techrequirement.query.RequirementQuery;
import com.wyl.techrequirement.service.IAreaService;
import com.wyl.techrequirement.service.IDepartmentService;
import com.wyl.techrequirement.service.IPutunderService;
import com.wyl.techrequirement.service.IRequirementService;
import com.wyl.techrequirement.service.IStateService;
import com.wyl.techrequirement.service.IUserService;
import com.wyl.techrequirement.service.SubjectCodeService;

public class RequirementFLJSAction extends CRUDAction<Requirement> {
	private IRequirementService requirementService;// setter
	private IStateService stateService;// setter
	private IUserService userService;// setter
	private IDepartmentService departmentService;// setter
	private IPutunderService putunderService;// setter
	private IAreaService areaService;// setter
	private SubjectCodeService subjectCodeService;// setter
	private PageList pageList;// getter
	private User user;
	private Requirement requirement;
	private RequirementQuery baseQuery = new RequirementQuery();

	private Long reqId;

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

	public void setSubjectCodeService(SubjectCodeService subjectCodeService) {
		this.subjectCodeService = subjectCodeService;
	}

	@Override
	public Requirement getModel() {
		return requirement;
	}

	// 三级下拉单回显学科分类
	List<String> xkflList = new ArrayList<>();

	public List<String> getXkflList() {
		return xkflList;
	}

	public void setXkflList(List<String> xkflList) {
		this.xkflList = xkflList;
	}

	// 三级下拉单回显需求技术应用行业
	List<String> yyhyList = new ArrayList<>();

	public List<String> getYyhyList() {
		return yyhyList;
	}

	public void setYyhyList(List<String> yyhyList) {
		this.yyhyList = yyhyList;
	}

	@Override
	protected void list() throws Exception {
		putContext("allDepts", departmentService.getAll());
		putContext("allStas", stateService.findStateSome());
		putContext("allPuts", putunderService.getAll());
		putContext("allAreas", areaService.getAll());
		baseQuery.setNosta(1L);
		this.pageList = userService.findByQuery(baseQuery);
		if (baseQuery.getReqXKFL() != null) {
			// 三级下拉单回显
			String[] reqXKFL = baseQuery.getReqXKFL().split(",");
			for (String str : reqXKFL) {
				xkflList.add(str.trim());
			}
		}
		if (baseQuery.getReqXQJSYYHY() != null) {
			// 三级下拉单回显需求技术应用行业
			String[] reqYYHY = baseQuery.getReqXQJSYYHY().split(",");
			for (String str : reqYYHY) {
				yyhyList.add(str.trim());
			}
		}
	}

	@Override
	public String input() throws Exception {
		return INPUT;
	}

	private String sftg;

	public String getSftg() {
		return sftg;
	}

	public void setSftg(String sftg) {
		this.sftg = sftg;
	}

	@Override
	@InputConfig(methodName = Action.INPUT)
	public String save() throws Exception {
		System.out.println("是否通过:" + sftg);
		Department department = requirement.getDepartment();
		if (department != null && department.getDeptId() == -1) {
			requirement.setDepartment(null);
		}
		if ("是".equals(sftg)) {
			requirement.setState(new State(4L));
		} else if ("否".equals(sftg)) {
			requirement.setState(new State(3L));
		}
		requirementService.update(requirement);
		return RELOAD;
	}

	@Override
	public String delete() throws Exception {
		return null;
	}

	// 需求技术所属领域复选框回显
	List<String> sslyList = new ArrayList<>();

	public List<String> getSslyList() {
		return sslyList;
	}

	public void setSslyList(List<String> sslyList) {
		this.sslyList = sslyList;
	}

	@Override
	public void prepareInput() throws Exception {
		if (reqId != null) {
			// 回显数据
			requirement = requirementService.get(reqId);
			// 需求技术所属领域复选框回显
			String[] reqSSLY = requirement.getReqXQJSSSLY().split(",");
			for (String str : reqSSLY) {
				sslyList.add(str.trim());
			}
		}
		user = userService.get(getLoginUser().getUserId());// 回显用户数据
	}

	@Override
	public void prepareSave() throws Exception {
		if (reqId != null) {
			requirement = requirementService.get(reqId);
			requirement.setDepartment(null);
		} else {
			requirement = new Requirement();
		}
	}

	private String type;
	private String code;

	private Map<String, Object> request;

	public void setRequest(Map<String, Object> arg0) {

		this.request = arg0;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	public String getForTree() {
		String sql = "";
		System.out.println("........       " + code);
		if (code.equals("on")) {

		} else {
			Integer a = Integer.parseInt(code);
			SubjectCode strXKFL = subjectCodeService.strXKFL(a);
			baseQuery.setReqXKFL(strXKFL.getTitle());
		}
		pageList = requirementService.findByQuery(baseQuery);
		return "searchRight";
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
