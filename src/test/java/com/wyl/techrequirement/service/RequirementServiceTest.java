package com.wyl.techrequirement.service;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wyl.techrequirement.domain.Area;
import com.wyl.techrequirement.domain.Department;
import com.wyl.techrequirement.domain.Putunder;
import com.wyl.techrequirement.domain.Requirement;
import com.wyl.techrequirement.domain.State;
import com.wyl.techrequirement.domain.User;
import com.wyl.techrequirement.query.PageList;
import com.wyl.techrequirement.query.RequirementQuery;
import com.wyl.techrequirement.query.UserQuery;
import com.wyl.techrequirement.service.impl.RequirementServiceImpl;

public class RequirementServiceTest extends BaseServiceTest {
	@Autowired
	IRequirementService requirementService;

	@Test
	public void save() throws Exception {
		Requirement requirement = new Requirement();
		requirement.setState(new State(1L));
		requirement.setUser(new User(1L));
		requirement.setReqNum("32133");
		requirement.setPutunder(new Putunder(2L));
		requirement.setArea(new Area(2L));
		requirement.setReqJGMC("石铁大软工帅哥系");
		requirement.setReqTXDZ("中国");
		requirement.setReqDWWZ("http://www.baidu.com");
		requirement.setReqDZYX("3131@qq.com");
		requirement.setReqFRDB("张三");
		requirement.setReqYZBM("050043");
		requirement.setReqLXR("李四");
		requirement.setReqGDDH("13215321");
		requirement.setReqYDDH("15230805944");
		requirement.setReqCZ("13215321");
		requirement.setReqJGSX("高等院校");
		requirement.setReqJGJJ("985/211高校");
		requirement.setReqJSXQMC("超级急速高铁");
		requirement.setReqQSXQNF(2017);
		requirement.setReqJZXQNF(2020);
		requirement.setReqJSXQGS("很多");
		requirement.setReqJSXQGS1("很多");
		requirement.setReqJSXQGS2("世界一流水平");
		requirement.setReqGJZ("超级，急速，高铁");
		requirement.setReqYJLX("基础研究");
		requirement.setReqXKFL("基础医学, 药理学, 基础药理学");
		requirement.setReqJSXQHZMS("独立研发");
		requirement.setReqJHZTZ("222");
		requirementService.save(requirement);
	}
	
	@Test
	public void save1() throws Exception {
		Requirement requirement = requirementService.get(39L);
		requirement.setReqNum("324234234");
		System.out.println(requirement);
		requirementService.save(requirement);
	}

	// 形式审核
	@Test
	public void xsshtg() throws Exception {
		// RequirementQuery baseQuery = new RequirementQuery();
		// baseQuery.setStaId(2L);
		Requirement requirement = requirementService.get(36L);
		requirement.setState(new State(4L));
		requirement.setDepartment(new Department(2L));
		requirementService.update(requirement);
	}

	// 部门审核
	@Test
	public void bmshtg() throws Exception {
		// RequirementQuery baseQuery = new RequirementQuery();
		// baseQuery.setStaId(2L);
		Requirement requirement = requirementService.get(36L);
		requirement.setState(new State(6L));
		requirementService.update(requirement);
	}

	// 综合查询
	@Test
	public void query() {
		RequirementQuery baseQuery = new RequirementQuery();
		// 如果用户传入负数怎样处理
		baseQuery.setPageSize(5);
		// baseQuery.setCurrentPage(-10);
		// 如果用户传入页码超过总的页数
		// baseQuery.setCurrentPage(1);
		// ......
		// 查询条件
		// baseQuery.setUserName("1");
		// baseQuery.setUserJGMC("1");

		PageList pageList = requirementService.findByQuery(baseQuery);

		System.out.println(pageList.getRows());
	}

}
