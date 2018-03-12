package com.wyl.techrequirement.servicetest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.wyl.techrequirement.domain.Area;
import com.wyl.techrequirement.domain.Department;
import com.wyl.techrequirement.domain.Putunder;
import com.wyl.techrequirement.domain.Requirement;
import com.wyl.techrequirement.domain.State;
import com.wyl.techrequirement.domain.User;
import com.wyl.techrequirement.service.IRequirementService;

public class RequirementServiceTest extends BaseServiceTest{

	@Autowired
	IRequirementService requirementService;
	
	/*
	 * 需求填报测试
	 */
	@Test
	public void save() throws Exception{
		Requirement requirement = new Requirement();
		requirement.setState(new State(1L));
		requirement.setUser(new User(4L));
		requirement.setReqNum("16546961");
		requirement.setPutunder(new Putunder(2L));
		requirement.setArea(new Area(2L));
		requirement.setReqJGMC("石铁大软工系");
		requirement.setReqTXDZ("中国河北省石家庄市");
		requirement.setReqDWWZ("http://www.baidu.com");
		requirement.setReqDZYX("6546@163.com");
		requirement.setReqFRDB("李四");
		requirement.setReqYZBM("050043");
		requirement.setReqGDDH("3216498");
		requirement.setReqYDDH("15230805967");
		requirement.setReqCZ("136546");
		requirement.setReqJGSX("高等院校");
		requirement.setReqJGJJ("985/211高校");
		requirement.setReqJSXQMC("超级高铁技术");
		requirement.setReqQSXQNF(2017);
		requirement.setReqJZXQNF(2020);
		requirement.setReqJSXQGS("很多");
		requirement.setReqJSXQGS1("很多123123");
		requirement.setReqJSXQGS2("世界一流水平");
		requirement.setReqGJZ("超级，高铁");
		requirement.setReqYJLX("基础研究");
		requirement.setReqXKFL("基础医学，药理学，基础药理学");
		requirement.setReqJSXQHZMS("独立研发");
		requirement.setReqJHZTZ("222");
		requirementService.save(requirement);
	}
	/*
	 * 形式审核测试
	 */
	@Test
	public void xsshtg() throws Exception{
		Requirement requirement = requirementService.get(36L);
		requirement.setState(new State(4L));
		requirement.setDepartment(new Department(2L));
		requirementService.update(requirement);
	}
	
	/*
	 * 部门审核测试
	 */
	@Test
	public void bmshtg() throws Exception{
		Requirement requirement = requirementService.get(36L);
		requirement.setState(new State(6L));
		requirementService.update(requirement);
	}
	
	
}
